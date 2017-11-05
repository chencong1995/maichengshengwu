package qt.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import qt.pojo.Customer;

public interface HtCustomerService {
	public List<Customer> selectAll();

	public Customer selectById(int id);

	public void insertCustomer(Customer customer);

	public Customer selectByName(String imagename);

	public void deleteById(int id);

	public void updateCus(Customer customer);

	public void updateStatusById(int id, int status);

	public List<Customer> selectByStatus();
	

	/** 
     * 分页显示商品 
     * @param request 
     * @param model 
     * @param loginUserId 
	 * @return 
     */  
    public List<Customer> selectCustomerByPage(Integer startPos,Integer pageSize); 
    public long getCustomerCount();
}
