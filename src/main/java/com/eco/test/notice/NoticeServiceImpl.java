package com.eco.test.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eco.test.list.PageVo;
import com.eco.test.review.ReviewVo;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDao noticeDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertNotice(NoticeVo nv) {
		return noticeDao.insertNotice(nv,sqlSession);
	}

	@Override
	public int listCount() {
		return noticeDao.listCount(sqlSession);
	}

	@Override
	public List<NoticeVo> selectNoticeList(PageVo pv) {
		return noticeDao.selectNoticeList(pv, sqlSession);
	}

	@Override
	public NoticeVo selectNotice(int noticeNo) {
		return noticeDao.selectNotice(noticeNo,sqlSession);
	}

	@Override
	public int deleteNotice(int noticeNo) {
		return noticeDao.deleteNotice(noticeNo, sqlSession);
	}
	

}
