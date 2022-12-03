package com.bit.team_project.noticeService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.team_project.DTO.NoticeDTO;
import com.bit.team_project.DTO.QnaDTO;
import com.bit.team_project.noticeDAO.NoticeDAO;



@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public List<NoticeDTO> getNoticeList() {
		
		return noticeDAO.getNoticeList();
	}

	@Override
	public void noticeWrite(NoticeDTO noticeDTO) {

		noticeDAO.noticeWrite(noticeDTO);
	}

	@Override
	public NoticeDTO noticeDetail(int no_seq) {
		noticeDAO.updateHit(no_seq);		
		return noticeDAO.noticeDetail(no_seq);
	}

	@Override
	public void noticeUpdate(NoticeDTO noticeDTO) {
		
		noticeDAO.noticeUpdate(noticeDTO);
	}

	@Override
	public void noticeDelete(int no_seq) {
		noticeDAO.noticeDelete(no_seq);
		
	}

	@Override
	public int count() {
		
		return noticeDAO.count();
	}

	@Override
	public List<NoticeDTO> noticePage(int displayPost, int postNum) {
		
		return noticeDAO.noticePage(displayPost, postNum);
	}
	
	
	/* qna */
	@Override
	public List<QnaDTO> qnaList() {
		return noticeDAO.qnaList();
	}
	@Override
	public void qnaWrite(QnaDTO qnaDTO) {
		noticeDAO.qnaWrite(qnaDTO);
		
		
		
	}

	@Override
	public QnaDTO qnaDetail(int qna_seq) {
		
		noticeDAO.qnaDetail(qna_seq);
		return noticeDAO.qnaDetail(qna_seq);
	}

}