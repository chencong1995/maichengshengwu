package qt.pojo;

import java.io.Serializable;

public class User implements Serializable{
	private int u_id;
	private String u_name;
	private String u_pwd;
	private int u_status;
	private String u_createtime;
	private int u_createUid;
	private String u_createname;
	private String u_updatetime;

	public String getU_updatetime() {
		return u_updatetime;
	}
	public void setU_updatetime(String u_updatetime) {
		this.u_updatetime = u_updatetime;
	}
	public String getU_createname() {
		return u_createname;
	}
	public void setU_createname(String u_createname) {
		this.u_createname = u_createname;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public int getU_status() {
		return u_status;
	}
	public void setU_status(int u_status) {
		this.u_status = u_status;
	}
	public String getU_createtime() {
		return u_createtime;
	}
	public void setU_createtime(String u_createtime) {
		this.u_createtime = u_createtime;
	}
	public int getU_createUid() {
		return u_createUid;
	}
	public void setU_createUid(int u_createUid) {
		this.u_createUid = u_createUid;
	}
	
}
