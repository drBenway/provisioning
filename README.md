# provisioning
the idea is to run as many apps as possible via docker containers
only basic provisioning will be done via bash script outside docker

The goal is to have a .mySettings folder under $HOME that contains
shortcuts to the different docker images

todos:
- write script that auto runs docker-slim

fixes:
Firefox doesn't start with display error?  try running 'xhost local:root'