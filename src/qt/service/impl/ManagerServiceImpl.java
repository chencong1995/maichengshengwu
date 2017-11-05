package qt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.form.IndexForm;
import qt.mapper.ManagerMapper;
import qt.pojo.User;
import qt.service.ManagerService;

@Service
@Transactional
public class ManagerServiceImpl implements ManagerService {

	@Resource
	ManagerMapper managerMapper;

	@Override
	public void updateById(IndexForm form) {
		managerMapper.updateById(form);

	}

	@Override
	public void updateStatusById(IndexForm form) {
		managerMapper.updateStatusById(form);
	}

	@Override
	public User selectByName(String uName) {
		return managerMapper.selectByName(uName);
	}

	@Override
	public void deleteById(Integer id) {
		managerMapper.deleteById(id);

	}

	@Override
	public void insertManager(User record) {
		managerMapper.insertManager(record);
	}

	@Override
	public User selectById(Integer uId) {
		return managerMapper.selectById(uId);
	}

	@Override
	public List<User> selectAll() {
		return managerMapper.selectAll();
	}

}
