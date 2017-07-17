package com.navercorp.board.model;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@Alias("atc")
public class Article {

	private int seq;
	private String bbsId;
	private String ttl;
	private String cont;
	private String wrtrId;
	private Timestamp wrtYmdt;
	private Timestamp modYmdt;
	private int cnt;
	
	private List<Comment> comments;
}
