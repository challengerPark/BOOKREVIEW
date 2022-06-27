package com.eco.test.list;

import java.util.HashMap;
import java.util.List;

import com.eco.test.member.MemberVo;


public interface ListDao {

	List<ListVo> getClassReviews(MemberVo member);

	int listCount(HashMap<String, Integer> map);

	List<ListVo> studentList(HashMap<String, Integer> map);

	int getReviewCntT(ListVo listTest);

	List<ListVo> getReviewListT(HashMap<String, Integer> map);
	
	ListVo teacherDetail(int reviewNo);

	int teacherUpdate(HashMap<String, Integer> map);


}
