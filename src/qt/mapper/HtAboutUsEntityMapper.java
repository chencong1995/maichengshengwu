package qt.mapper;


import java.util.List;

import qt.pojo.HtAboutUsEntity;

public interface HtAboutUsEntityMapper {
	
	public List<HtAboutUsEntity> selectByType(Integer type);

	public void updateById(HtAboutUsEntity htAboutUsEntity);
	
	public void insertNews(HtAboutUsEntity htAboutUsEntity);
	
	public void deleteNewsById(Integer id);
	
	public HtAboutUsEntity selectByTitle(String title);
	
	public HtAboutUsEntity selectNewsById(Integer id);
	
}