test:
	pytest --junitxml=report.xml

bake:
	docker build .

push_image:
	docker push localhost:5000/application