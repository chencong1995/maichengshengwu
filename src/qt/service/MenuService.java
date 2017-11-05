package qt.service;

import java.util.List;

import qt.pojo.MenuEntity;

public interface MenuService {
	public List<MenuEntity> selectAll(Integer type);

	public MenuEntity selectById(Integer id);

	public boolean selectByName(String name);
	
	public void updateById(MenuEntity menuEntity);
	
	public MenuEntity selectByType();

}
