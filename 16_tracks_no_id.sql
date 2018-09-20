SELECT
	t.Name,
	al.Title AS 'Album',
	m.Name AS 'Media Type',
	g.Name AS 'Genre'
FROM Track t
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
JOIN Genre g ON t.GenreId = g.GenreId;