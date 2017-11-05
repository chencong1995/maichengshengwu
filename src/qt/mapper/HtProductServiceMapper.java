package qt.mapper;

import java.util.List;

import qt.pojo.HtProductServiceEntity;

public interface HtProductServiceMapper {
	public List<HtProductServiceEntity> selectAll();

	public HtProductServiceEntity selectById(Integer id);

	public void updateService(HtProductServiceEntity htProduct);
	
	
}