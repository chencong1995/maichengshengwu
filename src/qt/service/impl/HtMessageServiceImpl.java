package qt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qt.mapper.HtMessageEntityMapper;
import qt.pojo.MessageEntity;
import qt.service.HtMessageService;

@Service
@Transactional
public class HtMessageServiceImpl implements HtMessageService {

	@Autowired
	HtMessageEntityMapper messageEntityMapper;
	@Override
	public  List<MessageEntity> selectAllPlm() {
		return messageEntityMapper.selectAllPlm();
	}
	@Override
	public void updateById(Integer id) {
      messageEntityMapper.updateById(id);		
	}

	
}
