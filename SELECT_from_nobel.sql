1)
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

2)
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'


3)
SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'



4)
select winner
from nobel
 WHERE yr >= 2000
   AND subject = 'peace'



5)
SELECT yr, subject, winner
  FROM nobel
where subject = 'literature'
and yr between 1980 and 1989




6)
SELECT *
FROM nobel
WHERE winner IN (
  'Theodore Roosevelt',
  'Thomas Woodrow Wilson',
  'Jimmy Carter',
  'Barack Obama'
);


7)
select winner  from nobel where winner like 'john%';

8)
select * from nobel
 where (subject='physics' and yr =1980) 
or (subject ='chemistry' and yr=1984)



9)
select * from nobel where yr =1980 
and subject not in ('chemistry','medicine')



10)
select * from nobel
where (subject in ('medicine') and yr < 1910)
or (subject in ('Literature') and yr >= 2004)



11)
select * from nobel where winner in('PETER GRÜNBERG')



12)
SELECT * FROM nobel WHERE winner = 'EUGENE O''NEILL';


13)
SELECT winner,yr,subject FROM nobel n where n.winner like 'Sir%' order by n.yr desc,n.winner

14)
SELECT winner, subject
FROM nobel
WHERE yr = 1984
ORDER BY subject IN ('Physics','Chemistry'), subject, winner;
