package com.junefw.infra.modules.xdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.junefw.infra.modules.common.*;

@Controller
public class XdiminController {

	@Autowired
	XdminServiceImpl service;

	@RequestMapping(value = "/xdmin/xdminForm")
	public String userForm(Model model) throws Exception {

		return "xdmin/xdminForm";
	}

	@RequestMapping(value = "/xdmin/xdminInst")
	public String userInst(@ModelAttribute("dto") Xdmin dto) throws Exception {

		dto.setRegDateTime(UtilDateTime.nowString());
		service.insert(dto);

		return "redirect:/xdmin/xdminList";
	}

	@RequestMapping(value = "/xdmin/xdminList")
	public String userList(@ModelAttribute("vo") XdminVo vo, Model model) throws Exception {
		

		
		/*
		 * vo.setShOptionDate(vo.getShOptionDate() == null ? "1" :
		 * vo.getShOptionDate()); vo.setShDateStart(vo.getShDateStart() == null ?
		 * UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(),Constants.
		 * DATE_INTERVAL) : vo.getShDateStart()); vo.setShDateEnd(vo.getShDateEnd() ==
		 * null ? UtilDateTime.nowString() : vo.getShDateEnd());
		 */
		
		
		
		
		
		/*
		 * vo.setShDateStart(vo.getShDateStart() == null ?
		 * UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(),
		 * Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getShDateStart()));
		 * vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() :
		 * UtilDateTime.addStringTime(vo.getShDateEnd()));
		 */
		 
		
		 int count = service.selectOneCount(vo);
		 
			vo.setParamsPaging(count);

		System.out.println("1:" + vo.getShDateStart());
		System.out.println("2:" + vo.getShDateEnd());
		System.out.println("3:" + UtilDateTime.nowString());
		System.out.println("4:" + UtilDateTime.nowLocalDateTime());

		if (count != 0) {
			System.out.println(vo.getShOption());
			System.out.println(vo.getShValue());

			List<Xdmin> list = service.selectList(vo);
			model.addAttribute("list", list);
		}

		return "xdmin/xdminList";
	}

	@RequestMapping(value = "/xdmin/xdminView")
	public String xdminView(@ModelAttribute("vo")XdminVo vo, Model model) throws Exception {
		System.out.println("view:"+vo.getThisPage());
		
		Xdmin xdmin = service.selectOne(vo);
		model.addAttribute("item", xdmin);

		return "xdmin/xdminView";

	}

	@RequestMapping(value = "/xdmin/xdminEdit")
	public String xdminEdit(@ModelAttribute("vo")XdminVo vo, Model model) throws Exception {
		Xdmin xdmin = service.selectOne(vo);
		model.addAttribute("item", xdmin);

		return "xdmin/xdminEdit";

	}

	@RequestMapping(value = "/xdmin/xdminUpdate")
	public String xdminUpdate(Xdmin dto, Model model, RedirectAttributes redirectAttributes,XdminVo vo) throws Exception {
		service.updateMember(dto);
		redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		return "redirect:/xdmin/xdminView";

	}

	@RequestMapping(value = "/xdmin/userListDele")
	public String userListDele(XdminVo vo, Model model) throws Exception {
	String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setIfmmSeq(checkboxSeq);
			service.delete(vo);
		}
		
		/* service.delete(vo); */

		return "redriect:/xdmin/xdminList";
	}

	// book
	@RequestMapping(value = "/book/bookList")
	public String bookList(@ModelAttribute("vo") XdminVo vo, Model model) throws Exception {
		int count = service.selectOneCount2(vo);
		vo.setParamsPaging(count);

		List<Xdmin> list = service.selectBookList(vo);
		model.addAttribute("list", list);

		return "book/bookList";
	}

	@RequestMapping(value = "/book/bookRegister")
	public String bookRegister(XdminVo vo, Model model) throws Exception {

		return "book/bookRegister";
	}

	@RequestMapping(value = "/book/bookPayment")
	public String bookPayment(XdminVo vo, Model model) throws Exception {

		return "book/bookPayment";
	}

}