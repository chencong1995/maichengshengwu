package qt.pojo;

import java.io.Serializable;

public class IndexEntity implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String imagename;
	private String imageurl;
	private String imagemsg;
	private String title;
	private String context;
	private int type;
	private String updatetime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImagename() {
		return imagename;
	}
	public void setImagename(String imagename) {
		this.imagename = imagename;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	public String getImagemsg() {
		return imagemsg;
	}
	public void setImagemsg(String imagemsg) {
		this.imagemsg = imagemsg;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}
	
	
}
