-- Customer inserts
INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    billing_info
)VALUES(
    1,
    'Nicolas',
    'Stein',
    '1234-5678-9876-5432 01/23 456'
);
-- only one customer bcuz Nick is a single pringle :(


-- Ticket inserts
INSERT INTO tickets(
    ticket_id,
    ticket_price,
    movie_time,
    movie_id
)VALUES(
    1,
    '14.00',
    '7:10pm',
    4
);

-- Movie inserts
INSERT INTO movie(
    movie_id,
    movie_title,
    rating
)VALUES(
    4,
    'IT: Chapter 3',
    'R'
)

--Concessions inserts
INSERT INTO concessions(
    concession_id,
    concession_type,
    concession_price
)VALUES(
    2,
    'M&Ms'
    '6.75'
)

INSERT INTO concessions(
    concession_id,
    concession_type,
    concession_price
)VALUES(
    1,
    'Coke'
    '3.25'
)