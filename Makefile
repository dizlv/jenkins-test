test:
	pytest --junitxml=report.xml

bake:
	docker build .

push_image:
	docker login registry.supremeteam.io:5000
	docker push registry.supremeteam.io:5000/application:v1