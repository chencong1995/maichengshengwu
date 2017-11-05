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
import qt.pojo.HtSolutionEntity;
import qt.pojo.HtSolutionTypeEntity;
import qt.pojo.User;
import qt.service.HtSolutionService;
import util.Constants;

/**
 * 解决方案
 */
@Controller
@RequestMapping("/ht/solution")
@Transactional
public class HtSolutionController{
	@Autowired
	HtSolutionService htSolutionService;

	private static Logger log = Logger.getLogger(HtSolutionController.class
			.getName());

	/**
	 * 解决方案-解决方案-类别列表
	 */
	@RequestMapping("/programme/listType.do")
	public String programmeListType(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		List<HtSolutionTypeEntity> htSolution = htSolutionService
				.selectAllType();
		model.addAttribute("lists", htSolution);
		return "ht/solution/programme/typeList";
	}

	/**
	 * 解决方案-解决方案-类别检测
	 */
	@ResponseBody
	@RequestMapping("/programme/typeCheck.do")
	public String programmeSolutionTypeCheck(String name, IndexForm form,
			Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		String msg;
		if (htSolutionService.selectTypeByName(name)) {
			msg = "可使用类型";
		} else {
			msg = "不可使用类型";
		}
		return msg;
	}

	/**
	 * 解决方案-解决方案-新增类别
	 */
	@RequestMapping("/programme/addSolutionType.do")
	public String programmeAddType(String name, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		HtSolutionTypeEntity htSolutionTypeEntity = new HtSolutionTypeEntity();
		htSolutionTypeEntity.setName(name);
		htSolutionService.insertSolutionType(htSolutionTypeEntity);
		return this.programmeListType(form, model, request, response);
	}

	/**
	 * 解决方案-解决方案-删除类别
	 */
	@RequestMapping("/programme/delSolutionType.do")
	public String programmedeleteType(Integer id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		htSolutionService.deleteByTypeId(id);
		return this.programmeListType(form, model, request, response);
	}

	/**
	 * 解决方案-解决方案-列表
	 */
	@RequestMapping("/programme/list.do")
	public String programmeList(Integer typeId, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		List<HtSolutionEntity> htSolution = htSolutionService.selectAll(typeId);
		model.addAttribute("lists", htSolution);
		model.addAttribute("typeId", typeId);
		return "ht/solution/programme/list";
	}

	/**
	 * 解决方案-解决方案-新增前置
	 */
	@RequestMapping("/programme/addbefore.do")
	public String productlistAddBefore(Integer typeId, IndexForm form,
			Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		model.addAttribute("id", typeId);
		return "ht/solution/programme/add";
	}
	
	/**
	 * 解决方案-解决方案-方案检测
	 */
	@ResponseBody
	@RequestMapping("/programme/SluCheck.do")
	public String programmeSolutionCheck(String title, IndexForm form,
			Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		String msg;
		if (htSolutionService.selectSluByTitle(title)) {
			msg = "可使用标题";
		} else {
			msg = "不可使用标题";
		}
		return msg;
	}

	/**
	 * 解决方案-解决方案-新增类别
	 */
	@RequestMapping("/programme/addSolution.do")
	public String programmeAdd(HttpSession session, @RequestParam("slImage")
	MultipartFile slImage, String title, String content, Integer tid,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		HtSolutionEntity htSolutionEntity = new HtSolutionEntity();
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		// 判断文件是否为空
		if (!slImage.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ slImage.getOriginalFilename().substring(
								slImage.getOriginalFilename().lastIndexOf("."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				slImage.transferTo(new File(filePath));
				content = content.replace("\n", "<br/>").replaceAll(" ",
				"&nbsp;");
				htSolutionEntity.setContext(content);
				htSolutionEntity.setTitle(title);
				htSolutionEntity.setImageurl(filePathUrl);
				htSolutionEntity.setType(tid);
				htSolutionService.insertSolution(htSolutionEntity);
				System.out.println(title+"   "+tid+"  "+content+"  "+filePathUrl);
				log.info("用户[" + userInfo.getU_id() + "]修改服务类型");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.programmeList(tid, form, model, request, response);
	}
	
	
	/**
	 * 解决方案-解决方案-删除方案
	 */
	@RequestMapping("/programme/delSolution.do")
	public String programmedeleteSlu(Integer id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		htSolutionService.deleteById(id);
		return this.programmeListType(form, model, request, response);
	}
	
	
	/**
	 * 解决方案-解决方案-修改方案前置
	 */
	@RequestMapping("/programme/editbefore.do")
	public String producteditbefore(Integer id, IndexForm form,
			Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		HtSolutionEntity htSolutionEntity=htSolutionService.selectById(id);
		model.addAttribute("lists", htSolutionEntity);
		model.addAttribute("id", htSolutionEntity.getType());
		String context = htSolutionEntity.getContext().replace("<br/>", "\n").replaceAll("&nbsp;", "  ");
		System.out.println(context);
		model.addAttribute("con", context);
		return "ht/solution/programme/edit";
	}
	
	/**
	 * 解决方案-解决方案-方案检测
	 */
	@ResponseBody
	@RequestMapping("/programme/editCheck.do")
	public String programmeSolutionCheck(String title,Integer id, IndexForm form,
			Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		String msg;
		System.out.println(id+">>>>>>>>>>>>>>>>>>>"+title);
		String title1=htSolutionService.selectById(id).getTitle();
		if (htSolutionService.selectSluByTitle(title)||title1.equals(title)) {
			msg = "可使用标题";
		} else {
			msg = "不可使用标题";
		}
		return msg;
	}
	/**
	 * 解决方案-解决方案-修改方案
	 */
	@RequestMapping("/programme/editSolution.do")
	public String programmeedit(HttpSession session, @RequestParam("slImage")
	MultipartFile slImage, String title, String context, Integer tid, Integer id,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("solution");
		form.setMenu2("programme");
		model.addAttribute("data", form);
		HtSolutionEntity htSolutionEntity = new HtSolutionEntity();
		// 判断文件是否为空
		if (!slImage.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ slImage.getOriginalFilename().substring(
								slImage.getOriginalFilename().lastIndexOf("."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				slImage.transferTo(new File(filePath));
				context = context.replace("\n", "<br/>").replaceAll(" ",
				"&nbsp;");
				htSolutionEntity.setContext(context);
				htSolutionEntity.setTitle(title);
				htSolutionEntity.setImageurl(filePathUrl);
				htSolutionEntity.setType(tid);
				htSolutionEntity.setId(id);
				htSolutionService.updateById(htSolutionEntity);
				System.out.println("asdasdasdsada");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			System.out.println("1");
			context = context.replace("\n", "<br/>").replaceAll(" ",
			"&nbsp;");
			System.out.println("2");
			htSolutionEntity.setContext(context);
			System.out.println("3");
			htSolutionEntity.setTitle(title);
			htSolutionEntity.setType(tid);
			htSolutionEntity.setId(id);
			htSolutionService.updateById(htSolutionEntity);
		}
		return this.programmeList(tid, form, model, request, response);
	}
	
	
}
