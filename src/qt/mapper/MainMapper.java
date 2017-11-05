package qt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import qt.pojo.IndexEntity;

public interface MainMapper {
	
	public List<IndexEntity> sel_index_bytype(@Param("type")int type);
	
	public void add_msg(String m_name,String m_email,String m_subject,String m_createtime);
}
