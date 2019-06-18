# Bookmark_manager


### How to run:
```
bundle install
```

### How to set up a database:
```
connect to psql
run a command CREATE DATABASE bookmark_manager;
connect to the database using a psql command \c bookmark_manager;
run 01_create_bookmarks_table.sql

run a command CREATE DATABASE bookmark_manager_test;
connect to the database using a psql command \c bookmark_manager_test;
```


### User Stories:
```
As a user,
so I can view my bookmarks
I want to be able to see my bookmarks

|     Noun      |      verb     |
| ------------- | ------------- |
| user          | view          |
| bookmarks     |               |


Add new bookmarks
As a user,
so I can add new bookmarks
I want to be able to add new bookmarks
