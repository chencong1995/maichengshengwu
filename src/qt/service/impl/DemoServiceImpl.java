package qt.service.impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.mapper.DemoMapper;
import qt.pojo.User;
import qt.service.DemoService;
@Service
@Transactional
public class DemoServiceImpl implements DemoService {
	@Resource
	private DemoMapper demoMapper;

	public void addUser(User user) {
		demoMapper.addUser(user);
	}

}
