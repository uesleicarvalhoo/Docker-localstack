run_aws:
	@docker-compose -f aws/docker-compose.yaml up -d

run_cache:
	@docker-compose -f cache/docker-compose-insight.yaml up -d
	@docker-compose -f cache/docker-compose-redis.yaml up -d

run_database:
	@docker-compose -f database/docker-compose-mongodb.yaml up -d
	@docker-compose -f database/docker-compose-mysql.yaml up -d
	@docker-compose -f database/docker-compose-postgree.yaml up -d

run_elasticsearch:
	@docker-compose -f elasticsearch/docker-compose.yaml up -d

run_all:
	@make run_aws
	@make run_cache
	@make run_database
	@make run_elasticsearch
