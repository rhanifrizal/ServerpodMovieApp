BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "movie" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "year" integer NOT NULL,
    "imageUrl" text NOT NULL,
    "logLine" text NOT NULL
);


--
-- MIGRATION VERSION FOR movieapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('movieapp', '20240510154011574', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240510154011574', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
