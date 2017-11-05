package qt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.mapper.HtIndexMapper;
import qt.pojo.IndexEntity;
import qt.service.HtIndexService;

@Service
@Transactional
public class HtIndexServiceImpl implements HtIndexService {
	@Resource
	private HtIndexMapper htIndexMapper;

	@Override
	public void edit_banaer_image(String filePath, int id) {
		htIndexMapper.edit_banaer_image(filePath, id);
	}

	public List<IndexEntity> sel_index_bytype(int type) {
		return htIndexMapper.sel_index_bytype(type);
	}

	public void edit_favicon_image(String favicon_msg, String filePath) {
		htIndexMapper.edit_favicon_image(favicon_msg, filePath);
	}

	public void edit_logo_image(String redirectUrl, String filePath) {
		htIndexMapper.edit_logo_image(redirectUrl, filePath);
	}


	@Override
	public void edit_service(IndexEntity indexEntity) {
		htIndexMapper.edit_service(indexEntity);
		
	}

	@Override
	public void edit_advantage(String title, String context, int id) {
		htIndexMapper.edit_advantage(title, context, id);
	}

	public void add_index(IndexEntity indexEntity) {
		htIndexMapper.add_index(indexEntity);
	}


	public int del_index(int id) {
		return htIndexMapper.del_index(id);
	}

	public IndexEntity sel_index_byId(int id) {
		return htIndexMapper.sel_index_byId(id);
	}

}
