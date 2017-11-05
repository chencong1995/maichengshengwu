package qt.pojo;

import java.io.Serializable;

public class MenuEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	public int id;
	public String name;
	public String updatetime;
	public int operater;
	public int type;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

	public int getOperater() {
		return operater;
	}

	public void setOperater(int operater) {
		this.operater = operater;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

}
