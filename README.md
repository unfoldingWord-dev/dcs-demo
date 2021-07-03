# DCS for tx-dev

This is a Docker build repo for DCS using `unfoldingword/dcs:latest-qa` as the Docker image and then copies the data and repositories from the data.tar.gz and unfoldingword_repos directory into the images /data directory so it is a fully populated DCS instance with unfolindgWord repos and 3 users

# Using (Spinning Up)

This is used for the [tx-dev](https://github.com/unfoldingword/tx-dev) pipline for testing the triggering of a resource's conversion, but can be used by itself.

To spin this up, first edit the docker-compose.yml file if you want the port to be something other than 5555, change it where DCS_PORT is specified as an environment variable. Also remove the volumnes line where it overrides the `/data` directory with `./data` if you don't need to keep a copy of the data. If you do want to keep the data, leave the docker-compse.yml file as is and run `./untar_data.sh` to unpack the tar files into the ./data directory.

Next, run `docker-compose up` and then point your browser to http://localhost:5555 (or whatever port you specified)

# DCS Credentials

Here are the users, the passwords, and their Application Tokens for the API:

user: root
password: DCS@test123
API token: 84f6fc16baf206fe9f4812e10546dd0f64096f64
description: super user, full admin access

user: uwuser
password: DCS@test123
API token: 67ce2ee6f83d0f350f165233843babf940cc6a97
descriptoin: User, owner of unfoldingWord org

user: door43user
password: DCS@test123
API token: 6a3419a11b9379ab5c8c734ef67100f7f7f90a66
description: User, owner of Door43-Catalog org
