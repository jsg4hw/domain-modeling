
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    real_name TEXT,
    location TEXT
);

CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author_id INTEGER,
    posted_at TEXT,
    file_url TEXT
);

CREATE TABLE likes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    liker_id INTEGER
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    commenter_id INTEGER,
    comment_text TEXT,
    commented_at TEXT
);

CREATE TABLE follows (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    requestor_id INTEGER,
    requestee_id INTEGER,
    accepted BOOLEAN
);

CREATE TABLE feed (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    owner_id INTEGER,
    post_id INTEGER
);
