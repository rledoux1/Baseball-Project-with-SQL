Select *
From PortfolioProject..[Atlanta Braves 1966-2020]
 
---Analysis-Atlanta Braves

Select *
From PortfolioProject..[Atlanta Braves 1966-2020]
Where team_name like '%braves%'

Select COUNT(games_played)
From PortfolioProject..[Atlanta Braves 1966-2020]
Where year = 2020

--returned 60

Select wins 
From PortfolioProject..[Atlanta Braves 1966-2020]
where year = 2020 and team_name like '%braves%'

--returned 35

Select losses 
From PortfolioProject..[Atlanta Braves 1966-2020]
where year = 2020 and team_name like '%braves%'

--returned 25


----Analysis-Los Angeles Dodgers that won the 2020 series
--Number of games won, Number of games lost in 2020

Select *
From PortfolioProject..[mlb_teams1876-2020]
Where team_name like 'Los Angeles Dodgers'

Select wins 
From PortfolioProject..[mlb_teams1876-2020]
where year = 2020 and team_name like 'Los Angeles Dodgers'

--returned 43

Select losses 
From PortfolioProject..[mlb_teams1876-2020]
where year = 2020 and team_name like 'Los Angeles Dodgers'

--returned 17

---Looking at total runs scored, hits and bats for Atlanta vs Dodgers who won in 2020

Select runs_scored, hits, at_bats
From PortfolioProject..[Atlanta Braves 1966-2020]
where year = 2020 and team_name like '%braves%' 

Select runs_scored, hits, at_bats
From PortfolioProject..[mlb_teams1876-2020]
where year = 2020 and team_name like 'Los Angeles Dodgers' 

--More observations

Select  team_name, year, runs_scored As MostRuns
  from PortfolioProject..[Atlanta Braves 1966-2020] 
  where runs_scored = 
  (
  select MAX(runs_scored) As MostRuns 
  from PortfolioProject..[Atlanta Braves 1966-2020]);

  --returned Chicago Cubs, 1930 with 998 

  Select  team_name, year, runs_scored As FewRuns
  from PortfolioProject..[Atlanta Braves 1966-2020] 
  where runs_scored = 
  (
  select min(runs_scored) As FewRuns 
  from PortfolioProject..[Atlanta Braves 1966-2020]);

  --Returned NY Yankees, 1932 with 1002

