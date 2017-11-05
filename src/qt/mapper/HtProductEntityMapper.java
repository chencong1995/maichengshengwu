package qt.mapper;

import java.util.List;

import qt.pojo.HtProductEntity;
import qt.pojo.HtProductTypeEntity;

public interface HtProductEntityMapper {

	public List<HtProductTypeEntity> selectAllPdtp();

	public HtProductTypeEntity selectByTypeName(String typeName);

	public void addProductType(HtProductTypeEntity htProductTypeEntity);

	public void deleteTypeById(Integer id);
	
	public List<HtProductEntity> selectAllPd();

	public List<HtProductEntity> selectByType(Integer typeId);

	public void addpdt(HtProductEntity htProductEntity);
	
	public HtProductEntity selectByTitle(String title);
	
	public void deletePdtById(Integer id);

}