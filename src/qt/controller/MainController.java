package qt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import qt.pojo.Customer;
import qt.pojo.HtAboutUsEntity;
import qt.pojo.HtProductServiceEntity;
import qt.pojo.IndexEntity;
import qt.pojo.MenuEntity;
import qt.service.HtAboutUsService;
import qt.service.HtCustomerService;
import qt.service.HtProductService;
import qt.service.HtSolutionService;
import qt.service.MainService;
import qt.service.MenuService;
import util.BaseController;
import util.Constants;

@Controller
@Transactional
public class MainController {
	@Autowired
	private MainService mainService;
	@Autowired
	private HtProductService htProductService;
	@Autowired
	private HtSolutionService htSolutionService;
	@Autowired
	private HtCustomerService htCustomerService;
	@Autowired
	private HtAboutUsService htAboutUsService;
	@Autowired
	private MenuService menuService;

	@RequestMapping("/login.do")
	public String login(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		model.addAttribute("menuflag", "login");
		return "login";
	}

	@RequestMapping("/index.do")
	public String index(Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		/** favicon和Logo */
		List<IndexEntity> list = mainService.sel_index_bytype(1);
		if (list.size() == 2) {
			session.setAttribute(Constants.FAVICON_URL, list.get(0)
					.getImageurl());
			session.setAttribute(Constants.FAVICON_TITLE, list.get(0)
					.getImagemsg());
			session.setAttribute(Constants.LOGO_IMAGER, list.get(1)
					.getImageurl());
			session.setAttribute(Constants.LOGO_URL, list.get(1).getImagemsg());
		}
        /**
         * 底部
         */
		MenuEntity menuEntity=menuService.selectByType();
		List<HtAboutUsEntity> htAboutUsEntity=htAboutUsService.selectByType(4);
		session.setAttribute("aboutus", htAboutUsEntity.get(0));
		session.setAttribute("menu", menuEntity);
		/** 轮播图 */
		List<IndexEntity> bannerList = mainService.sel_index_bytype(2);
		if (bannerList.size() == 3) {
			model.addAttribute("bannerList1", bannerList.get(0));
			model.addAttribute("bannerList2", bannerList.get(1));
			model.addAttribute("bannerList3", bannerList.get(2));
		}
		model.addAttribute("bannerList", bannerList);

		/** 我们的服务 */
		List<IndexEntity> serviceList = mainService.sel_index_bytype(3);
		if (serviceList.size() == 5) {
			model.addAttribute("serviceList1", serviceList.get(0));
			model.addAttribute("serviceList2", serviceList.get(1));
			model.addAttribute("serviceList3", serviceList.get(2));
			model.addAttribute("serviceList4", serviceList.get(3));
			model.addAttribute("serviceList5", serviceList.get(4));
		}

		List<IndexEntity> advantageList = mainService.sel_index_bytype(4);
		if (advantageList.size() == 6) {
			System.out.println(advantageList.get(0).getTitle());
			model.addAttribute("advantageList1", advantageList.get(0));
			model.addAttribute("advantageList2", advantageList.get(1));
			model.addAttribute("advantageList3", advantageList.get(2));
			model.addAttribute("advantageList4", advantageList.get(3));
			model.addAttribute("advantageList5", advantageList.get(4));
			model.addAttribute("advantageList6", advantageList.get(5));
		}

		List<IndexEntity> businessList = mainService.sel_index_bytype(5);
		if (businessList.size() == 3) {
			model.addAttribute("businessList1", businessList.get(0));
			model.addAttribute("businessList2", businessList.get(1));
			model.addAttribute("businessList3", businessList.get(2));
		}
		model.addAttribute("menuflag", "index");
		model.addAttribute("advantageList", advantageList);
		model.addAttribute("businessList", businessList);
		return "qt/index";
	}

	@RequestMapping("/service.do")
	public String service(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		model.addAttribute("menuflag", "service");
		List<HtProductServiceEntity> listEntity = htProductService.selectAll();
		if (listEntity.size() == 4) {
			model.addAttribute("serviceList1", listEntity.get(0));
			model.addAttribute("serviceList2", listEntity.get(1));
			model.addAttribute("serviceList3", listEntity.get(2));
			model.addAttribute("serviceList4", listEntity.get(3));
		}
		model.addAttribute("branding", htProductService.selectByType(1));
		model.addAttribute("polygraphy", htProductService.selectByType(2));
		model.addAttribute("textstyle", htProductService.selectByType(3));
		System.out.println(htProductService.selectByType(3).get(0).getTitle());
		return "qt/service";
	}

	@RequestMapping("/product.do")
	public String product(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		model.addAttribute("menuflag", "product");
		
		model.addAttribute("branding", htSolutionService.selectAll(1));
		String context = new String(htSolutionService.selectAll(1).get(0).getContext());
		model.addAttribute("con", context);

		
		model.addAttribute("polygraphy", htSolutionService.selectAll(2));
		String context2 = new String(htSolutionService.selectAll(2).get(0)
				.getContext());
		model.addAttribute("con1", context2);
		
		
		model.addAttribute("textstyle", htSolutionService.selectAll(3));
		String context3 = new String(htSolutionService.selectAll(3).get(0)
				.getContext());
		model.addAttribute("con2", context3);
		return "qt/product";
	}

	@RequestMapping("/about.do")
	public String about(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		model.addAttribute("menuflag", "about");
		List<HtAboutUsEntity> list1=htAboutUsService.selectByType(1);
		HtAboutUsEntity introduction=list1.get(0);
		String context = new String(list1.get(0)
				.getContext());
		model.addAttribute("introduction", introduction);
		model.addAttribute("con", context);
		
		String context1 = new String(htAboutUsService.selectByType(2).get(0)
				.getContext());
		model.addAttribute("con1", context1);
		
		List<HtAboutUsEntity> news=htAboutUsService.selectByType(3);
		model.addAttribute("news", news);
		return "qt/about";
	}

	@RequestMapping("/contactus.do")
	public String contactus(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		model.addAttribute("menuflag", "contactus");
		MenuEntity menuEntity=menuService.selectByType();
		model.addAttribute("menu", menuEntity);
		return "qt/contactus";
	}
	
	@RequestMapping("/gallery.do")
	public String gallery(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		model.addAttribute("menuflag", "gallery");
		List<Customer> list=htCustomerService.selectByStatus();
		model.addAttribute("Cus", list);
		return "qt/gallery";
	}

	@RequestMapping("/msg/addmsg.do")
	public String addMsg(String mName, String mEmail, String mSubject,
			String mMessage, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		if (!mName.isEmpty() && !mEmail.isEmpty() && !mMessage.isEmpty()) {
			mainService.add_msg(mName, mEmail, mSubject, mMessage);
		}
		return this.contactus(model, request, response);
	}
}
