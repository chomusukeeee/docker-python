# docker_python
Build a python development environment with docker.

## Procedure to display hello world

1.Execute the following command in the docker_python directory  
  `docker-compose up -d --build`

2.Enter the python3 container with the following command  
  `docker-compose exec python3 bash`

3.Finally, run "src/hello_world.py" with the following command  
  `python hello_world.py`
