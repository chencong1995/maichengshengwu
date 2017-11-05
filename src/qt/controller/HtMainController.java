package qt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import qt.pojo.User;
import qt.service.HtMainService;
import util.BaseController;
import util.Constants;
import util.Md5Util;
import util.PropertiesUtil;

@Controller
@RequestMapping("/ht")
@Transactional
public class HtMainController extends BaseController{

	private static Logger log = Logger.getLogger(HtMainController.class
			.getName());
	@Autowired
	private HtMainService htmainservice;

	private static String userorpwdError = PropertiesUtil.getBundle()
			.getString("user.or.pwd.error");
	private static String userDisable = PropertiesUtil.getBundle().getString(
			"user.disable");

	/**
	 * 登陆页导航
	 * */
	@RequestMapping("/index.do")
	public String index(Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		model.addAttribute("error_msg", "");
		return "ht/login";
	}

	/**
	 * 用户密码验证
	 * */
	@RequestMapping("/login.do")
	public String loginVerification(User user, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {
		if (user.getU_name() == null || user.getU_name() == ""
				|| user.getU_pwd() == null || user.getU_pwd() == "") {
			model.addAttribute("error_msg", userorpwdError);
			return "ht/login";
		}
		user.setU_pwd(Md5Util.EncoderByMd5(user.getU_pwd()));
		user = htmainservice.yz_user(user);
		if (user == null) {
			model.addAttribute("error_msg", userorpwdError);
			return "ht/login";
		}
		if (user != null && user.getU_status() == 0) {
			model.addAttribute("error_msg", userDisable);
			return "ht/login";
		}
		log.info("管理员[" + user.getU_name() + "]登陆成功!");
		session.setAttribute(Constants.USERINFO_SESSION, user);
		return "redirect:index/logo/list.do";
	}

	/**
	 * 退出登陆
	 * */
	@RequestMapping("/exit.do")
	public String exit(Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception {
		model.addAttribute("error_msg", "");
		session.invalidate();
		return "ht/login";
	}



}
