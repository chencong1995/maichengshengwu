package qt.service;


import java.util.List;

import qt.pojo.HtAboutUsEntity;

public interface HtAboutUsService {
	
	public List<HtAboutUsEntity> selectByType(Integer type);

	public void updateById(HtAboutUsEntity htAboutUsEntity);
	
	public void insertNews(HtAboutUsEntity htAboutUsEntity);
	
	public void deleteNewsById(Integer id);

	public boolean selectByTitle(String title);
	
	public HtAboutUsEntity selectNewsById(Integer id);
}
