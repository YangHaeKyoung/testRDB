package com.navercorp.board.model;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@Alias("cmt")
public class Comment {
	
	private int seq;
	private int atcSeq;
	private String cont;
	private String wrtrId;
	private Timestamp wrtYmdt;
	
}