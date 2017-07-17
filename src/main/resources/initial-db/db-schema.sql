CREATE TABLE bbs ( 
  bbs_id 	VARCHAR(255) NOT NULL,
  bbs_nm     	VARCHAR(255) NOT NULL,
  crer_id    	VARCHAR(10) NOT NULL,
  crer_ymdt     TIMESTAMP NOT NULL,
  modr_id	VARCHAR(10) NOT NULL,
  mod_ymdt	TIMESTAMP 
);

CREATE TABLE atc (
  seq       	INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  bbs_id	VARCHAR(255) NOT NULL,
  ttl     	VARCHAR(255) NOT NULL,
  cont   	VARCHAR(1000) NOT NULL,
  wrtr_id    	VARCHAR(10) NOT NULL,
  wrt_ymdt     	TIMESTAMP NOT NULL,
  mod_ymdt	TIMESTAMP,
  cnt         	INT DEFAULT 0 NOT NULL 
);


CREATE TABLE cmt (
  seq		INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  atc_seq	INT NOT NULL,
  cont   	VARCHAR(1000) NOT NULL,
  wrtr_id    	VARCHAR(10) NOT NULL,
  wrt_ymdt     	TIMESTAMP NOT NULL
);