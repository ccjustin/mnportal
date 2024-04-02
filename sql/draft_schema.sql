/* schema sql file */
PRAGMA foreign_keys = ON;

/*  USERS TABLE     */
CREATE TABLE teams
(
    name VARCHAR(20) PRIMARY KEY NOT NULL,
    id VARCHAR(40) NOT NULL, 
    filename VARCHAR(64) NOT NULL
);

CREATE TABLE members
(
    /*fullname PRIMARY KEY VARCHAR(30) NOT NULL,*/
    fullname VARCHAR(30) NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team VARCHAR(20) NOT NULL,
    officer INTEGER DEFAULT 0,

    FOREIGN KEY (id) REFERENCES teams(id) ON DELETE CASCADE
);

CREATE TABLE projects
(
    name VARCHAR(40) NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team VARCHAR(20) NOT NULL,

    FOREIGN KEY (team) REFERENCES teams(name)
);

CREATE TABLE documentation
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    filename VARCHAR(64) NOT NULL,
    type VARCHAR(30) NOT NULL,
    team VARCHAR(20) DEFAULT "mnp",

    FOREIGN KEY (team) REFERENCES projects(team)
);
