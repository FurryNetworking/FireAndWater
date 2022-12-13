# FireandWater Enviorment
# NOTE: Java password generator was written by mkyong.

#### This was a enviroment designed for soafen, Fox Networking (if they request it and want it), and also for SinjohConnect24.

#### It's a bit of a chore to get working, but it's still very well designed and easy to get going once you get the hang of it.

###### Before anything, if make isn't installed, PLEASE install it.
###### Step 1: First off, we're going to want to get ready for things. Run ``for i in {0..8}; do ./tasks.sh -t $i; done`` to prepare the enviroment.
###### Step 2: Next, we're going to want to run ``sudo make deps_instances``, followed by ``chmod 777 installer.sh && sudo bash installer.sh`` to grab our dependencies. Be sure to run through the Anaconda installer as well, and configure it to be at least Python 3.
###### Step 3, Next, run ``make typescript_enviroment`` to setup our Typescript dependencies.
###### Step 4, Next, run ``tsc configurator.ts`` and follow the prompts to setup our configs.
###### Step 5, Next, run ``systemctl start docker && docker build -f Dockerfile.java .``. This will build the password generator we'll be using in a moment, and also install Java runtimes.
###### Step 6, Next, run ``sudo make textediting_instance``. This will install a few needed things if you don't already have them.
###### Step 7, Next, run ``make jarfile && java -jar generator.jar``. This will give you a password, put it somewhere or copy it, because you'll need it very shortly.
###### Step 8, Next, run ``nano docker-compose-element.yml`` and change STRONGPASSWORD to the password our JAR file spit out, that you copied earlier or saved somewhere.
###### Step 9, Next, run ``sudo make coffeefile_instance``. This will get docker-compose installed.
###### Step 10, Next, run ``sudo make element_files && docker-compose up -f docker-compose-portainer.yml up -d``. This will bring up the portainer enviornment.
###### Step 11, Next, run ``coffee make_networks.coffee`` and that will create the needed network bridges to run Element.
###### Step 12, Next run ``cp -r *.yaml $CD/out/ && cp -r *.json $CD/out/ && cd out``. This will get us ready to bootup Element.
###### Step 13, Finally, run ``docker-compose up -f $CD/docker-compose-element.yml up -d`` and this will start Element! Voila, everything is now booted up, and should be ready to go?
