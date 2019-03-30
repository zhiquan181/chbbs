package com.tuzki.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tuzki.service.INoticeService;
import com.tuzki.vo.Notice;


public class NoticeAction extends ActionSupport{
	private static final long serialVersionUID = 2944421172419242967L;
	protected INoticeService NoticeService;
	private Notice notice;
	
	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public INoticeService getNoticeService() {
		return NoticeService;
	}

	public void setNoticeService(INoticeService noticeService) {
		NoticeService = noticeService;
	}
	
	public String notice(){
		Notice notice = NoticeService.NoticeDisplay("notice");
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("notice",notice);
		//System.out.println(notice);
		return SUCCESS;
	}

	public String noticeDisplay(){
		Notice notice = NoticeService.NoticeDisplay("notice");
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("notice",notice);
		//System.out.println(notice);
		return SUCCESS;
	}
	
	public String noticeUpdateEdit(){
		Notice notice = NoticeService.NoticeUpdateEdit("notice");
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("notice_update",notice);
		//System.out.println(notice);
		return SUCCESS;
	}
	
	public String noticeUpdate(){
		System.out.println(notice.getKeynt());
		int state = NoticeService.NoticeUpdate(notice,"notice");
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
}
