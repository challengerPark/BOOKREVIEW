package com.eco.test.notice;

import java.util.List;

import com.eco.test.list.PageVo;

public interface NoticeService {
	
	int insertNotice(NoticeVo nv);

	int listCount();

	List<NoticeVo> selectNoticeList(PageVo pv);

	NoticeVo selectNotice(int noticeNo);

	int deleteNotice(int noticeNo);

}
