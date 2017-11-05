package qt.service.impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.mapper.HtMainMapper;
import qt.pojo.User;
import qt.service.HtMainService;
@Service
@Transactional
public class HtMainServiceImpl implements HtMainService {
	@Resource
	private HtMainMapper htmainMapper;

	public User yz_user(User user) {
		return htmainMapper.yz_user(user);
	}

}
