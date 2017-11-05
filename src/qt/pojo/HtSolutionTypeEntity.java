package qt.pojo;

import java.io.Serializable;
import java.util.List;

public class HtSolutionTypeEntity implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;

	private String name;

	private String updatetime;

	public List<HtSolutionEntity> htSolution;

	public List<HtSolutionEntity> getHtSolution() {
		return htSolution;
	}

	public void setHtSolution(List<HtSolutionEntity> htSolution) {
		this.htSolution = htSolution;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime == null ? null : updatetime.trim();
	}
}