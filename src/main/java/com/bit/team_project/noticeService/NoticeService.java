package com.bit.team_project.noticeService;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bit.team_project.DTO.NoticeDTO;
import com.bit.team_project.DTO.QnaDTO;


@Service
public interface NoticeService {
	public List<NoticeDTO> getNoticeList();

	public void noticeWrite(NoticeDTO noticeDTO);

	public NoticeDTO noticeDetail(int no_seq);

	public void noticeUpdate(NoticeDTO noticeDTO);
	
	public void noticeDelete(int no_seq);
	
	public int count();
	
	public List<NoticeDTO> noticePage(int displayPost, int postNum);
	
	//qna
	public List<QnaDTO> qnaList();

	public void qnaWrite(QnaDTO qnaDTO);
	public QnaDTO qnaDetail(int qna_seq);
}