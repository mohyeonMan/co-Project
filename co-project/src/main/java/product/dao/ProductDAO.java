package product.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import product.bean.ProductDTO;



public class ProductDAO {
	private SqlSessionFactory sqlSessionFactory;
	private static ProductDAO productDAO = new ProductDAO();
	
	public static ProductDAO getInstance() {
		return productDAO;
	}
	
	public ProductDAO() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void productWrite(ProductDTO productDTO) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert("productSQL.productWrite",productDTO);

		sqlSession.commit();
		sqlSession.close();
		
		
	}

	public List<ProductDTO> getList() {
		List<ProductDTO> list =null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList("productSQL.getList");
		sqlSession.close();
		return list;
	}

	public ProductDTO getView(int product_seq) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ProductDTO productDTO = sqlSession.selectOne("productSQL.getView", product_seq);
		sqlSession.close();
		return productDTO;
	}
	
	
}
