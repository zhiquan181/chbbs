package com.tuzki.service.impl;

import com.tuzki.dao.INoticeDAO;
import com.tuzki.service.INoticeService;
import com.tuzki.vo.Notice;

public class NoticeService implements INoticeService {
	private INoticeDAO noticeDAO;
	
	public INoticeDAO getNoticeDAO() {
		return noticeDAO;
	}

	public void setNoticeDAO(INoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	@Override
	public Notice NoticeDisplay(String key) {
		// TODO Auto-generated method stub
		return noticeDAO.NoticeDisplay(key);
	}

	@Override
	public Notice NoticeUpdateEdit(String key) {
		// TODO Auto-generated method stub
		return noticeDAO.NoticeUpdateEdit(key);
	}

	@Override
	public int NoticeUpdate(Notice notice,String key) {
		// TODO Auto-generated method stub
		return noticeDAO.NoticeUpdate(notice,key);
	}

}
