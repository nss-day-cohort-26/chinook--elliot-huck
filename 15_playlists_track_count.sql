SELECT 
	p.Name AS 'Playlist Name', 
	COUNT(pt.TrackId) AS 'Number of Tracks'
FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name;