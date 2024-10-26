// Membuat tabel songs
CREATE TABLE songs (
    songId TEXT PRIMARY KEY,
    senderId TEXT,
    artistId TEXT,
    albumId TEXT,
    songTitle TEXT,
    songImageUrl TEXT,
    songUrl TEXT,
    songDuration INTEGER,
    timestamp TEXT,
    albumId TEXT,
    artistSongIndex INTEGER,
    likeIds TEXT,
    playlistIds TEXT,
    albumIds TEXT,
    playedIds TEXT
)
// Membuat tabel playlists
CREATE TABLE playlists (
    playlistId TEXT PRIMARY KEY,
    creatorId TEXT,
    playlistName TEXT,
    playlistDescription TEXT,
    playlistImageUrl TEXT,
    timestamp TEXT,
    playlistUserIndex INTEGER,
    songListIds TEXT,
    playlistLikeIds TEXT,
    totalDuration INTEGER
)

// Membuat tabel albums
CREATE TABLE albums (
    albumId TEXT PRIMARY KEY,
    creatorId TEXT,
    albumName TEXT,
    albumDescription TEXT,
    albumImageUrl TEXT,
    timestamp TEXT,
    albumUserIndex INTEGER,
    songListIds TEXT,
    albumLikeIds TEXT,
    totalDuration INTEGER
)

// Membuat tabel users
CREATE TABLE users (
    userId TEXT PRIMARY KEY,
    fullName TEXT,
    username TEXT,
    email TEXT,
    password TEXT,
    profileImageUrl TEXT,
    bioImageUrl TEXT,
    bio TEXT,
    role TEXT,
    followers TEXT,
    following TEXT,
    userLikedSongs TEXT,
    userLikedAlbums TEXT,
    userLikedPlaylists TEXT,
    lastListenedSongId TEXT,
    lastVolumeLevel REAL
)

// Membuat tabel current_user
CREATE TABLE current_user (
    userId TEXT PRIMARY KEY
)

// Contoh kode sql insert ke album
INSERT INTO album (
    albumId, creatorId, albumName, albumDescription, albumImageUrl, timestamp, albumUserIndex, songListIds, albumLikeIds, totalDuration
) 
VALUES (
    '1', 'u001', 'Chill Vibes', 'Relaxing music for your soul', 'https://image.url/chillvibes.jpg', '2024-10-24', 100, 's001,s002,s003', 'u001,u002', 3600
);

// Contoh kode sql insert ke song
INSERT INTO song (
    SongId, senderId, artistId, albumId, songTitle, songImageUrl, songUrl, songDuration, timestamp, artistFileIndex, likeIds, playlistIds, albumIds, playedIds
) 
VALUES (
    's001', 'u001', 'a001', '1', 'Calm Winds', 'https://image.url/calmwinds.jpg', 'https://song.url/calmwinds.mp3', 300, '2024-10-24', 1, 'u001,u002', 'p001', '1', 'u003'
);

// Contoh kode sql insert ke playlist
INSERT INTO playlist (
    playlistId, creatorId, playlistName, playlistDescription, playlistImageUrl, timestamp, playlistUserIndex, playlistLikeIds, totalDuration
) 
VALUES (
    'p001', 'u002', 'Morning Vibes', 'Best songs to start your day', 'https://image.url/morningvibes.jpg', '2024-10-24', 50, 'u001,u003', 1800
);

// Contoh kode sql insert ke user
INSERT INTO user (
    userId, fullName, username, email, password, profileImageUrl, bioImageUrl, bio, role, followers, following, userLikedSongs, userLikedAlbums, userLikedPlaylist, lastListendedSongId, lastVolumeLevel
) 
VALUES (
    'u001', 'John Doe', 'johndoe', 'john@example.com', 'password123', 'https://image.url/johndoe.jpg', 'https://image.url/bio.jpg', 'Music enthusiast', 'listener', 'u002,u003', 'u002', 's001,s002', '1', 'p001', 's001', 0.8
);

// Contoh kode sql insert ke current_user
CREATE TABLE current_user (
    userId TEXT PRIMARY KEY
);
