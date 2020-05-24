-- 练习1 ： 使用cls表
--
--     函数  传入两个学生的ID，返回这两个学生的成绩之和
create function get_sum(uid1 int,uid2 int)
returns float
begin
declare a float;
declare b float;
set a=(select score from cls where id=uid1);
select score from cls where id=uid2 into b;
return a+b;
end

--     存储过程 ： 传入一个学生的姓名，在外部设立用户变量，通过用户变量获取该学生的成绩

create procedure  get_score(inout uname varchar(30) )
begin
declare s float;
set s=(select score from cls where name=uname);
set uname=s;
end

set  @n="Lily";
call get_score(@n);

select @n;












