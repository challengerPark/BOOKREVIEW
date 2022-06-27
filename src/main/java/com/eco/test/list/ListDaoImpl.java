package com.eco.test.list;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eco.test.member.MemberVo;

@Repository
public class ListDaoImpl implements ListDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ListVo> getClassReviews(MemberVo member) {
		return  sqlSession.selectList("reviewMapper.getClassReviews",member);
	}

	@Override
	public int listCount(HashMap<String, Integer> map) {
		return sqlSession.selectOne("reviewMapper.listCount", map);
	}

	@Override
	public List<ListVo> studentList(HashMap<String, Integer> map) {
		return sqlSession.selectList("reviewMapper.studentList" ,map);
	}

	@Override
	public int getReviewCntT(ListVo listTest) {
		return sqlSession.selectOne("reviewMapper.getReviewCntT",listTest);
	}

	@Override
	public List<ListVo> getReviewListT(HashMap<String, Integer> map) {
		return sqlSession.selectList("reviewMapper.getReviewListT", map);
	}
	
	@Override
	public int teacherUpdate(HashMap<String, Integer> map) {
		return sqlSession.update("reviewMapper.teacherUpdate",map);
	}
	
	@Override
	public ListVo teacherDetail(int reviewNo) {
		return sqlSession.selectOne("reviewMapper.getDetail",reviewNo);
	}

}
