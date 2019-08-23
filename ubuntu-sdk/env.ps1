$PWD=(Get-Item -Path ".\").FullName

docker run --rm `
  -e http_proxy=http://proxy.olympus.co.jp:8080 `
  -e https_proxy=http://proxy.olympus.co.jp:8080 `
  --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH `
  -v $PWD/workspace:/root -it ubuntu-sdk