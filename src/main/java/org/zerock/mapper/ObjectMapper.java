package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.MemberDTO;
import org.zerock.domain.ObjectVO;


public interface ObjectMapper {

	public List<ObjectVO> getList(int idbno);
	
	
	
	public void insert(ObjectVO object);
	
	public void insertSelectKey(ObjectVO object);
	
	public ObjectVO read(int bno);
	
	public int delete(int bno);
	
	public int update(ObjectVO object);
}
