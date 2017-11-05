package qt.service.impl;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import qt.mapper.MainMapper;
import qt.pojo.IndexEntity;
import qt.service.MainService;
@Service
@Transactional
public class MainServiceImpl implements MainService {
	@Resource
	private MainMapper mainMapper;
	
	public List<IndexEntity> sel_index_bytype(int type) {
		return mainMapper.sel_index_bytype(type);
	}

	public void add_msg(String m_name, String m_email, String m_subject,
			String m_createtime) {
		mainMapper.add_msg(m_name, m_email, m_subject, m_createtime);
	}

}
