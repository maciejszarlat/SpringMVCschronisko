package pl.schronisko.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.schronisko.dao.AnimalDao;
import pl.schronisko.entity.Animal;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HomeController {

	@Autowired
	private AnimalDao animalDao;

	@GetMapping("/")
	public String home(){
		return "security/login";
	}

	@GetMapping("/admin")
	public String showHome(Model theModel, HttpServletRequest request) {

		List<Animal> theAnimals = animalDao.getAnimal(request);

		theModel.addAttribute("animals", theAnimals);

		return "admin/main/index";
	}


	@GetMapping("/leaders")
	public String showLeaders() {
		
		return "leaders";
	}

	
	@GetMapping("/systems")
	public String showSystems() {
		
		return "systems";
	}
	
}










