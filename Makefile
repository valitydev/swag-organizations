UTILS_PATH := build-utils
TEMPLATES_PATH := .

SERVICE_NAME := swag-organisations
BUILD_IMAGE_TAG := 442c2c274c1d8e484e5213089906a4271641d95e

CALL_ANYWHERE := all validate
CALL_W_CONTAINER := $(CALL_ANYWHERE)

all: validate

-include $(UTILS_PATH)/make_lib/utils_container.mk

.PHONY: $(CALL_W_CONTAINER)

validate:
	npm install

validate:
	npm run validate
