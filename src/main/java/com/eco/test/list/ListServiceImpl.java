package com.eco.test.list;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eco.test.member.MemberVo;

@Service
public class ListServiceImpl implements ListService {
	
	@Autowired
	private ListDao listDao;

	@Override
	public List<ListVo> getClassReviews(MemberVo member) {
		return listDao.getClassReviews(member);
	}

	@Override
	public int listCount(HashMap<String, Integer> map) {
		return listDao.listCount(map);
	}

	@Override
	public List<ListVo> studentList(HashMap<String, Integer> map) {
		return listDao.studentList(map);
	}

	@Override
	public int getReviewCntT(ListVo listTest) {
		
		return listDao.getReviewCntT(listTest);
	}

	@Override
	public List<ListVo> getReviewListT(HashMap<String, Integer> map) {
		return listDao.getReviewListT(map);
	}
	
	@Override
	public int teacherUpdate(HashMap<String, Integer> map) {
		return listDao.teacherUpdate(map);
	}
	
	@Override
	public ListVo teacherDetail(int reviewNo) {
		return listDao.teacherDetail(reviewNo);
	}



}
