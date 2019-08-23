docker run -d `
  --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH `
  ubuntu-jenkins-slave `
  -url http://10.155.66.151/jenkins 4cf5974e11e88a589a033a649272c47aa1e9a84f5af5823d7b93b7bef11c5d86 linux-docker-slave