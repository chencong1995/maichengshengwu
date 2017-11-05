package qt.mapper;

import java.util.List;

import qt.pojo.MenuEntity;

public interface MenuMapper {

	public List<MenuEntity> selectAll(Integer type);

	public MenuEntity selectById(Integer id);
	
	public MenuEntity selectByName(String name);
	
	public void updateById(MenuEntity menuEntity);
	
	public MenuEntity selectByType();

}
