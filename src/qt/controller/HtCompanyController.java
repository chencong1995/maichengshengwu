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
import qt.pojo.HtAboutUsEntity;
import qt.pojo.MessageEntity;
import qt.pojo.User;
import qt.service.HtAboutUsService;
import qt.service.HtMessageService;
import util.BaseController;
import util.Constants;

/**
 * 关于我们
 */
@Controller
@RequestMapping("/ht/company")
@Transactional
public class HtCompanyController extends BaseController{

	private static Logger log = Logger.getLogger(HtCompanyController.class
			.getName());
	@Autowired
	HtAboutUsService htAboutUsService;
	@Autowired
	HtMessageService htMessageService;

	/**
	 * 关于我们-企业简介-列表
	 */
	@RequestMapping("/introduction/list.do")
	public String introductionList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("introduction");
		model.addAttribute("data", form);
		List<HtAboutUsEntity> htAboutUsEntity = htAboutUsService
				.selectByType(1);
		if (htAboutUsEntity.size() == 1) {
			model.addAttribute("list", htAboutUsEntity.get(0));
			String context = htAboutUsEntity.get(0).getContext();
			context = context.replace("<br/>", "\n").replaceAll("&nbsp;", " ");
			model.addAttribute("con", context);
		}
		return "ht/company/introduction/list";
	}

	/**
	 * 关于我们-修改
	 */
	@RequestMapping("/introduction/update.do")
	public String introductionUpdate(HttpSession session, @RequestParam("file")
	MultipartFile file, Integer id, String context, IndexForm form,
			Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		form.setMenu1("company");
		form.setMenu2("introduction");
		model.addAttribute("data", form);
		HtAboutUsEntity htAboutUsEntity = new HtAboutUsEntity();
		// 判断文件是否为空
		if (!file.isEmpty()&&!context.isEmpty()) {
			System.out.println("进入修改方法1" + ">>>" + context + ">>>" + id + "<<<<<<<");
			try {
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
				context = context.replace("\n", "<br/>").replaceAll(" ",
						"&nbsp;");
				htAboutUsEntity.setContext(context);
				htAboutUsEntity.setImageurl(filePathUrl);
				htAboutUsEntity.setId(id);
				log.info("用户[" + userInfo.getU_id() + "]开始更新简介");
				htAboutUsService.updateById(htAboutUsEntity);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			System.out.println("进入修改方法2" + ">>>" + context + ">>>" + id + "<<<<<<<");
			context = context.replace("\n", "<br/>").replaceAll(" ",
					"&nbsp;");
			htAboutUsEntity.setContext(context);
			htAboutUsEntity.setId(id);
			log.info("用户[" + userInfo.getU_id() + "]开始更新简介");
			htAboutUsService.updateById(htAboutUsEntity);
		}
		return this.introductionList(form, model, request, response);
	}

	/**
	 * 关于我们-企业愿景-列表
	 */
	@RequestMapping("/vision/list.do")
	public String visionList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("vision");
		model.addAttribute("data", form);
		List<HtAboutUsEntity> htAboutUsEntity = htAboutUsService
				.selectByType(2);
		if (htAboutUsEntity.size() == 1) {
			model.addAttribute("list", htAboutUsEntity.get(0));
			String context = new String(htAboutUsEntity.get(0).getContext());
			context = context.replace("<br/>", "\n").replaceAll("&nbsp;", " ");
			model.addAttribute("con", context);
		}
		return "ht/company/vision/list";
	}

	/**
	 * 关于我们-企业愿景-新增导航
	 */
	@RequestMapping("/vision/add.do")
	public String visionAdd(HttpSession session, Integer id, String context,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		form.setMenu1("company");
		form.setMenu2("vision");
		model.addAttribute("data", form);
		HtAboutUsEntity htAboutUsEntity = new HtAboutUsEntity();
		context = context.replace("\n", "<br/>").replaceAll(" ", "&nbsp;");
		htAboutUsEntity.setContext(context);
		htAboutUsEntity.setId(id);
		log.info("用户[" + userInfo.getU_id() + "]开始更新简介");
		htAboutUsService.updateById(htAboutUsEntity);
		log.info("用户[" + userInfo.getU_id() + "]更新简介");
		return this.visionList(form, model, request, response);
	}

	/**
	 * 关于我们-企业新闻-列表
	 */
	@RequestMapping("/news/list.do")
	public String newsList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("news");
		model.addAttribute("data", form);
		List<HtAboutUsEntity> htAboutUsEntity = htAboutUsService
				.selectByType(3);
		model.addAttribute("list", htAboutUsEntity);
		return "ht/company/news/list";
	}

	/**
	 * 关于我们-企业新闻-新增前置
	 */
	@RequestMapping("/news/addbefore.do")
	public String newsAddBefore(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("news");
		model.addAttribute("data", form);
		return "ht/company/news/add";
	}

	/**
	 * 关于我们-企业新闻-新增检测
	 */
	@ResponseBody
	@RequestMapping("/news/addCheck.do")
	public String newsAddCheck(String title, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("news");
		model.addAttribute("data", form);
		String msg;
		if (htAboutUsService.selectByTitle(title)) {
			msg = "可使用标题";
		} else {
			msg = "不可使用标题";
		}
		System.out.println(msg);
		return msg;
	}

	/**
	 * 关于我们-企业新闻-新增导航
	 */
	@RequestMapping("/news/add.do")
	public String newsAdd(HttpSession session, @RequestParam("file")
	MultipartFile file, String title, Integer type, String context,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("company");
		form.setMenu2("news");
		model.addAttribute("data", form);
		HtAboutUsEntity htAboutUsEntity = new HtAboutUsEntity();
		System.out.println("进入新增" + ">>>" + context + ">>>" + type + "<<<<<<<");
		// 判断文件是否为空
		if (!file.isEmpty()) {
			try {
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
				htAboutUsEntity.setTitle(title);
				context = context.replace("\n", "<br/>").replaceAll(" ",
						"&nbsp;");
				htAboutUsEntity.setContext(context);
				htAboutUsEntity.setImageurl(filePathUrl);
				htAboutUsEntity.setType(type);
				htAboutUsService.insertNews(htAboutUsEntity);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.newsList(form, model, request, response);
	}

	
	
	/**
	 * 关于我们-企业新闻-修改
	 */
	@RequestMapping("/news/editBefore.do")
	public String newsEditBefore(Integer id,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("news");
		model.addAttribute("data", form);
		HtAboutUsEntity htAboutUsEntity = htAboutUsService
				.selectNewsById(id);
		model.addAttribute("list", htAboutUsEntity);
		return "ht/company/news/edit";
	}  
	/**
	 * 关于我们-企业新闻-新增检测
	 */
	@ResponseBody
	@RequestMapping("/news/editCheck.do")
	public String newsEditCheck(String title,Integer id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("news");
		model.addAttribute("data", form);
		String msg;
		String tilte2=htAboutUsService.selectNewsById(id).getTitle();
		if (tilte2.equals(title)||htAboutUsService.selectByTitle(title)) {
			msg = "可使用标题";
		} else {
			msg = "不可使用标题";
		}
		System.out.println(msg);
		return msg;
	}
	
	/**
	 * 关于我们-企业新闻-修改
	 */
	@RequestMapping("/news/edit.do")
	public String newsEdit(Integer id,String title,String context, @RequestParam("file")
			MultipartFile file,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("news");
		model.addAttribute("data", form);
		HtAboutUsEntity htAboutUsEntity = new HtAboutUsEntity();
		// 判断文件是否为空
		if (!file.isEmpty()) {
			try {
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
				htAboutUsEntity.setTitle(title);
				context = context.replace("\n", "<br/>").replaceAll(" ",
						"&nbsp;");
				htAboutUsEntity.setContext(context);
				htAboutUsEntity.setImageurl(filePathUrl);
				htAboutUsEntity.setId(id);
				htAboutUsService.updateById(htAboutUsEntity);
			} catch (Exception e) {
				e.printStackTrace();
			}}else{
				htAboutUsEntity.setTitle(title);
				context = context.replace("\n", "<br/>").replaceAll(" ",
						"&nbsp;");
				htAboutUsEntity.setContext(context);
				htAboutUsEntity.setId(id);
				htAboutUsService.updateById(htAboutUsEntity);
			}
		return this.newsList(form, model, request, response);
	} 
	
	/**
	 * 关于我们-企业新闻-删除
	 */
	@RequestMapping("/news/delete.do")
	public String newsDelete(Integer id, IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("news");
		model.addAttribute("data", form);
		htAboutUsService.deleteNewsById(id);
		return this.newsList(form, model, request, response);
	}

	/**
	 * 关于我们-企业地址-列表
	 */
	@RequestMapping("/address/list.do")
	public String addressList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("address");
		model.addAttribute("data", form);
		List<HtAboutUsEntity> htAboutUsEntity = htAboutUsService
				.selectByType(4);
		if (htAboutUsEntity.size() == 1) {
			model.addAttribute("list", htAboutUsEntity.get(0));
			String context = htAboutUsEntity.get(0).getContext();
			context = context.replace("<br/>", "\n").replaceAll("&nbsp;", " ");
			model.addAttribute("con", context);
		}
		return "ht/company/address/list";
	}

	/**
	 * 关于我们-企业地址-新增导航
	 */
	@RequestMapping("/address/update.do")
	public String addressAdd(String phone, String address, Integer id,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		form.setMenu1("company");
		form.setMenu2("address");
		model.addAttribute("data", form);
		HtAboutUsEntity htAboutUsEntity = new HtAboutUsEntity();
		htAboutUsEntity.setTitle(address);
		htAboutUsEntity.setImageurl(phone);
		htAboutUsEntity.setId(id);
		htAboutUsService.updateById(htAboutUsEntity);
		return this.addressList(form, model, request, response);
	}

	/**
	 * 关于我们-问题咨询-列表
	 */
	@RequestMapping("/question/list.do")
	public String questionList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("question");
		model.addAttribute("data", form);
		List<MessageEntity> htMessageEntity = htMessageService
				.selectAllPlm();
		model.addAttribute("lists", htMessageEntity);
		return "ht/company/question/list";
	}

	/**
	 * 关于我们-问题咨询-更新
	 */
	@RequestMapping("/question/update.do")
	public String questionAdd(Integer id,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("company");
		form.setMenu2("question");
		model.addAttribute("data", form);
		htMessageService.updateById(id);
		return this.questionList(form, model, request, response);
	}
}
