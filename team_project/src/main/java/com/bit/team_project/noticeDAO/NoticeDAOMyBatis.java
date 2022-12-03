package com.bit.team_project.noticeDAO;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bit.team_project.DTO.NoticeDTO;
import com.bit.team_project.DTO.QnaDTO;



@Repository
@Transactional
public class NoticeDAOMyBatis implements NoticeDAO {
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List<NoticeDTO> getNoticeList(){
		
		return sqlSession.selectList("noticeSQL.getNoticeList");
	}
	@Override
	public void noticeWrite(NoticeDTO noticeDTO) {
		sqlSession.insert("noticeSQL.noticeWrite",noticeDTO);
	}
	@Override
	public NoticeDTO noticeDetail(int no_seq) {		
		return sqlSession.selectOne("noticeSQL.noticeDetail",no_seq);
	}
	@Override
	public void updateHit(int no_seq) {
		sqlSession.update("noticeSQL.updateHit",no_seq);
		
	}
	@Override
	public void noticeUpdate(NoticeDTO noticeDTO) {
		sqlSession.update("noticeSQL.noticeUpdate",noticeDTO);		
	}
	
	public void noticeDelete(int no_seq) {
		sqlSession.delete("noticeSQL.noticeDelete",no_seq);
	}
	public int count() {
		return sqlSession.selectOne("noticeSQL.count");
	}
	@Override
	public List<NoticeDTO> noticePage(int displayPost, int postNum) {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost",displayPost);
		data.put("postNum",postNum);
		
		System.out.println((displayPost+1) + ", " + (displayPost+postNum));
		
		List<NoticeDTO> list =  sqlSession.selectList("noticeSQL.noticePage" ,data);
		System.out.println(list.get(0).getNo_seq());
		return list;
	}
	
	
	//qna
	@Override
	public List<QnaDTO> qnaList() {
		return sqlSession.selectList("noticeSQL.qnaList");
	}
	
	@Override
	public void qnaWrite(QnaDTO qnaDTO) {
		sqlSession.insert("noticeSQL.qnaWrite",qnaDTO);		
	}
	@Override
	public QnaDTO qnaDetail(int qna_seq) {
		
		return sqlSession.selectOne("noticeSQL.qnaDetail",qna_seq);
	}
	
	
	

}

