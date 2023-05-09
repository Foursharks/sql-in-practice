-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
select *
From invoice
WHERE invoice_id IN (
select invoice_id 
FROM invoice_line
WHERE unit_price>.99)


-- Get all playlist tracks where the playlist name is Music.
select *
From playlist_track
WHERE playlist_id IN (
select playlist_id
FROM playlist
WHERE name='Music')

-- Get all track names for playlist_id 5.
SELECT name
FROM track
WHERE track_id IN(
select track_id
FROM playlist_track
WHERE playlist_id=5)

-- Get all tracks where the genre is Comedy.

-- Get all tracks where the album is Fireball.

-- Get all tracks for the artist Queen ( 2 nested subqueries ).