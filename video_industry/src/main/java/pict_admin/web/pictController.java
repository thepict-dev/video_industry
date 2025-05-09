package pict_admin.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;


import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;

import pict_admin.service.PictService;
import pict_admin.service.PictVO;
import pict_admin.service.AdminService;
import pict_admin.service.AdminVO;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.apache.commons.codec.binary.Base64;
import org.json.JSONArray;
import org.json.JSONObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Controller
public class pictController {
	PasswordAuthentication pa;
	
	@Resource(name = "pictService")
	private PictService pictService;
	
	@Resource(name = "adminService")
	private AdminService adminService;
	
	
	@RequestMapping(value = "/lending.do")
	public String lending(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO.setType("board");
		List<?> board_list = pictService.board_list(pictVO);
		
		pictVO.setType("news");
		List<?> new_list = pictService.board_list(pictVO);
		System.out.println(new_list.size());
		
		List<?> movie_list = pictService.main_movie_list(pictVO);
		
		pictVO.setType("main_layer");
		List<?> location_layer_list = pictService.location_list(pictVO);
		List<?> popup_list = pictService.get_popup_list(pictVO);
		System.out.println(popup_list);
		model.addAttribute("board_list", board_list);
		model.addAttribute("news_list", new_list);
		model.addAttribute("movie_list", movie_list);
		model.addAttribute("popup_list", popup_list);
		model.addAttribute("totalCnt", popup_list.size());
		model.addAttribute("location_layer_list", location_layer_list);
		
		return "pict/user/user_main";
	}
	//센터소개
	@RequestMapping(value = "/introduce.do")
	public String introduce(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		return "pict/user/introduce";
	}

	//지원사업
	@RequestMapping(value = "/support.do")
	public String support(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		System.out.println(pictVO.getCategory()+"카테고리::::::::::");
		int limitNumber = 5;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.support_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 5 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("support_cnt", totalCnt);
		
		List<?> support_list = pictService.support_list(pictVO);
		model.addAttribute("resultList", support_list);
		model.addAttribute("size", support_list.size());
		model.addAttribute("pictVO", pictVO);
		
		model.addAttribute("resultList", support_list);
		return "pict/user/support";
	}
	//지원사업 뷰
	@RequestMapping(value = "/support_view.do")
	public String support_view(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO = pictService.support_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/user/support_view";
	}

	//센터소식
	@RequestMapping(value = "/notice.do")
	public String notice(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO.setType("board");
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("board_cnt", totalCnt);
		
		List<?> board_list = pictService.board_list(pictVO);
		model.addAttribute("resultList", board_list);
		model.addAttribute("size", board_list.size());
		model.addAttribute("pictVO", pictVO);
		return "pict/user/notice";
	}
	//센터소식 뷰
	@RequestMapping(value = "/notice_view.do")
	public String notice_view(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/user/notice_view";
	}

	//뉴스
	@RequestMapping(value = "/news.do")
	public String news(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO.setType("news");
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("board_cnt", totalCnt);
		
		List<?> board_list = pictService.board_list(pictVO);
		model.addAttribute("resultList", board_list);
		model.addAttribute("size", board_list.size());
		model.addAttribute("pictVO", pictVO);
		return "pict/user/news";
	}
	//뉴스 뷰
	@RequestMapping(value = "/news_view.do")
	public String news_view(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/user/news_view";
	}
	
