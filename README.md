Schema for an example
[PostgREST](https://github.com/begriffs/postgrest) API.

After cloning this, install [sqitch](http://sqitch.org/) and configure

```bash
sqitch config --user user.name 'Your Name'
sqitch config --user user.email 'your email'
sqitch target add production db:pg://[user]:[pass]@[rds url]:5432/[dbname]
sqitch config core.engine pg
sqitch config core.pg.target production
sqitch config --bool deploy.verify true
sqitch config --bool rebase.verify true
```

Thereafter you can deploy.

```bash
sqitch deploy
```

For more sqitch info, see the
[guide](https://github.com/theory/sqitch/blob/master/lib/sqitchtutorial.pod).
