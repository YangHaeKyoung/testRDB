package com.navercorp.board.model;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@Alias("bbs")
public class Bbs {
	
	private String bbsId;
	private String bbsNm;
	private String crerId;
	private Timestamp crerYmdt;
	private String modrId;
	private Timestamp modYmdt;
}