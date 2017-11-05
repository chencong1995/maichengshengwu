package qt.mapper;

import java.util.List;

import qt.form.IndexForm;
import qt.pojo.User;

public interface ManagerMapper {
	public int deleteById(Integer uId);

	// 新增
	public void insertManager(User record);

	// 查询所有管理员
	public List<User> selectAll();

	// 根据id查询
	public User selectById(Integer uId);

	// 根据name查询
	public User selectByName(String uName);

	// 修改密码
	public void updateById(IndexForm form);

	// 修改状态
	public void updateStatusById(IndexForm form);

}