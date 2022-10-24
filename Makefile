install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv app.py


lint:
	pylint --disable=R,C test_app.py

all: install lint test
