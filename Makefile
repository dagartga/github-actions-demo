install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements-aws.txt
		
install-aws-ubuntu:
	pip install --upgrade pip &&\
		pip install -r aws-ubuntu.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py