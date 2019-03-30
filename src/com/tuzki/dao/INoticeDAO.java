package com.tuzki.dao;

import com.tuzki.vo.Notice;

public interface INoticeDAO {
	public Notice NoticeDisplay(String key);
	
	public Notice NoticeUpdateEdit(String key);

	public int NoticeUpdate(Notice notice,String key);
}
