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
import qt.pojo.MenuEntity;
import qt.pojo.User;
import qt.service.MenuService;
import util.BaseController;
import util.Constants;
/**
 * 导航管理
 * */
@Controller
@RequestMapping("/ht/navigation")
@Transactional
public class HtNavigationController extends BaseController{

	private static Logger log = Logger.getLogger(HtNavigationController.class
			.getName());
	@Autowired 
	MenuService menuService;
	/**
	 * 导航管理-顶部菜单-列表
	 * */
	@RequestMapping("/top/list.do")
	public String topList(IndexForm form,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		form.setMenu1("navigation");
		form.setMenu2("top");
		model.addAttribute("data", form);
		List<MenuEntity> list=menuService.selectAll(1);
		model.addAttribute("lists", list);
		return "ht/navigation/top/list";
	}
	
	
	/**
	 * 导航管理-顶部菜单-修改前置
	 * */
	@RequestMapping("/top/editbefore.do")
	public String topupdateBefore(Integer id,IndexForm form,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		form.setMenu1("navigation");
		form.setMenu2("top");
		model.addAttribute("data", form);
		MenuEntity menuEntity=menuService.selectById(id);
		model.addAttribute("menu", menuEntity);
		return "ht/navigation/top/edit";
	}
	
	/**
	 * 导航管理-顶部菜单-修改检测
	 * */
	@ResponseBody
	@RequestMapping("/top/editCheck.do")
	public String topupdateCheck(String name,IndexForm form,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		form.setMenu1("navigation");
		form.setMenu2("top");
		model.addAttribute("data", form);
		String msg;
		if(menuService.selectByName(name)){
			msg="可以使用";
		}else{
			msg="不可使用";
		}
		System.out.println(msg);
		return msg;
	}
	
	/**
	 * 导航管理-顶部菜单-修改
	 * */
	@RequestMapping("/top/edit.do")
	public String topupdate(HttpSession session,Integer id,Integer type,String name,IndexForm form,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		User userInfo=(User)session.getAttribute(Constants.USERINFO_SESSION); 
		form.setMenu1("navigation");
		form.setMenu2("top");
		model.addAttribute("data", form);
		MenuEntity menuEntity=new MenuEntity();
		int uid=userInfo.getU_id();
		menuEntity.setName(name);
		menuEntity.setOperater(uid);
		menuEntity.setId(id);
		menuEntity.setType(type);
		menuService.updateById(menuEntity);
		return this.topList(form, model, request, response);
	}
	/**
	 * 导航管理-底部导航-列表
	 * */
	@RequestMapping("/bottom/list.do")
	public String bottomList(IndexForm form,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		form.setMenu1("navigation");
		form.setMenu2("bottom");
		model.addAttribute("data", form);
		List<MenuEntity> list=menuService.selectAll(0);
		if(list.size()==1){
			model.addAttribute("lists", list.get(0));
		}
		return "ht/navigation/bottom/list";
	}
	
	
	/**
	 * 导航管理-底部导航-新增导航
	 * */
	@RequestMapping("/bottom/edit.do")
	public String bottomEdit(HttpSession session,Integer id,Integer type,String name,IndexForm form,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		User userInfo=(User)session.getAttribute(Constants.USERINFO_SESSION); 
		form.setMenu1("navigation");
		form.setMenu2("bottom");
		model.addAttribute("data", form);
		MenuEntity menuEntity=new MenuEntity();
		int uid=userInfo.getU_id();
		menuEntity.setName(name);
		menuEntity.setOperater(uid);
		menuEntity.setId(id);
		menuEntity.setType(type);
		menuService.updateById(menuEntity);
		return this.bottomList(form, model, request, response);
	}
	
}
