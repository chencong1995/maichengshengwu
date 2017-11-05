package qt.controller;

import java.io.File;
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
import qt.pojo.IndexEntity;
import qt.pojo.User;
import qt.service.HtIndexService;
import util.BaseController;
import util.Constants;

/**
 * 首页
 */
@Controller
@RequestMapping("/ht/index")
@Transactional
public class HtIndexController {

	private static Logger log = Logger.getLogger(HtIndexController.class
			.getName());
	@Autowired
	private HtIndexService htIndexservice;

	/**
	 * 首页-LOGO-列表
	 */
	@RequestMapping("/logo/list.do")
	public String logoList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<IndexEntity> logoList = htIndexservice.sel_index_bytype(1);
		form.setDataList(logoList);
		form.setMenu1("index");
		form.setMenu2("logo");
		model.addAttribute("data", form);
		if (logoList.size() == 2) {
			model.addAttribute("favicon_data", logoList.get(0));
			model.addAttribute("logo_data", logoList.get(1));
		}
		return "ht/index/logo/list";
	}

	/**
	 * 首页-LOGO-新增FAVICON
	 */
	@RequestMapping("/logo/addfavicon.do")
	public String faviconAdd(HttpSession session, @RequestParam("favicon_file")
	MultipartFile favicon_file, String favicon_msg, IndexForm form,
			Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		// 判断文件是否为空
		if (!favicon_file.isEmpty() && !favicon_msg.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ favicon_file.getOriginalFilename().substring(
								favicon_file.getOriginalFilename().lastIndexOf(
										"."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;

				// 转存文件
				favicon_file.transferTo(new File(filePath));
				htIndexservice.edit_favicon_image(favicon_msg, filePathUrl);
				log.info("用户[" + userInfo.getU_id() + "]修改favicon图标"+filePathUrl);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			htIndexservice.edit_favicon_image(favicon_msg, "");
			log.info("用户[" + userInfo.getU_id() + "]修改选项卡文字");
		}

		return this.logoList(form, model, request, response);
	}

	/**
	 * 首页-LOGO-新增LOGO
	 */
	@RequestMapping("/logo/add.do")
	public String logoAdd(HttpSession session, @RequestParam("logoFile")
	MultipartFile logoFile, String redirectUrl, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		// 判断文件是否为空
		if (!logoFile.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ logoFile.getOriginalFilename()
								.substring(
										logoFile.getOriginalFilename()
												.lastIndexOf("."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				logoFile.transferTo(new File(filePath));
				htIndexservice.edit_logo_image(redirectUrl, filePathUrl);
				log.info("用户[" + userInfo.getU_id() + "]修改LOGO图片");
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			if (!redirectUrl.isEmpty()) {
				htIndexservice.edit_logo_image(redirectUrl, "");
				log.info("用户[" + userInfo.getU_id() + "]修改选项卡文字");
			}
		}
		return this.logoList(form, model, request, response);
	}

	/**
	 * 首页-轮播图管理-列表
	 */
	@RequestMapping("/banner/list.do")
	public String bannerList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<IndexEntity> list = htIndexservice.sel_index_bytype(2);
		form.setDataList(list);
		form.setMenu1("index");
		form.setMenu2("banner");
		model.addAttribute("data", form);

		if (list.size() == 3) {
			model.addAttribute("banner_data", list.get(0));
			model.addAttribute("banner_data2", list.get(1));
			model.addAttribute("banner_data3", list.get(2));
		}

		return "ht/index/banner/list";
	}

	/**
	 * 首页-轮播图管理-新增轮播图
	 */
	@RequestMapping("/banner/add.do")
	public String banagerAdd(HttpSession session, @RequestParam("banaerFile")
	MultipartFile banaerFile, int id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		if (!banaerFile.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ banaerFile.getOriginalFilename().substring(
								banaerFile.getOriginalFilename().lastIndexOf(
										"."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				banaerFile.transferTo(new File(filePath));
				htIndexservice.edit_banaer_image(filePathUrl, id);
				log.info("用户[" + userInfo.getU_id() + "]修改轮播图");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.bannerList(form, model, request, response);
	}

	/**
	 * 首页-我们的服务-列表
	 */
	@RequestMapping("/service/list.do")
	public String serviceList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<IndexEntity> list = htIndexservice.sel_index_bytype(3);
		form.setDataList(list);
		form.setMenu1("index");
		form.setMenu2("service");
		model.addAttribute("data", form);
		if (list.size() == 5) {
			model.addAttribute("service_data", list.get(0));
			model.addAttribute("service_data2", list.get(1));
			model.addAttribute("service_data3", list.get(2));
			model.addAttribute("service_data4", list.get(3));
			model.addAttribute("service_data5", list.get(4));
		}
		return "ht/index/service/list";
	}

	/**
	 * 首页-我们的服务-新增导航
	 */
	@RequestMapping("/service/add.do")
	public String serviceAdd(HttpSession session, @RequestParam("serviceFile")
	MultipartFile serviceFile, String title, String context, int id,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		IndexEntity indexEntity = new IndexEntity();
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		form.setMenu1("index");
		form.setMenu2("service");
		// 判断文件是否为空
		if (!serviceFile.isEmpty() && !title.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ serviceFile.getOriginalFilename().substring(
								serviceFile.getOriginalFilename().lastIndexOf(
										"."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				serviceFile.transferTo(new File(filePath));
				indexEntity.setContext(context);
				indexEntity.setTitle(title);
				indexEntity.setImageurl(filePathUrl);
				indexEntity.setId(id);
				htIndexservice.edit_service(indexEntity);
				log.info("用户[" + userInfo.getU_id() + "]修改首页我们的服务图");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (!title.isEmpty()) {
			indexEntity.setContext(context);
			indexEntity.setTitle(title);
			indexEntity.setId(id);
			htIndexservice.edit_service(indexEntity);
			log.info("用户[" + userInfo.getU_id() + "]修改首页我们的服务文本");
		}
		return this.serviceList(form, model, request, response);
	}

	/**
	 * 首页-我们的服务-新增右侧图片
	 */
	@RequestMapping("/service/addright.do")
	public String serviceAddRight(@RequestParam("serviceFile")
	MultipartFile serviceFile, int id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("index");
		form.setMenu2("service");
		// 判断文件是否为空
		if (!serviceFile.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ serviceFile.getOriginalFilename().substring(
								serviceFile.getOriginalFilename().lastIndexOf(
										"."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				serviceFile.transferTo(new File(filePath));
				htIndexservice.edit_banaer_image(filePathUrl, id);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.serviceList(form, model, request, response);
	}

	/**
	 * 首页-我们的服务-新增下
	 */
	@RequestMapping("/service/adddown.do")
	public String serviceAddown(String title, String context, int id,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("index");
		form.setMenu2("service");
		htIndexservice.edit_advantage(title, context, id);
		return this.serviceList(form, model, request, response);
	}

	/**
	 * 首页-我们的优势-列表
	 */
	@RequestMapping("/advantage/list.do")
	public String advantageList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("index");
		form.setMenu2("advantage");
		List<IndexEntity> list = htIndexservice.sel_index_bytype(4);
		form.setDataList(list);
		model.addAttribute("data", form);
		if (list.size() == 6) {
			model.addAttribute("advantage_data1", list.get(0));
			model.addAttribute("advantage_data2", list.get(1));
			model.addAttribute("advantage_data3", list.get(2));
			model.addAttribute("advantage_data4", list.get(3));
			model.addAttribute("advantage_data5", list.get(4));
			model.addAttribute("advantage_data6", list.get(5));
		}
		return "ht/index/advantage/list";
	}

	/**
	 * 首页-我们的优势-新增导航
	 */
	@RequestMapping("/advantage/addleft.do")
	public String advantageAddleft(@RequestParam("advantageFile")
	MultipartFile advantageFile, int id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("index");
		form.setMenu2("advantage");
		model.addAttribute("data", form);
		// 判断文件是否为空
		if (!advantageFile.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ advantageFile.getOriginalFilename().substring(
								advantageFile.getOriginalFilename()
										.lastIndexOf("."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				advantageFile.transferTo(new File(filePath));
				htIndexservice.edit_banaer_image(filePathUrl, id);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.advantageList(form, model, request, response);
	}

	/**
	 * 首页-我们的优势-文章
	 */
	@RequestMapping("/advantage/add.do")
	public String advantageAddRight(String title, String context, int id,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("index");
		form.setMenu2("advantage");
		model.addAttribute("data", form);
		htIndexservice.edit_advantage(title, context, id);
		return this.advantageList(form, model, request, response);
	}

	/**
	 * 首页-我们的业务-列表
	 */
	@RequestMapping("/business/list.do")
	public String businessList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<IndexEntity> logoList = htIndexservice.sel_index_bytype(5);
		form.setDataList(logoList);
		form.setMenu1("index");
		form.setMenu2("business");
		model.addAttribute("data", form);
		return "ht/index/business/list";
	}

	/**
	 * 首页-我们的业务-新增导航
	 */
	@RequestMapping("/business/addpage.do")
	public String businessAddpage(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("index");
		form.setMenu2("business");
		model.addAttribute("data", form);
		return "ht/index/business/add";
	}

	/**
	 * 首页-我们的业务-新增
	 */
	@RequestMapping("/business/add.do")
	public String businessAdd(IndexForm form, @RequestParam("businessImage")
	MultipartFile file, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 判断文件是否为空
		if (!file.isEmpty()) {
			String filePathUrl = "upload/"
					+ UUID.randomUUID()
					+ file.getOriginalFilename().substring(
							file.getOriginalFilename().lastIndexOf("."));
			// 文件保存路径
			String filePath = request.getSession().getServletContext()
					.getRealPath("/")
					+ filePathUrl;
			// 转存文件
			file.transferTo(new File(filePath));
			IndexEntity indexEntity = new IndexEntity();
			indexEntity.setImageurl(filePathUrl);
			indexEntity.setTitle(form.getBusiness_title());
			indexEntity.setContext(form.getBusiness_context());
			indexEntity.setType(5);// 5表示我们的业务栏
			htIndexservice.add_index(indexEntity);
		}
		return this.businessList(form, model, request, response);
	}

	/**
	 * 首页-我们的业务-编辑导航
	 */
	@RequestMapping("/business/editpage.do")
	public String businessEditpage(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		IndexEntity indEnt = htIndexservice.sel_index_byId(form.getId());
		model.addAttribute("indEnt", indEnt);
		form.setMenu1("index");
		form.setMenu2("business");
		model.addAttribute("data", form);
		return "ht/index/business/edit";
	}

	/**
	 * 首页-我们的业务-修改
	 */
	@RequestMapping("/business/edit.do")
	public String businessEdit(IndexForm form, @RequestParam("businessImage")
	MultipartFile file, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		IndexEntity indexEntity = new IndexEntity();
		// 判断文件是否为空
		if (!file.isEmpty()) {
			String filePathUrl = "upload/"
					+ UUID.randomUUID()
					+ file.getOriginalFilename().substring(
							file.getOriginalFilename().lastIndexOf("."));
			// 文件保存路径
			String filePath = request.getSession().getServletContext()
					.getRealPath("/")
					+ filePathUrl;
			// 转存文件
			file.transferTo(new File(filePath));
			indexEntity.setContext(form.getBusiness_context());
			indexEntity.setTitle(form.getBusiness_title());
			indexEntity.setImageurl(filePathUrl);
			indexEntity.setId(form.getId());
			htIndexservice.edit_service(indexEntity);
		} else {
			indexEntity.setContext(form.getBusiness_context());
			indexEntity.setTitle(form.getBusiness_title());
			indexEntity.setId(form.getId());
			htIndexservice.edit_service(indexEntity);
		}
		return this.businessList(form, model, request, response);
	}

	/**
	 * 首页-我们的业务-删除
	 */
	@RequestMapping("/business/del.do")
	@ResponseBody
	public int businessDel(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int num = htIndexservice.del_index(form.getId());
		return num;
	}
}
