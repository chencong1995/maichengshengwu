package qt.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import qt.form.IndexForm;
import qt.pojo.Customer;
import qt.pojo.Page;
import qt.service.HtCustomerService;
import util.BaseController;

/**
 * 企业客户
 * */
@Controller
@RequestMapping("/ht/customer")
@Transactional
public class HtCustomerController {

	private static Logger log = Logger.getLogger(HtCompanyController.class
			.getName());
	@Autowired
	private HtCustomerService htCustomerService;

	/**
	 * 企业客户-企业客户-列表
	 * */
	@RequestMapping("/friend/list.do")
	public String friendList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("customer");
		form.setMenu2("friend");
		model.addAttribute("data", form);
		// List<Customer> list=htCustomerService.selectAll();
		// model.addAttribute("lists", list);
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Customer> customer = new ArrayList<Customer>();
		int totalCount = (int) htCustomerService.getCustomerCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			customer = htCustomerService.selectCustomerByPage(
					page.getStartPos(), page.getPageSize());
		} else {
			page = new Page(totalCount, 1);
			customer = htCustomerService.selectCustomerByPage(
					page.getStartPos(), page.getPageSize());
		}
		model.addAttribute("lists", customer);
		model.addAttribute("page", page);
		return "ht/customer/friend/list";
	}

	/**
	 * 企业客户-企业客户-新增前置
	 * */
	@RequestMapping("/friend/addbefore.do")
	public String addBefore(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("customer");
		form.setMenu2("friend");
		model.addAttribute("data", form);
		return "ht/customer/friend/add";
	}

	/**
	 * 查询公司是否存在
	 */
	@ResponseBody
	@RequestMapping("/friend/nameCheck.do")
	public boolean nameCheck(String imagename, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		boolean flag = true;
		form.setMenu1("customer");
		form.setMenu2("friend");
		model.addAttribute("data", form);
		Customer customer = htCustomerService.selectByName(imagename);
		if (customer == null) {
			return flag;
		}
		flag = false;
		System.out.println(flag);
		return flag;
	}

	/**
	 * 企业客户-企业客户-新增导航
	 * */
	@RequestMapping("/friend/add.do")
	public String friendAdd(
			@RequestParam("friendsFile") MultipartFile friendsFile,
			String imagename, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("customer");
		form.setMenu2("friend");
		model.addAttribute("data", form);
		if (!friendsFile.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ friendsFile.getOriginalFilename().substring(
								friendsFile.getOriginalFilename().lastIndexOf(
										"."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;

				// 转存文件
				friendsFile.transferTo(new File(filePath));
				Customer customer = new Customer();
				customer.setImagename(imagename);
				customer.setImageurl(filePathUrl);
				htCustomerService.insertCustomer(customer);
				return this.friendList(form, model, request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return "ht/customer/friend/add";
	}

	/**
	 * 查询公司是否存在
	 */
	@RequestMapping("/friend/selectById.do")
	public String select(int id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("customer");
		form.setMenu2("friend");
		model.addAttribute("data", form);
		Customer customer = htCustomerService.selectById(id);
		model.addAttribute("Cus", customer);
		return "ht/customer/friend/edit";
	}

	/**
	 * 查询公司是否存在
	 */
	@RequestMapping("/friend/deletetById.do")
	public String delete(int id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("customer");
		form.setMenu2("friend");
		model.addAttribute("data", form);
		htCustomerService.deleteById(id);
		return this.friendList(form, model, request, response);
	}

	/**
	 * 更新方法
	 */
	@RequestMapping("/friend/update.do")
	public String update(
			@RequestParam("friendsFile") MultipartFile friendsFile,
			Customer customer, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("customer");
		form.setMenu2("friend");
		model.addAttribute("data", form);
		if (!friendsFile.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ friendsFile.getOriginalFilename().substring(
								friendsFile.getOriginalFilename().lastIndexOf(
										"."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;

				// 转存文件
				friendsFile.transferTo(new File(filePath));
				customer.setImageurl(filePathUrl);
				htCustomerService.updateCus(customer);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.friendList(form, model, request, response);
	}

	/**
	 * 修改状态
	 */
	@ResponseBody
	@RequestMapping("/friends/updateStatus.do")
	public boolean update(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response, int id,
			int status, HttpSession session) throws Exception {
		boolean flag = true;
		System.out.println("进入方法" + status);
		if (status == 1) {
			status = 0;
		} else {
			status = 1;
		}
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + status);
		htCustomerService.updateStatusById(id, status);
		log.info("编号:[" + id + "]修改状态成功");
		return flag;
	}

}
