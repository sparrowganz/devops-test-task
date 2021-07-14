run_staging:

test:
	docker-compose -f docker-compose_test.yaml up test
	docker-compose -f docker-compose.yaml down --remove-orphans

build_test:
	docker-compose -f docker-compose_test.yaml build test

run_db:
	docker-compose -f docker-compose.yaml up db

run_db_daemon:
	docker-compose -f docker-compose.yaml up -d db

stop_db:
	docker-compose -f docker-compose.yaml down

clean_test:
	docker-compose -f docker-compose_test.yaml down --remove-orphans
	docker-compose -f docker-compose_test.yaml rm --remove-orphans

