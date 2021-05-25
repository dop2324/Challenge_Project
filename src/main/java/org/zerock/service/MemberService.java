package org.zerock.service;


import org.zerock.domain.MemberDTO;

public interface MemberService {
	

	public void register (MemberDTO member);
	
	public void remove(int idbno);
	
	public MemberDTO login(MemberDTO member);
	
}
