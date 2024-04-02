/* injecting the data into schema set up by schema.sql */
PRAGMA foreign_keys = ON;

INSERT INTO users(username, fullname, email, filename, password)
VALUES ('awdeorio', 'Andrew DeOrio',
    'awdeorio@umich.edu',
    'e1a7c5c32973862ee15173b0259e3efdb6a391af.jpg',
    'sha512$a45ffdcc71884853a2cba9e6bc55e812$c739cef1aec45c6e34
    5c8463136dc1ae2fe19963106cf748baf87c7102937aa96928aa1db7fe1
    d8da6bd343428ff3167f4500c8a61095fb771957b4367868fb8'),
    ('jflinn', 'Jason Flinn',
    'jflinn@umich.edu',
    '505083b8b56c97429a728b68f31b0b2a089e5113.jpg',
    'sha512$a45ffdcc71884853a2cba9e6bc55e812$c739cef1aec45c6e34
    5c8463136dc1ae2fe19963106cf748baf87c7102937aa96928aa1db7fe1
    d8da6bd343428ff3167f4500c8a61095fb771957b4367868fb8'),
    ('michjc', 'Michael Cafarella',
    'michjc@umich.edu',
    '5ecde7677b83304132cb2871516ea50032ff7a4f.jpg',
    'sha512$a45ffdcc71884853a2cba9e6bc55e812$c739cef1aec45c6e34
    5c8463136dc1ae2fe19963106cf748baf87c7102937aa96928aa1db7fe1
    d8da6bd343428ff3167f4500c8a61095fb771957b4367868fb8'),
    ('jag', 'H.V. Jagadish',
    'jag@umich.edu',
    '73ab33bd357c3fd42292487b825880958c595655.jpg',
    'sha512$a45ffdcc71884853a2cba9e6bc55e812$c739cef1aec45c6e34
    5c8463136dc1ae2fe19963106cf748baf87c7102937aa96928aa1db7fe1
    d8da6bd343428ff3167f4500c8a61095fb771957b4367868fb8');

INSERT INTO likes(owner, postid)
VALUES ('awdeorio', 1),
        ('michjc', 1),
        ('jflinn', 1),
        ('awdeorio', 2),
        ('michjc', 2),
        ('awdeorio', 3);

INSERT INTO following(username1, username2)
VALUES ('awdeorio', 'jflinn'),
        ('awdeorio', 'michjc'),
        ('jflinn', 'awdeorio'),
        ('jflinn', 'michjc'),
        ('michjc', 'awdeorio'),
        ('michjc', 'jag'),
        ('jag', 'michjc');

INSERT INTO comments(owner, postid, text)
VALUES ('awdeorio', 3, '#chickensofinstagram'),
        ('jflinn', 3, 'I <3 chickens'),
        ('michjc', 3, 'Cute overload!'),
        ('awdeorio', 2, 'Sick #crossword'),
        ('jflinn', 1, 'Walking the plank #chickensofinstagram'),
        ('awdeorio', 1, 'This was after trying to teach them to do a #crossword'),
        ('jag', 4, 'Saw this on the diag yesterday!');
