package qt.service;

import java.util.List;

import qt.pojo.MessageEntity;

public interface HtMessageService {
	public List<MessageEntity> selectAllPlm();

	public void updateById(Integer id);

}
