1.

-

2.

-

3.

select nev
from f
where vedett true
order by nev
;

4.

select count(*)
from f
where feljegy > 1850 and feljegy < 1900

5.

select *
from f
group by nev
where count(nev) > 5

6.

select nev, feljegy, eloford
from f
group by (select eloford from f group by nev where count(nev) > 5)
order by nev

7.

select eloford
from f as t1, f as t2
where t1.eloford = t2.eloford and t1.nev <> t2.nev
group by eloford
;

8.

select n.nev
from f as f, n as n
where n.nev not in (select nev from f)

9.

select n.nev
from f as f, n as n
where n.nev = f.eloford

10.

select top 1 nev
from f
group by nev
order by count(eloford) desc

11.

-
