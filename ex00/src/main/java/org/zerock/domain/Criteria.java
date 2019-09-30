package org.zerock.domain;

import lombok.Data;

@Data
public class Criteria {

	private int pageNum; // 페이지 번호
	private int amount; // 한 페이지에 몇개의 게시글을 보여줄 것인가지
	
	public Criteria() {
		this(3,10);
	}
	
	public Criteria(int pagenum, int amount) {
		this.pageNum = pagenum;
		this.amount = amount;
	}	
}
