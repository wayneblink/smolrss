# smolrss
smol rss aggregator

## work in progress
[ ] tui

[ ] web

## commands
register

login

reset

users

agg

addfeed

feeds

follow

following

unfollow

browse

## database

### create a database with the data stored in the current directory
```
initdb -D .pg/<db>
```

### start PostgreSQL running as the current user
```
pg_ctl -D .pg -o "-k <fullpath>/.pg/run" -l logfile start
```

### create a database
```
createdb <db>
```

then every other time you re-enter that shell, you can just run the part that starts the database. It will keep running until you reboot, or stop it like this:

```
pg_ctl -D .pg/<db> stop
```

### example config
.smolrss.json
```
{
  "db_url": "postgres://<user>:@localhost:5432/<db_name>?sslmode=disable",
  "current_user_name": "<user>"
}
```
