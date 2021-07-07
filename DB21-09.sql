/* 期末課題(B) 準備用 SQLファイル */
CREATE DATABASE study2 DEFAULT CHARACTER SET utf8;
use study2;


/* employee 社員テーブル  */
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (  empno CHAR(8), name VARCHAR(40), birthday DATE, sectionid INTEGER, bossid CHAR(8), workplaceid INTEGER  );
/*   
empno 社員番号
name  名前
birthday  生年月日
sectionid  部署ID
bossid 上司ID
workplaceid  勤務地ID
 */

/* section 部署テーブル  */
DROP TABLE IF EXISTS section;
CREATE TABLE section (  sectionid INTEGER, name VARCHAR(40), hqid  INTEGER  );
/*   
sectionid  部署ID
name  名前
hqid  本部拠点ID
 */

/* branch 支社テーブル  */
DROP TABLE IF EXISTS branch;
CREATE TABLE branch (  branchid INTEGER, name VARCHAR(40), branchmgid CHAR(8)  );
/*   
branchid  支店ID
name  名前
branchmgid  支店長ID
 */


INSERT INTO employee ( empno,name,birthday,sectionid,bossid,workplaceid ) VALUES ( '21000021','菅原拓真','1978-09-01',5,'12459040',12 );
INSERT INTO employee ( empno,name,birthday,sectionid,bossid,workplaceid ) VALUES ( '12459040','宇多田定一','1955-01-01',5,NULL,12 );

INSERT INTO section ( sectionid,name,hqid ) VALUES ( 1,'経営企画部',12 );
INSERT INTO section ( sectionid,name,hqid ) VALUES ( 2,'法務部',12 );
INSERT INTO section ( sectionid,name,hqid ) VALUES ( 3,'経理部',12 );
INSERT INTO section ( sectionid,name,hqid ) VALUES ( 4,'総務部',12 );
INSERT INTO section ( sectionid,name,hqid ) VALUES ( 5,'開発部',12 );

INSERT INTO branch ( branchid,name,branchmgid ) VALUES ( 12,'東京','12459040' );

