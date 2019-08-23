$PWD=(Get-Item -Path ".\").FullName

docker run --rm --name woodpecker-test `
	-v $PWD/woodpecker:/etc/nginx/conf.d/woodpecker.conf:ro `
	-v $PWD/dist:/usr/share/woodpecker:ro `
	-p 8080:8080 `
	nginx