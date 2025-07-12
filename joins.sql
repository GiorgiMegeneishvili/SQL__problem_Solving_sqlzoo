1)
  SELECT matchid,player FROM goal 
  WHERE teamid LIKE '%GER'



2)
SELECT id,stadium,team1,team2
  FROM game where id in (1012)




3)
SELECT player,go.teamid, stadium, ga.mdate
  FROM game ga JOIN goal go ON ga.id=go.matchid
where go.teamid LIKE '%GER'



4)
SELECT team1,team2, go.player
  FROM game ga JOIN goal go ON ga.id=go.matchid
where go.player LIKE 'Mario%'


5)
SELECT go.player, go.teamid, e.coach , go.gtime
  FROM goal go join eteam e on go.teamid= e.id
 WHERE gtime<=10


6)
SELECT ga.mdate, e.teamname
  FROM game ga JOIN eteam e ON (ga.team1=e.id)
where e.coach like 'Fernando Santos'



7)
SELECT player
  FROM game ga JOIN goal go ON ga.id=go.matchid
where ga.stadium like 'National Stadium, Warsaw'


8)
SELECT distinct player
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' or team2='GER' )
and goal.teamid != 'GER'



9)
SELECT  teamname, COUNT(teamid)
  FROM eteam JOIN goal ON id=teamid
 group BY teamid, teamname, id
order by teamname



10)
SELECT  stadium, COUNT(matchid)
  FROM game JOIN goal ON id=matchid
 group BY stadium



13)
SELECT mdate, 
       team1,
       SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) AS score1,
       team2,
       SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) AS score2
FROM game LEFT JOIN goal ON (id = matchid)
GROUP BY mdate, matchid, team1, team2
ORDER BY mdate, matchid, team1, team2





