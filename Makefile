install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv test_hello.py

format:
	black hello.py

lint:
	pylint --disable=R,C hello.py

all: install lint test format