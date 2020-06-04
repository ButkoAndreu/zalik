CREATE OR REPLACE TYPE TypeHuman AS OBJECT(
 human_name varchar,
 pur_num int
 );
 create type TypeHumanList as table of TypeHuman;

CREATE OR REPLACE FUNCTION selekt_humanpurcase ( human_name VARCHAR ) RETURN humpurtab PIPELINED IS
CURSOR tbl IS
        (SELECT human_name
       FROM Human_Purcase
         WHERE human_name = humanName);
col_type TypeHuman;
BEGIN FOR res IN tbl LOOP
  col_type.uman_name := res.human_name;
  col_type.pur_num := res.pur_num;
  PIPE ROW ( col_type );
END LOOP;
END;
