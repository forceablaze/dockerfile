$PWD=(Get-Item -Path ".\").FullName

docker run -d --rm --name woodpecker -p 8000:8000 `
	-v $PWD/db:/var/lib/woodpecker/woodpecker/db `
	-v $PWD/media:/var/lib/woodpecker/woodpecker/media `
	-it woodpecker