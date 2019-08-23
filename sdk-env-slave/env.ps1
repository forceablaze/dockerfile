docker run -d `
  --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH `
  sdk-env-slave `
  -url http://10.155.66.151/jenkins 80f655329576d232b50e53284340229c1715dbe7c16da77a0ea68a0c278b1226 linux-sdk-slave 