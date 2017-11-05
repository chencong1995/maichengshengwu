package qt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import qt.pojo.IndexEntity;

public interface HtIndexMapper {

	public List<IndexEntity> sel_index_bytype(@Param("type")
	int type);

	public void edit_favicon_image(@Param("favicon_msg")
	String favicon_msg, @Param("filePath")
	String filePath);

	public void edit_logo_image(@Param("redirectUrl")
	String redirectUrl, @Param("filePath")
	String filePath);

	public void edit_banaer_image(@Param("filePath")
	String filePath, @Param("id")
	int id);

	public void edit_service(IndexEntity indexEntity);

	public void edit_advantage(@Param("title")String title, @Param("context")String context, @Param("id")int id);
	
	public void add_index(IndexEntity indexEntity);
	
	public int del_index(@Param("id")int id);
	
	public IndexEntity sel_index_byId(@Param("id")int id);
	
	
}