	//로케이션
	@RequestMapping(value = "/location_db_list.do")
	public String location_db_list(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		int limitNumber = 16;
		pictVO.setLimit_cnt(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.video_location_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 16 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("board_cnt", totalCnt);
    	
    	List<PictVO> reference_list = pictService.video_location_list(pictVO);
		model.addAttribute("resultList", reference_list);
		model.addAttribute("pictVO", pictVO);
		
		return "pict/user/location_db_list";
	}
	@RequestMapping(value = "/location_db_map.do")
	public String location_db_map(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO.setFlag("isactive");
		
		List<PictVO> reference_list = pictService.video_location_list(pictVO);
	
		JSONArray jsonArr = new JSONArray();
		
		for(int i=0; i<reference_list.size(); i++) {
			JSONObject jsonObj1 = new JSONObject();

			jsonObj1.put("idx", reference_list.get(i).getIdx());
			String type = "";
			if(reference_list.get(i).getCategory() != null) {
				if(reference_list.get(i).getCategory().equals("1")) type = "공공/기관";
				if(reference_list.get(i).getCategory().equals("2")) type = "관광/공원/카페";
				if(reference_list.get(i).getCategory().equals("3")) type = "도로/교통";
				if(reference_list.get(i).getCategory().equals("4")) type = "숙박시설";
				if(reference_list.get(i).getCategory().equals("5")) type = "야외 스튜디오";
				if(reference_list.get(i).getCategory().equals("6")) type = "유휴시설";
				if(reference_list.get(i).getCategory().equals("7")) type = "종교/전통";
				if(reference_list.get(i).getCategory().equals("8")) type = "기타";
			}
			
			jsonObj1.put("name", reference_list.get(i).getCategory());
			jsonObj1.put("title", reference_list.get(i).getTitle());
			jsonObj1.put("lat", reference_list.get(i).getLat());
			jsonObj1.put("lng", reference_list.get(i).getLng());
			
			jsonArr.put(jsonObj1);
			
			/*
			map.put("idx", "1");
			map.put("type", "더픽트");
			map.put("title", "더픽트");
			map.put("lat", "37.87520275487296");
			map.put("lng", "127.73536032930221");
			*/
		}

		
		model.addAttribute("jsonArr", jsonArr);
		model.addAttribute("pictVO", pictVO);
		
		return "pict/user/location_db_map";
	}
	@RequestMapping(value = "/location_view.do")
	public String location_view(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO = pictService.video_location_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		
		List<PictVO> reference_list = pictService.movie_list(pictVO);
		model.addAttribute("resultList", reference_list);
		model.addAttribute("movie_cnt", reference_list.size());
		
		
		return "pict/user/location_view";
	}
	@RequestMapping(value = "/location_apply_save.do", method = RequestMethod.POST)
	public String location_apply_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("attach_file") MultipartFile attach_file) throws Exception {
		if(attach_file.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
//			String filepath = "D:\\user1\\upload_file\\video_industry\\";
			String filename = uuid+uploadPath.split("#####")[1];
			
			pictVO.setFile_url(filepath+filename);
		}
		String mobile = pictVO.getMobile();
		String name = pictVO.getName();
		String email = pictVO.getEmail();
		
		pictVO.setStatus("0");
		pictService.location_apply_save(pictVO);
		model.addAttribute("message", "정상적으로 저장되었습니다.");
		model.addAttribute("retType", ":location");
		if(pictVO.getMain_category().equals("3")) {
			model.addAttribute("retUrl", "/support.do?category=3");
		}
		else {
			model.addAttribute("retUrl", "/support_view.do?idx="+pictVO.getIdx());
		}
		
		//이메일용
		mailsend("지원사업 신청 완료", name + "님께서 신청하신 지원사업이 정상적으로 신청되었습니다.", email);
		
		//문자용
		model.addAttribute("msg", name + "님께서 신청하신 지원사업이 정상적으로 신청되었습니다.");
		model.addAttribute("mobile", mobile);
		return "pict/main/message_sms";	
		
	}	
	
	@RequestMapping(value = "/location/location_apply_list.do")
	public String location_apply_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.location_apply_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("location_cnt", totalCnt);
		
		List<?> support_list = pictService.location_apply_list(pictVO);
		model.addAttribute("resultList", support_list);
		model.addAttribute("size", support_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/location/location_apply_list";
	}
	
