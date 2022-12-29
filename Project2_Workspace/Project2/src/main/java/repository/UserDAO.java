package repository;

import org.apache.ibatis.session.SqlSession;

import domain.UserVO;
import orm.DatabaseBuilder;

public class UserDAO {
	private SqlSession sql;

	public UserDAO() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}
	
	public void signUp(UserVO userVO) {
		sql.insert("UserMapper.signUp", userVO);
		sql.commit();
	}

	public UserVO login(UserVO userVO) {
		return sql.selectOne("UserMapper.login", userVO);
	}

	public int overlapCheck(UserVO userVO) {
		return sql.selectOne("UserMapper.overlapCheck", userVO);
	}

	public void userUpdate(UserVO userVO) {
		sql.insert("UserMapper.userUpdate", userVO);
		sql.commit();
	}

	public int idCheck(UserVO userVO) {
		return sql.selectOne("UserMapper.idCheck", userVO);
	}

	public void userPasswordUpdate(UserVO userVO) {
		sql.insert("UserMapper.userPasswordUpdate", userVO);
		sql.commit();
	}


}
