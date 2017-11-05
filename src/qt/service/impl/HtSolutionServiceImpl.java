package qt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.mapper.HtSolutionEntityMapper;
import qt.pojo.HtSolutionEntity;
import qt.pojo.HtSolutionTypeEntity;
import qt.service.HtSolutionService;


@Service
@Transactional
public class HtSolutionServiceImpl implements HtSolutionService{

	
	@Autowired
	HtSolutionEntityMapper htSolutionMapper;
	
	
	@Override
	public List<HtSolutionTypeEntity> selectAllType() {
		return htSolutionMapper.selectAllType();
	}


	
	
	@Override
	public boolean selectTypeByName(String name) {
		boolean flag=true;
		HtSolutionTypeEntity htSolutionTypeEntity=htSolutionMapper.selectTypeByName(name);
		if(null!=htSolutionTypeEntity){
			flag=false;
		}
		return flag;
	}




	@Override
	public void insertSolutionType(HtSolutionTypeEntity htSolutionTypeEntity) {
		htSolutionMapper.insertSolutionType(htSolutionTypeEntity);
		
	}
	
	


	@Override
	public void deleteByTypeId(Integer id) {
		htSolutionMapper.deleteByTypeId(id);
	}




	@Override
	public List<HtSolutionEntity> selectAll(Integer type) {
		return htSolutionMapper.selectAll(type);
	}




	@Override
	public void insertSolution(HtSolutionEntity htSolutionEntity) {
        htSolutionMapper.insertSolution(htSolutionEntity);		
	}




	@Override
	public boolean selectSluByTitle(String title) {
		boolean flag=true;
		if(null!=htSolutionMapper.selectSluByTitle(title)){
			flag=false;
		}
		return flag;
	}




	@Override
	public void deleteById(Integer id) {
		htSolutionMapper.deleteById(id);
	}




	@Override
	public HtSolutionEntity selectById(Integer id) {
		return htSolutionMapper.selectById(id);
	}




	@Override
	public void updateById(HtSolutionEntity htSolutionEntity) {
        htSolutionMapper.updateById(htSolutionEntity);		
	}



}
