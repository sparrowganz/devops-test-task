# devops-test-task
Test task for DevOps Specialisation

---
## Testing

All test running into docker containers and stopped after work.

#### Examples:
Start Test: 
```
make test
```

Build Test Containers (not running): 
```
make build_test
```

Clean stopped Containers (after tests):
```
make clean_test
```

For time optimization: Container must be builded in advance and deployed for container registry. From the start test this container will be downloaded 

---
## Database

App use PostgresSQL database.

For run in staging area: 
```
make run_db
make run_db_daemon (daemon mode)
```

For stopping database:
```
make stop_db
```