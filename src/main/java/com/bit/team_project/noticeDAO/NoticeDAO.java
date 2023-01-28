package com.bit.team_project.noticeDAO;
import java.util.List;


import org.springframework.stereotype.Repository;

import com.bit.team_project.DTO.NoticeDTO;
import com.bit.team_project.DTO.QnaDTO;


@Repository
public interface NoticeDAO {

		
	public List<NoticeDTO> getNoticeList();

	public void noticeWrite(NoticeDTO noticeDTO);

	public NoticeDTO noticeDetail(int no_seq);

	public void updateHit(int no_seq);
	
	public void noticeUpdate(NoticeDTO noticeDTO);
	
	public void noticeDelete(int no_seq);
	
	public int count();
	
	public List<NoticeDTO> noticePage(int displayPost,int postNum);
	
	//qna
	public void qnaWrite(QnaDTO qnaDTO);
	public List<QnaDTO> qnaList();
	public QnaDTO qnaDetail(int qna_seq);
	
}
