package org.zerock.mapper;

import org.zerock.domain.MemberDTO;

public interface MemberMapper {
	public void insert(MemberDTO member);
	
	public int delete(int idbno);
	
	public int update(MemberDTO member);
	
	public MemberDTO read(MemberDTO member);
	
	public int idCheck(String id);
}
