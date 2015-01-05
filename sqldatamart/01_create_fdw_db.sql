-- set up a foreign data wrapper to openclinica
CREATE EXTENSION IF NOT EXISTS postgres_fdw;
CREATE SERVER :FDWSERVERNAME
FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (host :FDWSERVERHOST, hostaddr :FDWSERVERHOSTADDR, port :FDWSERVERPORT, dbname :FDWSERVERDBNAME);
CREATE USER MAPPING FOR PUBLIC SERVER :FDWSERVERNAME
OPTIONS (USER :FDWSERVERUSER, PASSWORD :FDWSERVERPASS);