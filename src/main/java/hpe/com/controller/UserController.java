package hpe.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hpe.com.model.User;
import hpe.com.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("userIndex")
	public String userIndex(ModelMap model) {
		List<User> usetList = userService.selectAllUsers();
		model.addAttribute("usetList", usetList);
		return "user/userIndex";
	}

	@RequestMapping(value = "userUpd", method = RequestMethod.GET)
	public String userUpd(int uid, Model model) {
		User user = userService.selectUsersById(uid);
		model.addAttribute("user", user);
		return "user/userUpd";
	}

	@RequestMapping(value = "doUserUpd", method = RequestMethod.POST)
	public String UserUpd(User user) {
		userService.updateUser(user);
		return "redirect:/user/userIndex.do";
	}

	@RequestMapping("userAdd")
	public String userAdd(ModelMap model) {
		return "user/userAdd";
	}

	@RequestMapping(value = "doUserAdd", method = RequestMethod.POST)
	public String doUserAdd(User user) {
		userService.insertUser(user);
		return "redirect:/user/userIndex.do";
	}
	
	@RequestMapping(value = "userDel", method = RequestMethod.GET)
	public String userDel(int uid, Model model) {
		userService.delUser(uid);
		return "redirect:/user/userIndex.do";
	}
}
