package member.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component
public class MemberDao {
	
	private String namespace = "member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<MemberDto> memberList(Map<String, String> map, Paging pageInfo){
		List<MemberDto> lists = new ArrayList<MemberDto>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		
		lists = sqlSessionTemplate.selectList(namespace+".MemberList", map, rowBounds);
		
		return lists;
	}
	
	public int getTotalCount(Map<String, String> map) {
		int cnt = 0; 
		cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount", map);
		
		return cnt;
	}
}
