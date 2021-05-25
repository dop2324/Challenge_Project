package org.zerock.mapper;

import org.zerock.domain.MemberDTO;

public interface MemberMapper {
	public void insert(MemberDTO member);
	
	public int delete(int idbno);
	
	public MemberDTO read(MemberDTO member);
}
