package fourth.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import fourth.bean.ExamBean;
import fourth.bean.ExamQuesBean;
import fourth.bean.ExamReserve;
import fourth.bean.MemberBean;
import fourth.dao.ExamDaoInterface;
import fourth.dao.ExamReserveRepository;
import fourth.service.ExamMyMemService;
import fourth.service.ExamService;
import fourth.service.ExamTestService;
import fourth.util.ExamUtil;


//	/ExamMainView
@Controller
@SessionAttributes(names = {"testMap","user"})
public class ExamMyMemController {
	
	@Autowired
	private ExamMyMemService examMyMemService;
	
	@GetMapping("/ExamMyMemController")
	public String entrance(Model m,HttpServletRequest request) {
		
		String nextPage = "ExamMyMem";
		
		return nextPage;
	}
	
	
	@PostMapping("/ExamMyMemSe")
	@ResponseBody
	public List<ExamReserve> processAction(
			//考試相關(queryAll的參數)
			@RequestParam(defaultValue = "") String quSubject,@RequestParam(defaultValue = "") String quEducation) {
		
		
		List<ExamReserve> ExamReserves= new ArrayList<ExamReserve>();
		
		
		ExamReserves = examMyMemService.selectAll();

		
		return ExamReserves;
	};
	
}	
