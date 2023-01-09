USE SEC05;

SELECT distinct s.sid ,s.sname
from Ships.Sailors s, Ships.Reserves r ,Ships.Reserves r2
where s.sid = r.sid and r.sid = r2.sid and r.bid <> r2.bid and r2.day < r.day;


--Find the number of reservations for each red boat.
SELECT b.bid, count(r.bid)
FROM Ships.Boats b ,Ships.Reserves r
where b.color = 'red'
group by b.bid;


