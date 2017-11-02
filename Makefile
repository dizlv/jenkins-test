test:
	docker run -it -v ${PWD}/artifacts:/artifacts registry.supremeteam.io:5000/application pytest --junit-xml=/artifacts/report.xml

bake:
	docker build -t registry.supremeteam.io:5000/application .

push_image:
	docker login -u administrator -p supremeteam_administrator registry.supremeteam.io:5000
	docker push registry.supremeteam.io:5000/application