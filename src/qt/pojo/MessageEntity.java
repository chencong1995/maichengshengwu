package qt.pojo;

import java.io.Serializable;

public class MessageEntity implements Serializable {
	public MessageEntity(){
		
	}

	private static final long serialVersionUID = 1L;

	private Integer m_id;

	private String m_name;

	private String m_email;

	private String m_subject;

	private String m_message;

	private Integer m_status;

	private String m_htime;

	private Integer m_huser;

	private String m_createtime;

	public Integer getM_id() {
		return m_id;
	}

	public void setM_id(Integer m_id) {
		this.m_id = m_id;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_subject() {
		return m_subject;
	}

	public void setM_subject(String m_subject) {
		this.m_subject = m_subject;
	}

	public String getM_message() {
		return m_message;
	}

	public void setM_message(String m_message) {
		this.m_message = m_message;
	}

	public Integer getM_status() {
		return m_status;
	}

	public void setM_status(Integer m_status) {
		this.m_status = m_status;
	}

	public String getM_htime() {
		return m_htime;
	}

	public void setM_htime(String m_htime) {
		this.m_htime = m_htime;
	}

	public Integer getM_huser() {
		return m_huser;
	}

	public void setM_huser(Integer m_huser) {
		this.m_huser = m_huser;
	}

	public String getM_createtime() {
		return m_createtime;
	}

	public void setM_createtime(String m_createtime) {
		this.m_createtime = m_createtime;
	}

}