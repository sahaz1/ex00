package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{

	private BoardMapper mapper;
	
	@Override
	//����ϱ�
	public void register(BoardVO board) {
		log.info("resiter...." + board);
		mapper.insertSelectKey(board);
	}
	
	@Override
	//��ü ������
	public List<BoardVO> getList(Criteria cri){
		log.info("get List......." + cri);
		
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	//�Ѱ� ������
	public BoardVO get(Long bno) {
		log.info("get..........." + bno);
		
		return mapper.read(bno);
	}
	
	@Override
	//�����ϱ�
	public boolean modify(BoardVO board) {
		
		return mapper.update(board) == 1;
	}

	@Override
	//�����ϱ�
	public boolean remove(Long bno) {
		
		return mapper.delete(bno) == 1;
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
}
