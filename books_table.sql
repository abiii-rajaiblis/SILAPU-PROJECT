CREATE TABLE books (
    id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publisher VARCHAR(255),
    year INT,
    description TEXT,
    cover_image VARCHAR(255)
);

INSERT INTO books (id, title, author, publisher, year, description, cover_image) VALUES
('B1', 'Matematika Dasar', 'Budi Santoso', 'Penerbit Ilmu Cendekia', 2022, 'Buku ini membahas dasar-dasar matematika seperti aljabar, geometri, dan aritmetika dengan pendekatan kontekstual.', 'https://via.placeholder.com/200x300?text=Matematika+Dasar'),
('B2', 'Bahasa Indonesia', 'Sari Dewi', 'Penerbit Bahasa', 2021, 'Buku ini membahas tata bahasa dan sastra Indonesia secara lengkap.', 'https://via.placeholder.com/200x300?text=Bahasa+Indonesia'),
('B3', 'Ilmu Pengetahuan Alam', 'Agus Wijaya', 'Penerbit Sains', 2020, 'Buku ini membahas konsep dasar ilmu pengetahuan alam untuk pelajar.', 'https://via.placeholder.com/200x300?text=Ilmu+Pengetahuan+Alam'),
('B4', 'Sejarah Indonesia', 'Rina Marlina', 'Penerbit Sejarah', 2019, 'Buku ini mengulas sejarah Indonesia dari masa ke masa.', 'https://via.placeholder.com/200x300?text=Sejarah+Indonesia'),
('B5', 'Fisika Dasar', 'Andi Wijaya', 'Penerbit Fisika', 2022, 'Buku ini membahas konsep dasar fisika dengan contoh aplikasi.', 'https://via.placeholder.com/200x300?text=Fisika+Dasar');
-- Add more entries as needed
