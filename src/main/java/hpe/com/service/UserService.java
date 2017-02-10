package hpe.com.service;

import java.util.List;

import hpe.com.model.User;



public interface UserService {
	 
	public List<User> selectAllUsers();
	
    public int insertUser(User user);
    
    public User selectUsersById(int uid);
    
    public int updateUser(User user);
    
    public int delUser(int uid);
}
