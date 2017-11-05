package qt.mapper;

import qt.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uId);

    int insert(User record);

    int insertSelective(User record);

    User selectById(Integer uId);
    User selectByName(String uName);
    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}