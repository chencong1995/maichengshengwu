package qt.service;

import java.util.List;

import qt.form.IndexForm;
import qt.pojo.User;

public interface ManagerService {

	public List<User> selectAll();

	public User selectById(Integer uId);

	public void insertManager(User record);

	public void deleteById(Integer uId);

	public User selectByName(String uName);

	// 根据id修改
	public void updateById(IndexForm form);

	// 修改状态
	public void updateStatusById(IndexForm form);

}
