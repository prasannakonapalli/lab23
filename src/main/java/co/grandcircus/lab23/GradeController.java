package co.grandcircus.lab23;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//import co.grandcircus.jdbcintro.entity.grade;
//import co.grandcircus.jdbcintro.entity.Room;
import co.grandcircus.lab23.Grade;
import co.grandcircus.lab23.GradeDao;

@Controller
public class GradeController {
	@Autowired
	private GradeDao dao;
	@RequestMapping("/")
	public String index() {
		return "redirect:/grades";
	}
	
	@RequestMapping("/grades")
	public String list(Model model) {
		List<Grade> grades = dao.findAll();
		//List<Grade> grades = new ArrayList<Grade>();

		model.addAttribute("grades", grades);
		return "index";
	}
	
	@RequestMapping("/grades/detail")
	public String detail(@RequestParam("id") Long id, Model model) {
		Grade grade = dao.findById(id);
		model.addAttribute("grade", grade);
		return "detail";
	}

	@RequestMapping("/grades/add")
	public String showAdd() {		
		
		return "add";
	}
	
	@PostMapping("/grades/addConfirmation")
	public String submitAdd( Grade grade) {	
		double percent=0;
		percent=(grade.getScore()/grade.getTotal());
		grade.setPercentage(percent);
		dao.create(grade);
//		model.addAttribute("name", grade.getName());
//		model.addAttribute("type", grade.getType());
//		model.addAttribute("score", grade.getScore());
//		model.addAttribute("total", grade.getTotal());
		//return "redirect:/grades/addConfirmation?name=" +grade.getName() + "&type="+ grade.getType() + "&score="+grade.getScore()+"&total="+grade.getTotal();
		return "addConfirmation";
		//return "redirect:/rooms/detail?id=" + id;
	}
	
	@RequestMapping("/grades/addConfirmation")
	public String showAddConfirmation(Grade grade,Model model ) {	 
		model.addAttribute("grade", grade); 
		return "addConfirmation";
	}
	
//	@PostMapping("/grades/addConfirmation")
//	public String showAddConfirmation(Grade grade) {	
//		dao.create(grade);
//		return "redirect:/grades";
//	}
	
	@RequestMapping("/grades/delete")
	public String remove(@RequestParam("id") Long id) {
		dao.delete(id);
		return "redirect:/grades";
	}
	
	@RequestMapping("/grades/deleteConfirmation")
	public String deleteConfirmation(@RequestParam("id") Long id, Model model) {

		Grade grade = dao.findById(id);
		model.addAttribute("grade", grade);
		return "deleteConfirmation";
	}


}
