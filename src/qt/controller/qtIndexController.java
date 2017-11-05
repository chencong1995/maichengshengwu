package qt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import qt.form.IndexForm;
import qt.pojo.IndexEntity;
import qt.service.HtIndexService;
import util.BaseController;

/**
 * 首页
 * */
@Controller
@RequestMapping("/qt/index")
@Transactional
public class qtIndexController extends BaseController{

	private static Logger log = Logger.getLogger(qtIndexController.class
			.getName());
	@Autowired
	private HtIndexService htIndexservice;
	/**
	 * 首页-LOGO-列表
	 * */
	@RequestMapping("/logo/list.do")
	public String logoList(IndexForm form,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		List<IndexEntity> logoList=htIndexservice.sel_index_bytype(1);
		form.setDataList(logoList);
		form.setMenu1("index");
		form.setMenu2("logo");
		model.addAttribute("data", form);
		if(logoList.size()==2){
			model.addAttribute("favicon_data",logoList.get(0));
			model.addAttribute("logo_data",logoList.get(1));
		}
		return "ht/index";
	}
}
