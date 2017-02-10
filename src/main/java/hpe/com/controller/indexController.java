package hpe.com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import hpe.com.model.User;
import hpe.com.service.UserService;

@Controller
public class indexController {
	
	@Autowired
    UserService userService;  //Service which will do all data retrieval/manipulation work
 
    
    //-------------------Retrieve All Users--------------------------------------------------------
     
    @RequestMapping(value = "/listUser", method=RequestMethod.GET)
    @ResponseBody
    public List<User> listAllUsers() {
    	System.out.println("listUser>>>>>>>>>>>>>>>>>>");
        List<User> users = userService.selectAllUsers();
        return users;
    }
  
    @RequestMapping(value = "/getUser", method = RequestMethod.POST)
    @ResponseBody
    public User getUser(@RequestBody User user) {
    	System.out.println("Userid>>>>>>>>>>>>>>>>>>"+user.getId());
        User userDetail = userService.selectUsersById(user.getId());
        System.out.println("UserName>>>>>>>>>>>>>>>>>>"+user.getNickname());
        return userDetail;
    }
    
    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    @ResponseBody
    public void updateUser(@RequestBody User user) {
    	System.out.println("update Userid>>>>>>>>>>>>>>>>>>"+user.getId());
        userService.updateUser(user);
    }

	@RequestMapping("/index")
	public String index(ModelMap model,HttpSession session) {
		System.out.println("index");
		//model.addAttribute("userName", "wangwei");
		session.setAttribute("userName", "wangwei");
		return "index/index";
	}
}
