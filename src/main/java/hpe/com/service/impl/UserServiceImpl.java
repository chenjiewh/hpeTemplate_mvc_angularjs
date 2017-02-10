package hpe.com.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import hpe.com.dao.UserDAO;
import hpe.com.model.User;
import hpe.com.service.UserService;

@Service
public class UserServiceImpl implements UserService{
 
    @Autowired
    private UserDAO userDAO;
   
    public int insertUser(User user) {
        return userDAO.insertUser(user);
    }

	public List<User> selectAllUsers() {
		return userDAO.selectAllUsers();
	}

	public User selectUsersById(int uid) {
		return userDAO.selectUsersById(uid);
	}

	public int updateUser(User user) {
		return userDAO.updateUser(user);
	}

	public int delUser(int uid) {
		return userDAO.delUser(uid);
	}
 
}
