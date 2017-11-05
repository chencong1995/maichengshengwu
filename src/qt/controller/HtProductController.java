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
import qt.pojo.HtProductEntity;
import qt.pojo.HtProductServiceEntity;
import qt.pojo.HtProductTypeEntity;
import qt.pojo.User;
import qt.service.HtProductService;
import util.BaseController;
import util.Constants;

/**
 * 产品服务
 */
@Controller
@RequestMapping("/ht/product")
@Transactional
public class HtProductController extends BaseController{

	private static Logger log = Logger.getLogger(HtProductController.class
			.getName());

	@Autowired
	private HtProductService htProductService;

	/**
	 * 产品服务-服务类型-列表
	 */
	@RequestMapping("/servicetype/list.do")
	public String servicetypeList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("servicetype");
		model.addAttribute("data", form);
		List<HtProductServiceEntity> list = htProductService.selectAll();
		model.addAttribute("lists", list);
		if (list.size() == 4) {
			model.addAttribute("data1", list.get(0));
			model.addAttribute("data2", list.get(1));
			model.addAttribute("data3", list.get(2));
			model.addAttribute("data4", list.get(3));
		}
		return "ht/product/servicetype/list";
	}


	/**
	 * 产品服务-服务类型-修改服务
	 */
	@RequestMapping("/servicetype/update.do")
	public String servicetypeUpdate(HttpSession session,
			@RequestParam("service_file")
			MultipartFile service_file, String title, String context, int id,
			IndexForm form, Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		form.setMenu1("product");
		form.setMenu2("servicetype");
		model.addAttribute("data", form);
		HtProductServiceEntity htProduct = new HtProductServiceEntity();
		// 判断文件是否为空
		if (!service_file.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ service_file.getOriginalFilename().substring(
								service_file.getOriginalFilename().lastIndexOf(
										"."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				service_file.transferTo(new File(filePath));
				htProduct.setContext(context);
				htProduct.setTitle(title);
				htProduct.setImageurl(filePathUrl);
				htProduct.setId(id);
				htProductService.updateService(htProduct);
				log.info("用户[" + userInfo.getU_id() + "]修改服务类型");
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			htProduct.setContext(context);
			htProduct.setId(id);
			htProduct.setTitle(title);
			htProductService.updateService(htProduct);
			log.info("用户[" + userInfo.getU_id() + "]修改服务类型2");
		}

		return this.servicetypeList(form, model, request, response);

	}


	/**
	 * 首产品服务-产品中心-类别列表
	 */
	@RequestMapping("/productlist/listType.do")
	public String productlistList(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		List<HtProductTypeEntity> list=htProductService.selectAllPdtp();
		model.addAttribute("lists", list);
		return "ht/product/productlist/listType";
	}
	

	
	
	
	/**
	 * 产品服务-产品中心-新增产品类别前置
	 */
	@RequestMapping("/productlist/addbefore.do")
	public String productlistAddBefore(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		return "ht/product/productlist/addtype";
	}
	
	

	/**
	 * 产品服务-产品中心-类别检测
	 */
	@ResponseBody
	@RequestMapping("/productlist/typeCheck.do")
	public String productlistcheck(String typeName,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		String msg;
		if(htProductService.selectByTypeName(typeName)){
			msg="可以使用类型";
			
		}else{
			msg="类型已存在";
		}
		return msg;
	}
	
	/**
	 * 产品服务-产品中心-新增产品类别
	 */
	@RequestMapping("/productlist/addType.do")
	public String productlistAddType(String name,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		HtProductTypeEntity htProductType=new HtProductTypeEntity();
		htProductType.setName(name);
		htProductService.addProductType(htProductType);
		return this.productlistList(form, model, request, response);
	}
	
	
	/**
	 * 产品服务-产品中心-删除产品类别
	 */
	@RequestMapping("/productlist/delType.do")
	public void productdeleteType(Integer id,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		htProductService.deleteTypeById(id);
	}
	
	/**
	 * 首产品服务-产品中心-列表
	 */
	@RequestMapping("/productlist/list.do")
	public String productlist(Integer typeId,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		List<HtProductEntity> list=htProductService.selectByType(typeId);
		model.addAttribute("lists", list);
		return "ht/product/productlist/list";
	}
	
	
	
	
	/**
	 * 产品服务-产品中心-新增产品
	 */
	@RequestMapping("/productlist/listexistType.do")
	public String productlistType(IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		List<HtProductTypeEntity> list=htProductService.selectAllPdtp();
		model.addAttribute("lists", list);
		return "ht/product/productlist/add";
	}

	
	/**
	 * 产品服务-产品中心-新增产品检测
	 */
	@ResponseBody
	@RequestMapping("/productlist/titleCheck.do")
	public String productCheck(String title,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		String msg;
		if(htProductService.selectByTitle(title)){
			msg="可以使用title";
		}else{
			msg="已存在title";
		}
		System.out.println(msg);
		return msg;
	}
	
	
	/**
	 * 产品服务-产品中心-新增产品
	 */
	@RequestMapping("/productlist/Addpdt.do")
	public String productAdd(HttpSession session,String title,Integer typeId,@RequestParam("pdtImage")
			MultipartFile pdtImage,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		User userInfo = (User) session.getAttribute(Constants.USERINFO_SESSION);
		HtProductEntity htProductEntity = new HtProductEntity();
		// 判断文件是否为空
		if (!pdtImage.isEmpty()) {
			try {
				String filePathUrl = "upload/"
						+ UUID.randomUUID()
						+ pdtImage.getOriginalFilename().substring(
								pdtImage.getOriginalFilename().lastIndexOf(
										"."));
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ filePathUrl;
				// 转存文件
				pdtImage.transferTo(new File(filePath));
				htProductEntity.setTitle(title);
				htProductEntity.setImageurl(filePathUrl);
				htProductEntity.setType(typeId);
				htProductService.addpdt(htProductEntity);
				log.info("用户[" + userInfo.getU_id() + "]修改服务类型");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.productlistList(form, model, request, response);
	}
	
	
	
	
	/**
	 * 产品服务-产品中心-删除产品
	 */
	@RequestMapping("/productlist/delPdt.do")
	public void productdelete(Integer id,IndexForm form, Model model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		form.setMenu1("product");
		form.setMenu2("productlist");
		model.addAttribute("data", form);
		htProductService.deletePdtById(id);
	}
}
