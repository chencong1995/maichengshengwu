package qt.service;

import java.util.List;

import qt.pojo.IndexEntity;


public interface MainService {
	public List<IndexEntity> sel_index_bytype(int type);
	
	public void add_msg(String m_name,String m_email,String m_subject,String m_createtime);
}
