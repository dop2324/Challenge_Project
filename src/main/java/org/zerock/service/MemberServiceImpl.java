package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.MemberDTO;
import org.zerock.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	
		
		@Setter(onMethod_ = @Autowired)
		private MemberMapper mapper;
		
		
		@Transactional
		@Override
		public void register(MemberDTO member) {
			
	
			mapper.insert(member);
			
		}
		
		@Transactional
		@Override
		public void remove(int idbno) {
			
			
			
			 mapper.delete(idbno);
			
		}
		
		@Transactional
		@Override
		public MemberDTO login(MemberDTO member) {
			
			return mapper.read(member);
		}
		
		@Transactional
		@Override
		public int idCheck(String id) throws Exception {
			
			 return mapper.idCheck(id);
		}
		
		
		

}