	//산업체
	@RequestMapping(value = "/industry_db.do")
	public String industry_db(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		int limitNumber = 16;
		pictVO.setLimit_cnt(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.industry_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 16 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("board_cnt", totalCnt);
    	
    	List<PictVO> reference_list = pictService.industry_list(pictVO);
		model.addAttribute("resultList", reference_list);
		model.addAttribute("pictVO", pictVO);
		
		return "pict/user/industry_db";
	}
	@RequestMapping(value = "/industry_portfolio.do")
	public String industry_portfolio(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		List<PictVO> reference_list = pictService.portfolio_list(pictVO);
		model.addAttribute("resultList", reference_list);
		
		pictVO = pictService.industry_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/user/industry_portfolio";
	}
	@RequestMapping(value = "/industry_info.do")
	public String industry_info(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO = pictService.industry_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/user/industry_info";
	}

	
	@RequestMapping(value = "/pict_login.do")
	public String login_main(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpServletResponse response) throws Exception {
		String userAgent = request.getHeader("user-agent");
		String sessions = (String)request.getSession().getAttribute("id");
		boolean mobile1 = userAgent.matches( ".*(iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson).*");
		boolean mobile2 = userAgent.matches(".*(LG|SAMSUNG|Samsung).*"); 
		if (mobile1 || mobile2) {
		    //여기 모바일일 경우
			System.out.println("피씨");
			model.addAttribute("message", "PC에서만 사용이 가능합니다.");
			model.addAttribute("retType", ":exit");
			return "pict/main/message";
		}
		
		
		System.out.println(sessions);
		if(sessions == null || sessions == "null") {
			return "pict/main/login";
		}
		else {
			//나중에 여기 계정별로 리다이렉트 분기처리
			System.out.println(sessions);
			if(!sessions.equals("finecom") && !sessions.equals("admin")) {
				System.out.println("교수님덜222");
				return "redirect:/board/board_list.do";
			}
			else {
				System.out.println("아래 바꾸기");
				return "redirect:/board/board_list.do";
				//return "redirect:/status/connection_status.do";
			}
			
		}
	}
	@RequestMapping(value = "/pict_main.do")
	public String main(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		System.out.println(sessions);
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		else {
			String user_id = (String)request.getSession().getAttribute("id");
			if(request.getSession().getAttribute("id") != null) {
				adminVO.setAdminId((String)request.getSession().getAttribute("id"));
				adminVO = adminService.get_user_info(adminVO);
				model.addAttribute("adminVO", adminVO);
			}
		
			//나중에 여기 계정별로 리다이렉트 분기처리
			System.out.println(sessions);
			if(!sessions.equals("finecom") && !sessions.equals("admin")) {
				return "redirect:/board/board_list.do";
			}
			else {
				System.out.println("아래 바꾸기");
				return "redirect:/board/board_list.do";
			}
		}
	}
	@RequestMapping(value = "/login.do")
	public String login(@ModelAttribute("adminVO") AdminVO adminVO, HttpServletRequest request,  ModelMap model) throws Exception {
		//처음 드러와서 세션에 정보있으면 메인으로 보내줘야함
		String inpuId = adminVO.getAdminId();
		String inputPw = adminVO.getAdminPw();
		
		adminVO = adminService.get_user_info(adminVO);

		if (adminVO != null && adminVO.getId() != null && !adminVO.getId().equals("")) {
			String user_id = adminVO.getId();
			String enpassword = encryptPassword(inputPw, inpuId);	//입력비밀번호
			
			if(enpassword.equals(adminVO.getPassword())) {
				request.getSession().setAttribute("id", adminVO.getId());
				request.getSession().setAttribute("name", adminVO.getName());
				request.getSession().setAttribute("depart", adminVO.getDepart());

				String ip = request.getRemoteAddr();
			    DateFormat format2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			    String now = format2.format(Calendar.getInstance().getTime());
			    
			    adminVO.setLast_login_ip(ip);
			    adminVO.setLast_login_date(now);
			    adminService.insert_login_info(adminVO);
			    
			    adminVO.setAdminId(user_id);
			    adminVO = adminService.get_user_info(adminVO);
			    
				return "redirect:/pict_main.do";
				
			}
			else {
				model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/pict_login.do");
				return "pict/main/message";
			}
		}
		else {
			model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/pict_login.do");
			return "pict/main/message";
		}
	}

	@RequestMapping(value = "/user_list.do")
	public String user_list(@ModelAttribute("adminVO") AdminVO adminVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		model.addAttribute("search_text",adminVO.getSearch_text());
		
		
		List<?> userList = adminService.user_list(adminVO);
		model.addAttribute("resultList", userList);
		return "pict/main/user_list";
	}
	@RequestMapping(value = "/user_register.do")
	public String user_register(@ModelAttribute("adminVO") AdminVO adminVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		if(adminVO.getId() != null && !adminVO.equals("")) {
			//수정
			adminVO = adminService.user_select_one(adminVO);
			adminVO.setSaveType("update");
			
		}
		else {
			adminVO.setSaveType("insert");
		}
		
		model.addAttribute("adminVO", adminVO);
		return "pict/main/user_register";
	}
	@RequestMapping(value = "/user_reset.do")
	public String user_reset(@ModelAttribute("adminVO") AdminVO adminVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		String enpassword = encryptPassword(adminVO.getId()+"1!", adminVO.getId());	//입력비밀번호
		adminVO.setPassword(enpassword);
		adminService.user_reset(adminVO);
		
		model.addAttribute("message", "비밀번호가 초기화 되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/user_list.do");
		return "pict/main/message";
	}
	@RequestMapping(value = "/user_delete.do")
	public String user_delete(@ModelAttribute("adminVO") AdminVO adminVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		System.out.println(adminVO.getId());
		adminService.user_delete(adminVO);
		
		model.addAttribute("message", "삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/user_list.do");
		return "pict/main/message";
	}
	@RequestMapping(value = "/user_save.do")
	public String user_save(@ModelAttribute("searchVO") PictVO pictVO, @ModelAttribute("adminVO") AdminVO adminVO,ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		System.out.println("::::::::::::::"+adminVO.getPassword());
		String enpassword = encryptPassword(adminVO.getPassword(), adminVO.getId());	//입력비밀번호
		
		adminVO.setPassword(enpassword);
		String user_id = adminVO.getId();
		
		
		//중복 계정조회
		AdminVO vo = adminVO;
		vo.setAdminId(user_id);
		vo = adminService.get_user_info(vo);
		
		if(adminVO.getSaveType() != null && adminVO.getSaveType().equals("update")) {
			System.out.println("업데이트::::::::::::::::::::::");
			System.out.println(adminVO.toString());
			adminService.update_user(adminVO);	//user 정보 인설트
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/user_list.do");
			return "pict/main/message";
		}
		
		else {
	        if(vo != null) {
	        	model.addAttribute("message", "동일한 아이디가 존재합니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/user_register.do");
				return "pict/main/message";
	        }
	        System.out.println("인설트::::::::::::::::::::::");
	 
	        adminService.insert_user(adminVO);	//user 정보 인설트
            model.addAttribute("message", "계정발급이 완료되었습니다.");
    		model.addAttribute("retType", ":location");
    		model.addAttribute("retUrl", "/user_list.do");
    		return "pict/main/message";
		}
	}
	@RequestMapping(value = "/logout.do")
	public String logout(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request,  ModelMap model) throws Exception {
		request.getSession().setAttribute("id", null);
		request.getSession().setAttribute("name", null);
		
		return "redirect:/pict_login.do";
		
	}
	
	

    //공지사항
    @RequestMapping(value = "/board/board_list.do")
	public String board_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("board_cnt", totalCnt);
		
		List<?> board_list = pictService.board_list(pictVO);
		model.addAttribute("resultList", board_list);
		model.addAttribute("size", board_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/board/board_list";
	}
	@RequestMapping(value = "/board/board_register.do")
	public String board_register(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
		System.out.println(pictVO.getUser_id());
		if(pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.board_list_one(pictVO);
			pictVO.setSaveType("update");
			
		}
		else {
			pictVO.setSaveType("insert");
		}
		
		model.addAttribute("pictVO", pictVO);
		return "pict/board/board_register";
	}
	@RequestMapping(value = "/board/board_save.do", method = RequestMethod.POST)
	public String board_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam(value="file_1", required=false) MultipartFile attach_file,
			@RequestParam(value="file_2", required=false) MultipartFile attach_file1,
			@RequestParam(value="file_3", required=false) MultipartFile attach_file2) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		 
		if(attach_file != null && attach_file.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setFile_url1(filepath+filename);
		}
		if(attach_file1 != null &&attach_file1.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file1, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setFile_url2(filepath+filename);
		}
		if(attach_file2 != null &&attach_file2.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file2, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setFile_url3(filepath+filename);
		}

