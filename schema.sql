CREATE TABLE IF NOT EXISTS config (
    key   VARCHAR(128) PRIMARY KEY NOT NULL,
    value VARCHAR(8192) NOT NULL
);

CREATE TABLE IF NOT EXISTS queue (
    file VARCHAR(512) PRIMARY KEY NOT NULL,
    rank REAL DEFAULT 0 NOT NULL,
    pos  REAL DEFAULT 0 NOT NULL,
    end  REAL DEFAULT 0 NOT NULL
);

INSERT OR IGNORE INTO config VALUES ('activation_bytes', 'cafeb0bb');
