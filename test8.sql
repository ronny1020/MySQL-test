use class;
select * from students;
select cname, 
case 
     when csex='F' then 'Mrs.'
     when csex='M' then 'Mr.'
 end 'title'
from students;
 
 select csex, if(csex='F','Mr.','Mr.') 'gender' from students;
 select concat(if(csex='F','Mr.','Mr.'),' ',cname) title,caddr from students;
 select floor(rand()*101);
 alter table students add score int;
 desc students;
 update students set score =  floor(rand()*101) where cid =1;
 SET SQL_SAFE_UPDATES = 0;
 update students set score =  floor(rand()*101) where cid>0;
 select cname, score, if(score>=60,'pass','fail') from students order by score desc;
 select cname,score,
 case 
 when score >=90 then 'A'
 when score >=80 then 'B'
 when score >=70 then 'C'
 when score >=60 then 'D'
 else 'F'
 end 'Grade'
 from students order by score desc;
 
 select * from students group by csex;
 
select csex, count(*) from students group by csex;
select count(*) from students;
select csex, count(*), sum(score), avg(score), min(score),max(score), std(score) from students group by csex;
 
select score from students where csex='F';

select csex, count(*), sum(score), avg(score), min(score),max(score), std(score) from students group by csex having avg(score)>=70;
 
 