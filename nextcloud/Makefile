## gen
.PHONY: gen

gen:
	./servicedef-gen.sh

## local testing
.PHONY: devup devdown
devup:
	docker-compose -f dc.main.yaml -f dc.dev.yaml up -d

devdown:
	docker-compose -f dc.main.yaml -f dc.dev.yaml down

## service
SERVICE_STACK=nextcloud
.PHONY: launch danger-land
launch:
	docker stack deploy -c defs/dc.nextcloud.yaml $(SERVICE_STACK)

danger-land:
	docker stack rm $(SERVICE_STACK)
