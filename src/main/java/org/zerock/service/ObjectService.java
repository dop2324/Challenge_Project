package org.zerock.service;

import java.util.List;

import org.zerock.domain.MemberDTO;
import org.zerock.domain.ObjectVO;


public interface ObjectService {
	
	public void register (ObjectVO object);
	
	public ObjectVO get(int bno);
	
	public boolean modify(ObjectVO object);
	
	public boolean remove(int bno);
	
	public void delete(int idbno);
	
	
	
	public List<ObjectVO> getList(int idbno);
	
	
	
	
	
	
}
