package com.bit.team_project.bidDAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bit.team_project.DTO.BidDTO;
@Repository("bidMapper.xml")
@Transactional
public class BidDAOMyBatis implements BidDAO{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public void set(BidDTO bidDTO) {
		Map<String, String> map = new HashMap<String, String>();
		Map<String, String> map2 = new HashMap<String, String>();
		//입찰햇을때 얼마했는지 찾기
		List<BidDTO> bidDTO2 = sqlSession.selectList("bidSQL.findMyEarlyBid",bidDTO);
		
		if(bidDTO2!=null && bidDTO2.get(0).getId()!=null) {
			map2.put("id",bidDTO.getId());
			//바로 이전입찰과 내아이디가 같을때 포인트 다시돌려주기 안하면 포인트 계속나감
			if(bidDTO2.get(0).getId().equals(map2.get("id"))) {
			map.put("bidprice",Integer.toString(bidDTO2.get(0).getBidprice()));
			map.put("id",bidDTO2.get(0).getId());
			sqlSession.update("bidSQL.paybackUserMoney",map);
			}
		}
		sqlSession.insert("bidSQL.setBid",bidDTO);
		//입찰할때 포인트 빼기
		sqlSession.update("bidSQL.updateUserMoney",bidDTO);
	}
	@Override
	public void bidSetHigh(Map<String, String>map) {
		sqlSession.update("bidSQL.bidSetHigh",map);
		 List<BidDTO> bidDTO2 = sqlSession.selectList("bidSQL.findEarlyGetter",map); 
		 if(bidDTO2.size()>1 &&  bidDTO2.get(0).getId()!=null) {
			 //최고가 갱신됬을때 이전입찰자한테 포인트돌려주기
			if(!bidDTO2.get(1).getId().equals(bidDTO2.get(0).getId())) {
				Map<String, String>map2 = new HashMap<String, String>();
				map2.put("id", bidDTO2.get(1).getId());
				map2.put("bidprice", Integer.toString(bidDTO2.get(1).getBidprice()));
				sqlSession.update("bidSQL.paybackUserMoney",map2);
				//soket table 에 메세지 저장
				Map<String, String>map3 = new HashMap<String, String>();
				map3.put("content", "입찰해주신 '"+bidDTO2.get(0).getSubject()+ "' 상품에서 입찰 순위가 밀려났습니다");
				map3.put("target",map2.get("id"));
				map3.put("url","/team_project/message/messageList");
				map3.put("msgseq",map.get("product_seq1"));
				map3.put("type","70");
				sqlSession.insert("bidSQL.failBidMsg",map3);
			}
		 }
		
	}
	@Override
	public String getBidCount(Map<String, String> map) {
		return sqlSession.selectOne("bidSQL.getBidCount",map);
	}
	
}
