package qt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.mapper.HtProductEntityMapper;
import qt.mapper.HtProductServiceMapper;
import qt.pojo.HtProductEntity;
import qt.pojo.HtProductServiceEntity;
import qt.pojo.HtProductTypeEntity;
import qt.service.HtProductService;

@Service
@Transactional
public class HtProductServiceImpl implements HtProductService {
	@Autowired
	HtProductServiceMapper htProductServiceMapper;
	@Autowired
	HtProductEntityMapper htProductMapper;

	/**
	 * 服务
	 * 
	 * @return
	 */
	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub

	}

	public List<HtProductServiceEntity> selectAll() {
		return htProductServiceMapper.selectAll();
	}

	public HtProductServiceEntity selectById(Integer id) {
		return htProductServiceMapper.selectById(id);
	}

	@Override
	public void updateService(HtProductServiceEntity htProduct) {
		htProductServiceMapper.updateService(htProduct);
	}

	/**
	 * 类别
	 */

	@Override
	public List<HtProductTypeEntity> selectAllPdtp() {
		return htProductMapper.selectAllPdtp();
	}

	@Override
	public boolean selectByTypeName(String typeName) {
		if (null != htProductMapper.selectByTypeName(typeName)) {
			return false;
		}
		return true;
	}

	@Override
	public void addProductType(HtProductTypeEntity htProductTypeEntity) {
		htProductMapper.addProductType(htProductTypeEntity);
	}

	@Override
	public void deleteTypeById(Integer id) {
		htProductMapper.deleteTypeById(id);
	}

	

	/**
	 * 产品
	 */

	
	
	@Override
	public List<HtProductEntity> selectByType(Integer typeId) {
		return htProductMapper.selectByType(typeId);
	}

	@Override
	public void addpdt(HtProductEntity htProductEntity) {
        htProductMapper.addpdt(htProductEntity);		
	}

	@Override
	public boolean selectByTitle(String title) {
		boolean flag=true;
		HtProductEntity htProductEntity=htProductMapper.selectByTitle(title);
		if(null!=htProductEntity){
			flag=false;
		}
		return flag;
	}

	@Override
	public void deletePdtById(Integer id) {
		htProductMapper.deletePdtById(id);
		
	}

	@Override
	public List<HtProductEntity> selectAllPd() {
		return htProductMapper.selectAllPd();
	}

	
	
}
