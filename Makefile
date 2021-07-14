test:
	docker-compose -f docker-compose_test.yaml up test
	docker-compose -f docker-compose.yaml down --remove-orphans

build_test:
	docker-compose -f docker-compose_test.yaml build test

clean_test:
	docker-compose -f docker-compose_test.yaml down --remove-orphans
	docker-compose -f docker-compose_test.yaml rm --remove-orphans

