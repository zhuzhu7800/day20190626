package cn.bdqn.pojo;

public class NeiRong {
	private Integer id;
	private String title;
	private Integer school_id;
	private String author;
	private String time;
	private String neirong;
	private Integer biao_id;
	private String pic;
	
	public Integer getBiao_id() {
		return biao_id;
	}
	public void setBiao_id(Integer biao_id) {
		this.biao_id = biao_id;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getSchool_id() {
		return school_id;
	}
	public void setSchool_id(Integer school_id) {
		this.school_id = school_id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getNeirong() {
		return neirong;
	}
	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}
}
