package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ObjectVO;
import org.zerock.mapper.ObjectMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ObjectServiceImpl implements ObjectService{
		
	@Setter(onMethod_ = @Autowired)
	private ObjectMapper mapper;

	@Override
	public ObjectVO get(int bno) {
		// TODO Auto-generated method stub
		return mapper.read(bno);
	}

	@Override
	public boolean modify(ObjectVO object) {
		// TODO Auto-generated method stub
		return mapper.update(object) == 1;
	}

	@Override
	public boolean remove(int bno) {
		// TODO Auto-generated method stub
		return mapper.delete(bno) == 1;
	}

	@Override
	public List<ObjectVO> getList(int idbno) {
		// TODO Auto-generated method stub
		log.info("getList::::"+mapper.getList(idbno));
		return mapper.getList(idbno);
	}
	

	@Override
	public void register(ObjectVO object) {
		// TODO Auto-generated method stub
		
		mapper.insertSelectKey(object);
		
	}
//	회원정보를 삭제했을 때 외래키 설정 때문에 자식요소인 object 테이블을 먼저 삭제해야한다.
	@Override
	public void delete(int idbno) {
		mapper.Mdelete(idbno);
	}
	
}
