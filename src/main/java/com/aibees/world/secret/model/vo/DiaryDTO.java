package com.aibees.world.secret.model.vo;

public class DiaryDTO {
	private String title;
	private String content;
	private String datetime;
	private String writer;
	
	public DiaryDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public DiaryDTO(String title, String content, String datetime, String writer) {
		super();
		this.title = title;
		this.content = content;
		this.datetime = datetime;
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "DiaryDTO [title=" + title + ", content=" + content + ", datetime=" + datetime + ", writer=" + writer
				+ "]";
	}
	
	
}
