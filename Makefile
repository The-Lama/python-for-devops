PYTHON := python3
PIP := pip
REQUIREMENTS := requirements.txt

.PHONY: install
install:
	$(PIP) install --upgrade $(PIP)
	$(PIP) install -r $(REQUIREMENTS)
