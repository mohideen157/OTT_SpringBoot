package com.queenprime.api.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "entities")
public class Entities {
    @Id
    @GeneratedValue
    private Integer id;
    private String name;
    private String thumbnail;
	private String posterimg;
    private String preview;
    private String categoryId;
    private Integer isactive;


    @OneToMany(targetEntity = Video.class,cascade = CascadeType.ALL)
    @JoinColumn(name="entityId", referencedColumnName = "id")
    private List<Video> video;

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
		this.name = name;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getPosterimg() {
		return posterimg;
	}

	public void setPosterimg(String posterimg) {
		this.posterimg = posterimg;
	}

	public String getPreview() {
		return preview;
	}

	public void setPreview(String preview) {
		this.preview = preview;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public List<Video> getVideo() {
		return video;
	}

	public void setVideo(List<Video> video) {
		this.video = video;
	}

	public Integer getIsactive() {
		return isactive;
	}

	public void setIsactive(Integer isactive) {
		this.isactive = isactive;
	}
    
    

}
