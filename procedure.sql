CREATE OR REPLACE PROCEDURE DODAT_danni @human_name @pur_num
ON Human_Purcase
BEGIN
 WHERE @human_name != human_name;
 INSERT INTO Human_Purcase (human_name, pur_name) VALUES (@human_name, @pur_num);
END
