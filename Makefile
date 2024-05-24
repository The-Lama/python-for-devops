PYTHON := python3
PIP := pip
REQUIREMENTS := requirements.txt
DEV-REQUIREMENTS := dev-requirements.txt

.PHONY: install
install:
	$(PIP) install --upgrade $(PIP)
	$(PIP) install -r $(REQUIREMENTS)

.PHONY: dev-install
dev-install:
	$(PIP) install --upgrade $(PIP)
	$(PIP) install -r $(DEV-REQUIREMENTS)

.PHONY: lint
lint:
	pylint --disable=R,C *.py devopslib

.PHONY: format
format:
	black *.py


.PHONY: all
all: dev-install lint format
