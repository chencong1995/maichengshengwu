package qt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import qt.pojo.Customer;

public interface HtCustomerMapper {

	public List<Customer> selectAll();

	public List<Customer> selectByStatus();

	public Customer selectById(int id);

	public void insertCustomer(Customer customer);

	public Customer selectByName(String imagename);

	public void deleteById(int id);

	public void updateCus(Customer customer);

	public void updateStatusById(@Param("id") int id,
			@Param("status") int status);

	/**
	 * 使用注解方式传入多个参数，用户产品分页，通过登录用户ID查询
	 * 
	 * @param page
	 * @param userId
	 * @return startPos},#{pageSize}
	 */
	public List<Customer> selectCustomerByPage(
			@Param(value = "startPos") Integer startPos,
			@Param(value = "pageSize") Integer pageSize);

	/**
	 * 取得产品数量信息，通过登录用户ID查询
	 * 
	 * @param userId
	 * @return
	 */
	public long getCustomerCount();

}