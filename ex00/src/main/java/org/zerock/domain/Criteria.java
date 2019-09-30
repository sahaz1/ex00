package org.zerock.domain;

import lombok.Data;

@Data
public class Criteria {

	private int pageNum; // ������ ��ȣ
	private int amount; // �� �������� ��� �Խñ��� ������ ���ΰ���
	
	public Criteria() {
		this(3,10);
	}
	
	public Criteria(int pagenum, int amount) {
		this.pageNum = pagenum;
		this.amount = amount;
	}	
}
