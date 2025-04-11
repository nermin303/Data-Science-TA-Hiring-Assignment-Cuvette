  
 --1- List the top 5 customers by total purchase amount.

  select Top 5 C.FirstName, C.LastName, Sum(I.Total) as Total
  from [dbo].[Customer] C join [dbo].[Invoice] I on C.CustomerId=I.CustomerId
  group by C.FirstName, C.LastName
  order by Total Desc

  --2- Find the most popular genre in terms of total tracks sold.
 
 select Top 1 G.Name, SUM(I.Quantity)AS TotalTracksSold
 from [dbo].[InvoiceLine] I 
 join [dbo].[Track] T on I.TrackId = T.TrackId
 join [dbo].[Genre] G on T.GenreId = G.GenreId
 group by G.Name
 order by TotalTracksSold desc 

 --3- Retrieve all employees who are managers along with their subordinates.
 SELECT E2.FirstName AS FirstNameManager, E2.LastName AS LastNameManager,
       E1.FirstName AS FirstNameSubordinate, E1.LastName AS LastNameSubordinate
FROM [dbo].[Employee] E1
JOIN [dbo].[Employee] E2 ON E1.ReportsTo = E2.EmployeeId
ORDER BY E2.EmployeeId;

 --4- For each artist, find their most sold album.
 with RanksOfAlbums as(
 select Ar.Name as artistname, Al.Title as albumtitle, sum(I.Quantity) as TotalSales, row_number() over (partition by Ar.ArtistID order by sum (I.Quantity) DESC) as Rank
 from [dbo].[Artist] Ar
 join [dbo].[Album] Al on Ar.ArtistId=Al.ArtistId 
 join [dbo].[Track] T on Al.AlbumId =T.AlbumId
 join [dbo].[InvoiceLine] I on T.TrackId=I.TrackId
 group by Ar.Name, Al.Title, Ar.ArtistId) 

 Select artistname, TotalSales
 from RanksOfAlbums
 where Rank =1 

 --5- Write a query to get monthly sales trends in the year 2023 (since no data in 2013 i think you mean 2023).
 select month(InvoiceDate) as Month, sum(Total) as TotalSales
 from [dbo].[Invoice]
 where year (InvoiceDate) = 2023
 group by month (InvoiceDate)
 order by Month

