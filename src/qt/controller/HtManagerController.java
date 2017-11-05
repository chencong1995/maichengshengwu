package qt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import qt.form.IndexForm;
import qt.pojo.User;
import qt.service.ManagerService;
import util.BaseController;
import util.Constants;
import util.Md5Util;

/**
 * 系统管理
 */
@Controller
@RequestMapping("/ht/manager")
@Transactional
public class HtManagerController extends BaseController{
	@Autowired
	private ManagerService managerService;

	private static Logger log = Logger.getLogger(HtManagerController.class
			.getName());

	Md5Util md5 = new Md5Util();

	/**
	 * 系统管理-管理员列表查询
	 */
	@RequestMapping("/administrators/list.do")
	public String list(IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		form.setMenu1("manager");
		form.setMenu2("administrators");
		model.addAttribute("data", form);
		// 判断session
		HttpSession session = request.getSession();
		// 从session中取出用户份信息
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		List<User> lists = managerService.selectAll();
		model.addAttribute("user", lists);
		return "ht/manager/administrators/list";
	}

	/**
	 * 添加前置
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/administrators/addBefore.do")
	public String index(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response) {
		form.setMenu1("manager");
		form.setMenu2("administrators");
		model.addAttribute("data", form);
		return "ht/manager/administrators/addManager";
	}

	/**
	 * 添加管理员
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @param user
	 * @return
	 */
	@RequestMapping("/administrators/add.do")
	public String add(IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response, User user) {
		HttpSession session = request.getSession();
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		user.setU_createUid(userInfo.getU_id());
		User user2 = managerService.selectByName(user.getU_name());
		try {
			user.setU_pwd(md5.EncoderByMd5(user.getU_pwd()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		managerService.insertManager(user);
		log.info("管理员添加成功");
		return this.list(form, model, request, response);
	}

	/**
	 * 判断管理员是否存在
	 * 
	 * @param form
	 * @param model
	 * @param request
	 * @param response
	 * @param uname
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/administrators/checkname.do")
	public boolean checkname(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response,
			String uname) {
		boolean flag = true;
		HttpSession session = request.getSession();
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		User user2 = managerService.selectByName(uname);
		if (user2 == null) {
			return flag;
		}
		flag = false;
		return flag;
	}

	/**
	 * 删除方法
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @param uid
	 * @return
	 */
	@RequestMapping("/administrators/delete.do")
	public String deleted(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response, int uid,
			HttpSession session) {
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		managerService.deleteById(uid);
		log.info("编号:[" + userInfo.getU_id() + "删除编号：[" + uid + "]删除成功");
		return this.list(form, model, request, response);
	}

	/**
	 * 查询
	 * 
	 * @param form
	 * @param model
	 * @param request
	 * @param response
	 * @param uid
	 * @param session
	 * @return
	 */
	@RequestMapping("/administrators/search.do")
	public String edit(IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response, int uid, HttpSession session) {
		User user = managerService.selectById(uid);
		model.addAttribute("user", user);
		log.info("编号:[" + uid + "]查询成功");
		return "ht/manager/administrators/detail";
	}

	/**
	 * 修改密码
	 * 
	 * @param form
	 * @param model
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/administrators/update.do")
	public String updatePwd(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		form.setNew_pwd(md5.EncoderByMd5(form.getNew_pwd()));
		form.setId(userInfo.getU_id());
		managerService.updateById(form);
		log.info("编号:[" + form.getU_id() + "]修改密码成功");
		return this.list(form, model, request, response);
	}

	/**
	 * 修改状态
	 * 
	 * @param form
	 * @param model
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/administrators/updateStatus.do")
	public String updateStatus(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response, int id,
			int status, HttpSession session) throws Exception {
		boolean flag = true;
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		if (status == 1) {
			status = 0;
		} else {
			status = 1;
		}
		form.setU_status(status);
		form.setU_id(id);
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+status);
		managerService.updateStatusById(form);
		log.info("编号:[" + form.getU_id() + "]修改状态成功");
		return this.list(form, model, request, response);
	}
	
	
	/**
	 * 修改状态
	 * @param form
	 * @param model
	 * @param request
	 * @param response
	 * @param id
	 * @param status
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/administrators/updates.do")
	public boolean update(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response, int id,
			int status, HttpSession session) throws Exception {
		boolean flag=true;
		System.out.println("进入方法"+status);
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		if (status == 1) {
			status = 0;
		} else {
			status = 1;
		}
		form.setU_status(status);
		form.setU_id(id);
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+status);
		managerService.updateStatusById(form);
		log.info("编号:[" + form.getU_id() + "]修改状态成功");
		return flag;
	}
}
