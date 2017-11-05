package qt.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.mapper.HtAboutUsEntityMapper;
import qt.pojo.HtAboutUsEntity;
import qt.service.HtAboutUsService;

@Service
@Transactional
public class HtAboutUsServiceImpl implements HtAboutUsService {

	@Autowired
	HtAboutUsEntityMapper htAboutUsEntityMapper;

	@Override
	public List<HtAboutUsEntity> selectByType(Integer type) {
		return htAboutUsEntityMapper.selectByType(type);
	}



	@Override
	public void updateById(HtAboutUsEntity htAboutUsEntity) {
       htAboutUsEntityMapper.updateById(htAboutUsEntity);		
	}



	@Override
	public void insertNews(HtAboutUsEntity htAboutUsEntity) {
      htAboutUsEntityMapper.insertNews(htAboutUsEntity);		
	}



	@Override
	public void deleteNewsById(Integer id) {
      htAboutUsEntityMapper.deleteNewsById(id);		
	}



	@Override
	public boolean selectByTitle(String title) {
		boolean flag=true;
		if(null!=htAboutUsEntityMapper.selectByTitle(title)){
			flag=false;
		}
		return flag;
	}



	@Override
	public HtAboutUsEntity selectNewsById(Integer id) {
		return htAboutUsEntityMapper.selectNewsById(id);
	}


	

}
