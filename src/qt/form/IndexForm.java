package qt.form;

import java.io.Serializable;

import util.PageModel;

public class IndexForm extends PageModel implements Serializable{

	private static final long serialVersionUID = 1L;
	private int id;
	private String u_name;
	private int u_id;
	private String old_pwd;
	private String new_pwd;
	private String refer_pwd;
	private int u_status;

	private String business_title;
	private String business_context;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}



	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getOld_pwd() {
		return old_pwd;
	}

	public void setOld_pwd(String old_pwd) {
		this.old_pwd = old_pwd;
	}

	public String getNew_pwd() {
		return new_pwd;
	}

	public void setNew_pwd(String new_pwd) {
		this.new_pwd = new_pwd;
	}

	public String getRefer_pwd() {
		return refer_pwd;
	}

	public void setRefer_pwd(String refer_pwd) {
		this.refer_pwd = refer_pwd;
	}

	public int getU_status() {
		return u_status;
	}

	public void setU_status(int u_status) {
		this.u_status = u_status;
	}

	public String getBusiness_title() {
		return business_title;
	}

	public void setBusiness_title(String business_title) {
		this.business_title = business_title;
	}

	public String getBusiness_context() {
		return business_context;
	}

	public void setBusiness_context(String business_context) {
		this.business_context = business_context;
	}

}
