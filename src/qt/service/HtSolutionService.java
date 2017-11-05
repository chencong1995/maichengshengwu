package qt.service;

import java.util.List;

import qt.pojo.HtSolutionEntity;
import qt.pojo.HtSolutionTypeEntity;

public interface HtSolutionService {

	public List<HtSolutionTypeEntity> selectAllType();
	
	public void insertSolutionType(HtSolutionTypeEntity htSolutionTypeEntity);
	
	public boolean selectTypeByName(String name);
	
	public void deleteByTypeId(Integer id);

	public List<HtSolutionEntity> selectAll(Integer type);
	
	public void insertSolution(HtSolutionEntity htSolutionEntity);
	
	public boolean selectSluByTitle(String title);
	
	public void deleteById(Integer id);
	
	public HtSolutionEntity selectById(Integer id);
	
	public void updateById(HtSolutionEntity htSolutionEntity);

}
