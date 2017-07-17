INSERT INTO bbs (bbs_id, bbs_nm, crer_id, crer_ymdt, modr_id, mod_ymdt) 
VALUES ('bbs_1', 'News', 'hkyang119', '2017-02-18 14:21:12', 'hkyang119', NULL);

INSERT INTO bbs (bbs_id, bbs_nm, crer_id, crer_ymdt, modr_id, mod_ymdt) 
VALUES ('bbs_2', 'Sample', 'hkyang119', '2017-02-18 14:21:12', 'hkyang119', NULL);

INSERT INTO bbs (bbs_id, bbs_nm, crer_id, crer_ymdt, modr_id, mod_ymdt) 
VALUES ('bbs_3', 'Contact', 'hkyang119', '2017-02-18 14:21:12', 'hkyang119', NULL);


INSERT INTO atc (seq, bbs_id, ttl, cont, wrtr_id, wrt_ymdt, mod_ymdt, cnt)
VALUES (1, 'bbs_1', 'First', 'This is the first newsletter.', 'hkyang119', '2017-02-18 14:21:12', NULL, 0);

INSERT INTO atc (seq, bbs_id, ttl, cont, wrtr_id, wrt_ymdt, mod_ymdt, cnt)
VALUES (2, 'bbs_1', 'Second', 'This is the first sample. https://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_temp_blog&stacked=h', 'hkyang119', '2017-02-18 14:21:12', NULL, 0);

INSERT INTO cmt (seq, atc_seq, cont, wrtr_id, wrt_ymdt)
VALUES (1, 2, 'This is awesome!!', 'hkyang119', '2017-02-19 14:21:12');

INSERT INTO cmt (seq, atc_seq, cont, wrtr_id, wrt_ymdt)
VALUES (2, 2, 'Good luck~', 'hkyang119', '2017-02-19 14:21:12');

