package qt.service;

import java.util.List;
import qt.pojo.IndexEntity;

public interface HtIndexService {

	public List<IndexEntity> sel_index_bytype(int type);

	public void edit_favicon_image(String favicon_msg, String filePath);

	public void edit_logo_image(String redirectUrl, String filePath);

	public void edit_banaer_image(String filePath, int id);

	public void edit_service(IndexEntity indexEntity);
	
	public void edit_advantage(String title, String context,int id);

	public void add_index(IndexEntity indexEntity);
	
	public int del_index(int id);
	
	public IndexEntity sel_index_byId(int id);
}