		if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.board_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/board/board_list.do");
			return "pict/main/message";
		}
		else {
			pictService.board_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/board/board_list.do");
			return "pict/main/message";	
		}
		
	}	
	@RequestMapping(value = "/board/board_delete.do")
	public String board_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.board_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/board/board_list.do");
		return "pict/main/message";
		
	}


    //로케이션
    @RequestMapping(value = "/location/location_list.do")
	public String location_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.location_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("board_cnt", totalCnt);
		
		List<?> location_list = pictService.location_list(pictVO);
		model.addAttribute("resultList", location_list);
		model.addAttribute("size", location_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/location/location_list";
	}
	@RequestMapping(value = "/location/location_register.do")
	public String location_register(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
		System.out.println(pictVO.getUser_id());
		if(pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.location_list_one(pictVO);
			pictVO.setSaveType("update");
			
		}
		else {
			pictVO.setSaveType("insert");
		}
		
		model.addAttribute("pictVO", pictVO);
		return "pict/location/location_register";
	}
	@RequestMapping(value = "/location/location_save.do", method = RequestMethod.POST)
	public String location_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("attach_file") MultipartFile attach_file,
			@RequestParam("attach_file1") MultipartFile attach_file1,
			@RequestParam("attach_file2") MultipartFile attach_file2,
			@RequestParam("attach_file3") MultipartFile attach_file3) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		 
		if(attach_file.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setImg_thumb(filepath+filename);
		}
		if(attach_file1.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file1, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setImg_url1(filepath+filename);
		}
		if(attach_file2.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file2, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setImg_url2(filepath+filename);
		}
		if(attach_file3.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file3, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setImg_url3(filepath+filename);
		}

		if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.location_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/location/location_list.do");
			return "pict/main/message";
		}
		else {
			pictService.location_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/location/location_list.do");
			return "pict/main/message";	
		}
		
	}	
	@RequestMapping(value = "/location/location_delete.do")
	public String location_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.location_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/location/location_list.do");
		return "pict/main/message";
		
	}
	
	// 산업체
    @RequestMapping(value = "/industry/industry_list.do")
	public String industry_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.industry_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("totalCnt", totalCnt);
		
		List<?> industry_list = pictService.industry_list_in_admin(pictVO);
		model.addAttribute("resultList", industry_list);
		model.addAttribute("size", industry_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/industry/industry_list";
	}
    
	@RequestMapping(value = "/industry/industry_register.do")
	public String industry_register(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
		System.out.println(pictVO.getUser_id());
		if(pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.industry_list_one(pictVO);
			pictVO.setSaveType("update");
			
		}
		else {
			pictVO.setSaveType("insert");
		}
		
		model.addAttribute("pictVO", pictVO);
		return "pict/industry/industry_register";
	}
	@RequestMapping(value = "/industry/industry_save.do", method = RequestMethod.POST)
	public String industry_save(ModelMap model, MultipartHttpServletRequest request) throws Exception {
		PictVO pictVO = new PictVO();
	    pictVO.setTitle(request.getParameter("title"));
	    pictVO.setCeo(request.getParameter("ceo"));
	    pictVO.setCategory(request.getParameter("category"));
	    pictVO.setEstablishment_date(request.getParameter("establishment_date"));
	    pictVO.setTel(request.getParameter("tel"));
	    pictVO.setEmail(request.getParameter("email"));
	    pictVO.setAddress(request.getParameter("address"));
	    pictVO.setIntroduce(request.getParameter("introduce"));
	    pictVO.setCertificate(request.getParameter("certificate"));
	    pictVO.setHomepage_url(request.getParameter("homepage_url"));
	    String idxStr = request.getParameter("idx");
	    if (idxStr != null && !idxStr.isEmpty()) {
	        pictVO.setIdx(Integer.parseInt(idxStr));
	    }
	    StringBuilder categoryBuilder = new StringBuilder();
	    boolean isFirstCategory = true;

	    String[] categories = {
	        request.getParameter("certificate_category1"),
	        request.getParameter("certificate_category2"),
	        request.getParameter("certificate_category3"),
	        request.getParameter("certificate_category4"),
	        request.getParameter("certificate_category5"),
	        request.getParameter("certificate_category6")
	    };

	    for (String category : categories) {
	        if (category != null && !category.trim().isEmpty()) {
	            if (!isFirstCategory) {
	                categoryBuilder.append(",");
	            } else {
	            	isFirstCategory = false;
	            }
	            categoryBuilder.append(category.trim());
	        }
	    }

	    pictVO.setCertificate_category(categoryBuilder.toString());
	    
	    StringBuilder mainSubjectBuilder = new StringBuilder();
	    boolean isFirstSubject = true;

	    String[] subjects = {
	        request.getParameter("main_subject1"),
	        request.getParameter("main_subject2"),
	        request.getParameter("main_subject3"),
	        request.getParameter("main_subject4"),
	        request.getParameter("main_subject5"),
	        request.getParameter("main_subject6")
	    };

	    for (String subject : subjects) {
	        if (subject != null && !subject.trim().isEmpty()) {
	            if (!isFirstSubject) {
	            	mainSubjectBuilder.append(",");
	            } else {
	            	isFirstSubject = false;
	            }
	            mainSubjectBuilder.append(subject.trim());
	        }
	    }

	    pictVO.setMain_subject(mainSubjectBuilder.toString());
	    
	    
	    
		System.out.println("title @@@"+ pictVO.getTitle());
		System.out.println("ceo @@@"+ pictVO.getCeo());
		System.out.println("scale @@@"+ pictVO.getCategory());
		System.out.println("establishment_date @@@"+ pictVO.getEstablishment_date());
		System.out.println("tel @@@"+ pictVO.getTel());
		System.out.println("email @@@"+ pictVO.getEmail());
		System.out.println("address @@@"+ pictVO.getAddress());
		System.out.println("introduce @@@"+ pictVO.getIntroduce());
		System.out.println("certificate @@@"+ pictVO.getCertificate());
		System.out.println("certificate_category @@@"+ pictVO.getCertificate_category());
		System.out.println("main_subject @@@"+ pictVO.getMain_subject());
		System.out.println("homepage_url @@@"+ pictVO.getHomepage_url());
		
	    MultipartFile logoFile = request.getFile("logo_url");
	    MultipartFile mainImgFile = request.getFile("main_img_url");
	    MultipartFile img1File = request.getFile("img_1");
	    MultipartFile img2File = request.getFile("img_2");
	    MultipartFile img3File = request.getFile("img_3");
	    
		String sessions = (String)request.getSession().getAttribute("id");
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		// String filepath = "/Users/choetaeho/Documents/uploads/";
		String filepath = "/user1/upload_file/video_industry/";
		System.out.println("logoFile @@@"+ logoFile.getSize());
		if(logoFile.getSize() != 0) {
			
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, logoFile, (String)request.getSession().getAttribute("id"), uuid);
			
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setLogo_url(filepath+filename);
		}
		if(mainImgFile.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, mainImgFile, (String)request.getSession().getAttribute("id"), uuid);
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setMain_img_url(filepath+filename);
		}
		if(img1File.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, img1File, (String)request.getSession().getAttribute("id"), uuid);
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setImg_url1(filepath+filename);
		}
		if(img2File.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, img2File, (String)request.getSession().getAttribute("id"), uuid);
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setImg_url2(filepath+filename);
		}
		if(img3File.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, img3File, (String)request.getSession().getAttribute("id"), uuid);
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setImg_url3(filepath+filename);
		}
		System.out.println("logo_url @@@"+ pictVO.getLogo_url());
		System.out.println("mainImgFile @@@"+ pictVO.getMain_img_url());
		System.out.println("img_1 @@@"+ pictVO.getImg_url1());
		System.out.println("img_2 @@@"+ pictVO.getImg_url2());
		System.out.println("img_3 @@@"+ pictVO.getImg_url3());

		if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.industry_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/industry/industry_list.do");
			return "pict/main/message";
		}
		else {
			pictService.industry_save(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/industry/industry_list.do");
			return "pict/main/message";	
		}
		
	}	
	
	@RequestMapping(value = "/industry/industry_delete.do")
	public String industry_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.location_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/industry/industry_list.do");
		return "pict/main/message";
	}
	
	@RequestMapping(value = "/industry/file_delete.do")
	public void file_delete(@RequestParam("idx") int idx, 
	                        @RequestParam("columnName") String columnName, 
	                        HttpServletRequest request,
	                        HttpServletResponse response) throws Exception {
	    response.setContentType("application/json;charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    
	    try {
	    	System.out.println("columnName @@@@ " + columnName);
	        // 세션 체크
	        String session = (String)request.getSession().getAttribute("id");
	        if(session == null || session == "null") {
	            out.print("{\"success\": false, \"message\": \"로그인이 필요합니다.\"}");
	            return;
	        }
	        
	        // 유효한 컬럼명인지 확인
	        if (!isValidColumnName(columnName)) {
	            out.print("{\"success\": false, \"message\": \"유효하지 않은 파일 필드입니다.\"}");
	            return;
	        }
	        
	        // 파일 경로 확인 (선택적으로 파일 삭제를 위해)
	        String filePath = pictService.getFilePathByColumn(idx, columnName);
	        
	        // DB 컬럼 업데이트
	        int updateResult = pictService.updateFileColumnToNull(idx, columnName);
	        
	        if (updateResult > 0) {
	            // 실제 파일 삭제 (선택적)
	            if (filePath != null && !filePath.isEmpty()) {
	                File file = new File(filePath);
	                if (file.exists()) {
	                    file.delete();
	                }
	            }
	            
	            out.print("{\"success\": true, \"message\": \"파일이 성공적으로 삭제되었습니다.\"}");
	        } else {
	            out.print("{\"success\": false, \"message\": \"파일 삭제에 실패했습니다. 해당 레코드가 존재하지 않습니다.\"}");
	        }
	    } catch (Exception e) {
	        out.print("{\"success\": false, \"message\": \"파일 삭제 중 오류가 발생했습니다: " + e.getMessage().replace("\"", "\\\"") + "\"}");
	    } finally {
	        if (out != null) {
	            out.close();
	        }
	    }
	}

	/**
	 * 유효한 파일 컬럼명인지 확인
	 */
	private boolean isValidColumnName(String columnName) {
	    return columnName != null && (
	            "logo_url".equals(columnName) ||
	            "main_img_url".equals(columnName) ||
	            "img_1".equals(columnName) ||
	            "img_2".equals(columnName) ||
	            "img_3".equals(columnName)
	    );
	}
	
	
    //영화
    @RequestMapping(value = "/movie/movie_list.do")
	public String movie_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.movie_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("movie_cnt", totalCnt);
		
		List<?> movie_list = pictService.movie_admin_list(pictVO);
		model.addAttribute("resultList", movie_list);
		model.addAttribute("size", movie_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/movie/movie_list";
	}
	@RequestMapping(value = "/movie/movie_register.do")
	public String movie_register(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		if(pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.movie_list_one(pictVO);
			pictVO.setSaveType("update");
			Optional.ofNullable(pictVO.getImg_thumb()).ifPresent(pictVO::saveFileNameToImgThumb);

		}
		else {
			pictVO.setSaveType("insert");
		}
		pictVO.setType("movie");
		List<?> location_list = pictService.location_list(pictVO);
		model.addAttribute("resultList", location_list);
		
		model.addAttribute("pictVO", pictVO);
		return "pict/movie/movie_register";
	}
	@RequestMapping(value = "/movie/movie_save.do", method = RequestMethod.POST)
	public String movie_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("attach_file") MultipartFile attach_file) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		 
		if(attach_file.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file, (String)request.getSession().getAttribute("id"), uuid);
			System.out.println("uploadPath @@@@@@@"+ uploadPath);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			System.out.println("filename @@@@@@@@"+ filename);
			pictVO.setImg_thumb(filepath+filename);
		}

		if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.movie_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/movie/movie_list.do");
			return "pict/main/message";
		}
		else {
			pictService.movie_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/movie/movie_list.do");
			return "pict/main/message";	
		}
		
	}	
	@RequestMapping(value = "/movie/movie_delete.do")
	public String movie_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.movie_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/movie/movie_list.do");
		return "pict/main/message";
		
	}
	
	@RequestMapping(value = "/movie/movie_file_delete.do")
	public String video_file_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model,
			HttpServletRequest request) throws Exception {
		String session = (String) request.getSession().getAttribute("id");
		if (session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		int idx = pictVO.getIdx();
		
		pictVO = pictService.movie_list_one(pictVO);
		pictVO.setImg_thumb(null);
		
		pictService.movie_file_delete(pictVO);

		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/movie/movie_register.do?idx=" + idx);
		return "pict/main/message";

	}

	
	//지원사업
    @RequestMapping(value = "/support/support_list.do")
	public String support_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.support_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("support_cnt", totalCnt);
		
		List<?> support_list = pictService.support_list(pictVO);
		model.addAttribute("resultList", support_list);
		model.addAttribute("size", support_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/support/support_list";
	}
	@RequestMapping(value = "/support/support_register.do")
	public String support_register(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		if(pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.support_list_one(pictVO);
			pictVO.setSaveType("update");
			
		}
		else {
			pictVO.setSaveType("insert");
		}
		
		model.addAttribute("pictVO", pictVO);
		return "pict/support/support_register";
	}
	@RequestMapping(value = "/support/support_save.do", method = RequestMethod.POST)
	public String support_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("attach_file") MultipartFile attach_file) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		 
		if(attach_file.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file, (String)request.getSession().getAttribute("id"), uuid);
			String filepath = "/user1/upload_file/video_industry/";
			String filename = uuid+uploadPath.split("#####")[1];
			pictVO.setFile_url1(filepath+filename);
		}

		if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.support_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/support/support_list.do");
			return "pict/main/message";
		}
		else {
			pictService.support_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/support/support_list.do");
			return "pict/main/message";	
		}
		
	}	
	@RequestMapping(value = "/support/support_delete.do")
	public String support_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.support_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/support/support_list.do");
		return "pict/main/message";
		
	}
	@RequestMapping(value = "/location/location_cng.do")
	public String location_cng(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.location_support_cng(pictVO);
		
		model.addAttribute("message", "정상적으로 상태값이 변경되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/location/location_apply_list.do");
		return "pict/main/message";
		
	}
	@RequestMapping(value = "/support/support_cng.do")
	public String support_cng(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.location_support_cng(pictVO);
		
		model.addAttribute("message", "정상적으로 상태값이 변경되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/support/support_apply_list.do");
		return "pict/main/message";
		
	}
	
	@RequestMapping(value = "/support/support_apply_list.do")
	public String support_apply_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.support_apply_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		model.addAttribute("support_cnt", totalCnt);
		
		List<?> support_list = pictService.support_apply_list(pictVO);
		model.addAttribute("resultList", support_list);
		model.addAttribute("size", support_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/support/support_apply_list";
	}
	
	
	// 팝업리스트
	@RequestMapping(value = "/popup/popup_list.do")
	public String popup_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request)
			throws Exception {
		String session = (String) request.getSession().getAttribute("id");
		if (session == null || session == "null") {
			return "redirect:/pict_login.do";
		}

		int limitNumber = 20;
		pictVO.setLimit_cnt(limitNumber);
		// 전체 데이터 수 조회
		Integer totalCnt = pictService.get_popup_total_cnt(pictVO);
		
		// 현재 페이지 번호 설정
		Integer pageNum = pictVO.getPageNumber();
		if (pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		// 마지막 페이지 계산 수정 (10이 아닌 limitNumber로 나눔)
		int lastPageValue = (int) Math.ceil((double)totalCnt / limitNumber);
		pictVO.setLastPage(lastPageValue);
		int[] pageRange = calculatePageRange(pageNum, limitNumber, totalCnt);
		pictVO.setStartPage(pageRange[0]);
		pictVO.setEndPage(pageRange[1]);

		pictVO.setIsOnlyAvailable(false);
		List<?> popup_list = pictService.get_popup_list(pictVO);
		model.addAttribute("resultList", popup_list);
		model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("size", popup_list.size());
		model.addAttribute("pictVO", pictVO);

		return "pict/popup/popup_list";
	}
	
	@RequestMapping(value = "/popup/popup_delete.do")
	public String popup_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request)
			throws Exception {
		String session = (String) request.getSession().getAttribute("id");
		if (session == null || session == "null") {
			return "redirect:/pict_login.do";
		}

		pictService.popup_delete(pictVO);

		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/popup/popup_list.do");
		return "pict/main/message";
	}
	
	
	@RequestMapping(value = "/popup/popup_form.do")
	public String popup_form(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request)
			throws Exception {
		String session = (String) request.getSession().getAttribute("id");
		if (session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
		if (pictVO.getIdx() != 0) {
			// 수정
			pictVO = pictService.popup_list_one(pictVO);
			pictVO.setFile(pictVO.getImage_url().substring(pictVO.getImage_url().lastIndexOf("/")+1));
			pictVO.setSaveType("update");

		} else {
			pictVO.setSaveType("insert");
		}

		model.addAttribute("pictVO", pictVO);
		return "pict/popup/popup_form";
	}
		
	@RequestMapping(value = "/popup/popup_save.do", method = RequestMethod.POST)
	public String popup_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model,
			MultipartHttpServletRequest request, @RequestParam("attach_file") MultipartFile attach_file)
			throws Exception {
		String sessions = (String) request.getSession().getAttribute("id");
		if (sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}

		if (attach_file.getSize() != 0) {
			UUID uuid = UUID.randomUUID();
			String uploadPath = fileUpload_board(request, attach_file, (String) request.getSession().getAttribute("id"),
					uuid);
			String filepath = "/user1/upload_file/video_industry/";
			// String filepath = "D:\\user1\\upload_file\\billconcert\\";
			String filename = uuid + uploadPath.split("#####")[1];

			pictVO.setImage_url(filepath + filename);
		}

		if (pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.popup_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/popup/popup_list.do");
			return "pict/main/message";
		} else {
			pictService.popup_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/popup/popup_list.do");
			return "pict/main/message";
		}
	}
	
		
		
	/**
	 * 현재 페이지를 기준으로 페이지 범위를 계산하는 메서드
	 * 
	 * @param currentPage 현재 페이지 번호
	 * @param limit 페이지당 항목 수
	 * @param totalCnt 전체 항목 수
	 * @return int[] - [0]: 시작 페이지(s_page), [1]: 끝 페이지(e_page)
	 */
	public static int[] calculatePageRange(int currentPage, int limit, int totalCnt) {
	    // 현재 페이지가 0이하인 경우 1로 설정
	    if (currentPage <= 0) {
	        currentPage = 1;
	    }
	    
	    // 마지막 페이지 계산
	    int lastPageValue = (int) Math.ceil(totalCnt * 1.0 / limit);
	    if (lastPageValue < 1) {
	        lastPageValue = 1;
	    }
	    
	    // 시작 페이지와 끝 페이지 계산
	    int s_page = currentPage - 4;
	    int e_page = currentPage + 5;
	    
	    // 시작 페이지가 0 이하인 경우 조정
	    if (s_page <= 0) {
	        s_page = 1;
	        e_page = 10;
	    }
	    
	    // 끝 페이지가 마지막 페이지보다 큰 경우 조정R
	    if (e_page > lastPageValue) {
	        e_page = lastPageValue;
	    }
	    
	    // 시작 페이지가 끝 페이지보다 큰 경우 조정
	    if (s_page > e_page) {
	        s_page = e_page;
	    }
	    
	    return new int[]{s_page, e_page};
	}
	public static String encryptPassword(String password, String id) throws Exception {
		if (password == null) return "";
		if (id == null) return ""; // KISA 보안약점 조치 (2018-12-11, 신용호)
		byte[] hashValue = null; // 해쉬값
	
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.reset();
		md.update(id.getBytes());
		hashValue = md.digest(password.getBytes());
	
		return new String(Base64.encodeBase64(hashValue));
    }
	
	
	//이메일발송
  	public void mailsend(String subejct, String body, String email) throws Exception{
  		String host = "smtp.naver.com";
		String user = "gica_@naver.com";
		String password = "wlsgmddnjs-24";
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 465);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true"); 
		props.put("mail.smtp.ssl.trust", "smtp.naver.com");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.setSubject(subejct);
			message.setText(body);
			Transport.send(message);
			System.out.println("Success Message Send");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
  	} 
  	
  	//문자
    @RequestMapping(value = "/sms_test.do")
	public String sms_test(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {

    	model.addAttribute("msg", "안녕하세요 테스트 문자입니다.");
		model.addAttribute("mobile", "01055516393");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/");
		
    	return "pict/main/message_sms";
    }
    
	
	
	//파일업로드 메소드
    public String fileUpload(MultipartHttpServletRequest request, MultipartFile uploadFile, String target) {
    	String path = "";
    	String fileName = "";
    	OutputStream out = null;
    	PrintWriter printWriter = null;
    	long fileSize = uploadFile.getSize();
    	try {
    		fileName = uploadFile.getOriginalFilename();
    		byte[] bytes = uploadFile.getBytes();
    		
			path = getSaveLocation(request, uploadFile);
    		
    		
    		File file = new File(path);
    		if(fileName != null && !fileName.equals("")) {
    			if(file.exists()) {
    				file = new File(path + fileName);
    			}
    		}
    		out = new FileOutputStream(file);
    		out.write(bytes);
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return path + "#####" + fileName;
    }
    
    public String fileUpload_board(MultipartHttpServletRequest request, MultipartFile uploadFile, String target, UUID uuid) {
    	String path = "";
    	String fileName = "";
    	OutputStream out = null;
    	PrintWriter printWriter = null;
    	long fileSize = uploadFile.getSize();
    	try {
    		fileName = uploadFile.getOriginalFilename();
    		byte[] bytes = uploadFile.getBytes();
    		
			path = getSaveLocation(request, uploadFile);
    		
    		
    		File file = new File(path);
    		if(fileName != null && !fileName.equals("")) {
    			if(file.exists()) {
    				file = new File(path +uuid+ fileName);
    			}
    		}
    		out = new FileOutputStream(file);
    		out.write(bytes);
    	
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return path + "#####" + fileName;
    }
    
    private String getSaveLocation(MultipartHttpServletRequest request, MultipartFile uploadFile) {
    	String uploadPath = "/user1/upload_file/video_industry/";
    	//String uploadPath = "/Users/choetaeho/Documents/uploads/";
    	//String uploadPath = "D:\\user1\\upload_file\\video_industry\\";
    	return uploadPath;
    }

    private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}
    
    
    
}
