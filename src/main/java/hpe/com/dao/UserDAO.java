package hpe.com.dao;

import java.util.List;

import hpe.com.model.User;






public interface UserDAO {
 
    /**
     * 添加新用户
     * @param user
     * @return
     */
    public int insertUser(User user);
     
    public List<User> selectAllUsers();
    
    public User selectUsersById(int uid);
    
    public int updateUser(User user);
    
    public int delUser(int uid);
}
