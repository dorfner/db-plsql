# Collaborative SQL & PL/SQL Project

This project consists of SQL and PL/SQL scripts for creating tables, triggers, functions, and procedures, as well as testing queries and database operations.

This project was developed as part of a practical work assignment for my "Database II" class during the 3d year of my bachelor's degree (Computer Science degree at University of Strasbourg). It served as an opportunity to strengthen my skills in SQL and PL/SQL scripting techniques for database management and development.

You can access the assignement description (in French), available in the root of this repository.

## Scripts Overview

- **Initialization Script:** To create and populate all tables, as well as to create triggers, functions, and procedures, run:
  ```
  @script_init.sql
  ```
  If necessary, the script can be rerun after the tables have been created (the tables/triggers/etc. will be dropped before being recreated).

- **Testing Script:** To test functions, procedures, and triggers, run:
  ```
  @script_test.sql
  ```

- **Query Testing Script:** To test queries, run:
  ```
  @script_requetes.sql
  ```

- Ensure that proper database connectivity and permissions are set up before running the scripts.


## Individual Testing

For individual testing of queries, they can be executed separately as follows:
```
@queries/select1.sql
```

## Project Collaboration

This project was done with a partner, granted permission for sharing this project. I took care of the selection queries and handled the second part of procedures and triggers. We split the rest equally. My friend's okay with sharing it here.

## Notes

- As a learning project, the focus was on applying algorithmic concepts rather than producing perfectly polished code.

- This README.md was created with the assistance of ChatGPT 3.5.

## License

This project is licensed under the MIT License.
