package com.eco.test.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.eco.test.list.PageVo;


public interface NoticeDao {
	
	int insertNotice(NoticeVo nv, SqlSessionTemplate sqlSession);

	int listCount(SqlSessionTemplate sqlSession);

	List<NoticeVo> selectNoticeList(PageVo pv, SqlSessionTemplate sqlSession);

	NoticeVo selectNotice(int noticeNo,SqlSessionTemplate sqlSession);

	int deleteNotice(int noticeNo, SqlSessionTemplate sqlSession);

}
