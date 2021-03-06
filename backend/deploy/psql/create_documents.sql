CREATE TABLE IF NOT EXISTS documents (
    Id SERIAL PRIMARY KEY,
    title VARCHAR(500),
    alias VARCHAR(500),
    url VARCHAR(500),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);

CREATE TABLE IF NOT EXISTS comments (
    Id SERIAL PRIMARY KEY,
    project VARCHAR(200),
    username VARCHAR(200),
    content VARCHAR(500),
    avatar VARCHAR(500),
    "cityId" INTEGER,
    "isPublic" BOOLEAN,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    FOREIGN KEY ("cityId") REFERENCES "cityLocs"(Id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE CASCADE
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public to postgres;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO postgres;
