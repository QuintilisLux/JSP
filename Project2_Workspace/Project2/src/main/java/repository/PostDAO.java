package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import domain.PostVO;
import orm.DatabaseBuilder;

public class PostDAO {
	private SqlSession sql;
	
	public PostDAO() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}
	
	public void postRegister(PostVO postVO) {
		sql.insert("PostMapper.postRegister", postVO);
		sql.commit();
	}

	public List<PostVO> postList() {
		return sql.selectList("PostMapper.postList");
	}

	
}
