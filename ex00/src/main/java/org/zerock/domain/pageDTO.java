package org.zerock.domain;

import lombok.Data;

@Data
public class pageDTO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int total;
	private Criteria cri;
	
	public pageDTO(Criteria cri, int total) {
		
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
		this.startPage = this.endPage - 9;
		
		int realPage = (int) (Math.ceil(this.total / cri.getAmount()));
		
		if(this.endPage > realPage) {
			this.endPage = realPage;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realPage;
		
	}
	
}
