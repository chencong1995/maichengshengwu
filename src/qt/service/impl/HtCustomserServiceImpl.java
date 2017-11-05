package qt.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import qt.mapper.HtCustomerMapper;
import qt.pojo.Customer;
import qt.pojo.Page;
import qt.service.HtCustomerService;

@Service
@Transactional
public class HtCustomserServiceImpl implements HtCustomerService {

	@Resource
	HtCustomerMapper htCustomerMapper;

	@Override
	public List<Customer> selectAll() {
		return htCustomerMapper.selectAll();
	}

	@Override
	public Customer selectById(int id) {
		return htCustomerMapper.selectById(id);
	}

	@Override
	public void insertCustomer(Customer customer) {
		htCustomerMapper.insertCustomer(customer);
	}

	@Override
	public Customer selectByName(String imagename) {
		return htCustomerMapper.selectByName(imagename);
	}

	@Override
	public void deleteById(int id) {
		htCustomerMapper.deleteById(id);
	}

	@Override
	public void updateCus(Customer customer) {
		htCustomerMapper.updateCus(customer);
	}

	@Override
	public void updateStatusById(int id, int status) {
		htCustomerMapper.updateStatusById(id, status);
	}

	@Override
	public List<Customer> selectByStatus() {
		return htCustomerMapper.selectByStatus();
	}

	@Override
	public List<Customer> selectCustomerByPage(Integer startPos,Integer pageSize) {
		return htCustomerMapper.selectCustomerByPage(startPos, pageSize);
	}

	@Override
	public long getCustomerCount() {
		return htCustomerMapper.getCustomerCount();
	}

}
