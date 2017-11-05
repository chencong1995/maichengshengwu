package qt.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import qt.service.DemoService;
import util.BaseController;

@Controller
@RequestMapping("/demo")
@Transactional
public class DemoController extends BaseController{

	private static Logger log = Logger.getLogger(DemoController.class
			.getName());
	@Autowired
	private DemoService demoservice;
	
	
	@RequestMapping("/login.do")
	public String loginVerification(HttpServletRequest request,HttpServletResponse response){
		return "index";
	}
	
}
