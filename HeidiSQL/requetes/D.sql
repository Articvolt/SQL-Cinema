SELECT COUNT(f.id_film) AS nombreFilm , g.nomGenre
FROM genre g
LEFT JOIN associer a ON g.id_genre = a.id_genre
LEFT JOIN film f ON a.id_film = f.id_film
GROUP BY g.id_genre
ORDER BY nombreFilm DESC 