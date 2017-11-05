package qt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.mapper.MenuMapper;
import qt.pojo.MenuEntity;
import qt.service.MenuService;

@Service
@Transactional
public class MenuServiceImpl implements MenuService {

	@Autowired
	MenuMapper menuMapper;

	@Override
	public List<MenuEntity> selectAll(Integer type) {
		return menuMapper.selectAll(type);
	}

	@Override
	public MenuEntity selectById(Integer id) {
		return menuMapper.selectById(id);
	}

	@Override
	public boolean selectByName(String name) {
		boolean flag = true;
		if (null != menuMapper.selectByName(name)) {
			flag = false;
		}
		return flag;
	}

	@Override
	public void updateById(MenuEntity menuEntity) {
		menuMapper.updateById(menuEntity);
	}

	@Override
	public MenuEntity selectByType() {
		return menuMapper.selectByType();
	}

}
