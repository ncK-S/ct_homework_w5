-- Create Concessions Table
CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	concession_type VARCHAR(100),
	concession_price NUMERIC(6,2)
);

-- Create customer Table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
);

-- Create ticket Table
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_price NUMERIC(6,2),
	movie_date DATE,
	movie_time INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
);

-- Create movie Table
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(80),
	rating VARCHAR(10),
);