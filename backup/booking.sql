

CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(100) NOT NULL,
    slot VARCHAR(10) NOT NULL,
    time DATETIME NOT NULL,
    vehicle VARCHAR(20) NOT NULL,
    payment_method VARCHAR(20) NOT NULL
);
