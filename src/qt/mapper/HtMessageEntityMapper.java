package qt.mapper;

import java.util.List;

import qt.pojo.MessageEntity;

public interface HtMessageEntityMapper {
	
    public List<MessageEntity> selectAllPlm();
    public void updateById(Integer id);
}