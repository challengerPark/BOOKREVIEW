package com.eco.test.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.eco.test.list.PageVo;


@Repository
public class NoticeDaoImpl implements NoticeDao{

	@Override
	public int insertNotice(NoticeVo nv, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("noticeMapper.insertNotice",nv);
	}

	@Override
	public int listCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.listCount");
	}

	@Override
	public List<NoticeVo> selectNoticeList(PageVo pv, SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("noticeMapper.selectNoticeList", pv);
	}

	@Override
	public NoticeVo selectNotice(int noticeNo , SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.selectNotice",noticeNo);
	}

	@Override
	public int deleteNotice(int noticeNo, SqlSessionTemplate sqlSession) {
		return sqlSession.delete("noticeMapper.deleteNotice", noticeNo);
	}
	
	
}
