package com.tuzki.service;

import com.tuzki.vo.Notice;

public interface INoticeService {
	public Notice NoticeDisplay(String key);
	
	public Notice NoticeUpdateEdit(String key);

	public int NoticeUpdate(Notice notice,String key);
}
