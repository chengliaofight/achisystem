package com.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Achievement;
public interface SlideShowMapper {
	public int insertSlideShow(int achId);
	public int deleteSlideShow(int achId);
	public List<Achievement> selectSlideShow();
	
}
