package pl.schronisko.controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.schronisko.dao.UserDao;
import pl.schronisko.entity.User;
import pl.schronisko.helpers.CustomerId;
import pl.schronisko.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private UserDao userDao;

    @Autowired
    private UserService userService;

    @Autowired
    private CustomerId customerId;


    @GetMapping("/admin/employee-list")
    public String employeeList(Model theModel, HttpServletRequest request) {
        List<User> theUsers = userService.getUsers(request);
        theModel.addAttribute("users", theUsers);
        theModel.addAttribute("menuItem", "employee-list");

        return "admin/employee/employee-list";
    }

    @GetMapping("/admin/employee-add")
    public String employeeAdd(Model theModel) {

        User theUser = new User();

        theModel.addAttribute("employee", theUser);
        theModel.addAttribute("menuItem", "employee-add");
        return "admin/employee/employee-add";
    }

    @PostMapping("admin/employeeSave")
    public String employeeSave(@RequestParam("email") String email,
                               @Valid @ModelAttribute("employee") User theUser,
                               BindingResult theBindingResult,
                               HttpServletRequest request,
                               Model theModel) {

        theUser.setUserName(email);
        theUser.setCustomerId(customerId.getCustomerId(request));
        theUser.setPassword("$2a$10$vCa1PfgiDviFcIZDMLz62eLGR5Y8mNToUfMoT5usOAwxkKlfdVJq.");
        userService.saveTheUser(theUser);
        return "redirect:/admin/employee-list";

    }

}
