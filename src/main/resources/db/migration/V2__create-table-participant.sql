CREATE TABLE  participants(

    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    is_confirmed BOOLEAN NOT NULL,
    trip_id UUID,
    FOREIGN KEY (trip_id) REFERENCES trips(id) ON DELETE CASCADE
);