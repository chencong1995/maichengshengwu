package qt.service;

import java.util.List;

import qt.pojo.HtProductEntity;
import qt.pojo.HtProductServiceEntity;
import qt.pojo.HtProductTypeEntity;

public interface HtProductService {
	/**
	 * 服务
	 * 
	 * @return
	 */
	public List<HtProductServiceEntity> selectAll();

	public HtProductServiceEntity selectById(Integer id);

	public void deleteById(Integer id);

	public void updateService(HtProductServiceEntity htProduct);

	/**
	 * 类别
	 * 
	 * @param typeName
	 * @return
	 */

	public List<HtProductTypeEntity> selectAllPdtp();

	public boolean selectByTypeName(String typeName);

	public void addProductType(HtProductTypeEntity htProductTypeEntity);

	public void deleteTypeById(Integer id);

	/**
	 * 产品
	 */

	public List<HtProductEntity> selectAllPd();

	public List<HtProductEntity> selectByType(Integer typeId);

	public void addpdt(HtProductEntity htProductEntity);

	public boolean selectByTitle(String title);

	public void deletePdtById(Integer id);
}
