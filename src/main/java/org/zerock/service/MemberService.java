package org.zerock.service;


import org.zerock.domain.MemberDTO;

public interface MemberService {
	

	public void register (MemberDTO member);
	
	public void remove(int idbno);
	
	public void modify(MemberDTO member);
	
	public MemberDTO login(MemberDTO member);
	
	public int idCheck(String id) throws Exception;
	
}
