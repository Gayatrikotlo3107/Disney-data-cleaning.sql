--all the movies related stuff
select movie_title , release_date, genre , MPAA_rating
from [d.gross]

--total gross
select sum(total_gross)
from [d.gross]

--total adjusted gross
select sum(inflation_adjusted_gross)
from [d.gross]

--total revenue
select sum(Total)
from [d.revenue]


 ---top 10 movies with highest gross collection order by desc
 select TOP 10 movie_title, total_gross
 from [d.gross]
 order by total_gross desc;



 --first picture of disney  
 select movie_title,release_date
 from [d.gross]
 where release_date = (select min(release_date) from [d.gross])

 --recent release
 select movie_title,release_date
 from [d.gross]
 where release_date = (select max(release_date) from [d.gross])

-- number of total movies 
select count(movie_title)
from [d.gross]

--total genre
select DISTINCT genre
from [d.gross]

-- Top 5 my favorite genre gross collections

select  top 5 movie_title,genre,total_gross
from [d.gross]
where genre = 'Thriller/Suspense'
order by total_gross desc



 
 


