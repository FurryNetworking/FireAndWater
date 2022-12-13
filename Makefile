deps_instances:
		zypper -n install clang htop neofetch wget curl zypper-aptitude go
		zypper -n install libXcomposite1 libXi6 libXext6 libXau6
		zypper -n inatall libX11-6 libXrandr2 libXrender1 libXss1 libXtst6
		zypper -n install libXdamage1 libXcursor1 libxcb1 libasound2
		zypper -n install libX11-xcb1 Mesa-libGL1 Mesa-libEGL1 ufw docker
		bash installer.sh
		clang delete_anaconda_script.cpp -o delete_anaconda_script
		./delete_anaconda_script

tumbleweed:
		sudo zypper addrepo https://download.opensuse.org/repositories/devel:languages:go/openSUSE_Leap_15.2/devel:languages:go.repo

leap:
		sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.repo

docker_cleaner_instance:
		clang delete_docker_script.cpp

typescript_enviroment:
		npm install
		npm i --save-dev @types/node

element_files:
		chmod 700 tasks.sh
		./tasks.sh -t 9
		rm -rf out
		mkdir out
		./tasks.sh -t 24
		cp -r . out/
		sudo zypper install ruby
		gem install nokogiri
		ruby deleter.rb

jarfile:
		rm -rf target
		docker build -f Dockerfile.java -t build-jar-inside-docker-image .
		docker create -it --name build-jar-inside-docker build-jar-inside-docker-image bash
		docker cp build-jar-inside-docker:/target ./target
		docker rm -f build-jar-inside-docker

ruby_installation:
		zypper install ruby --n

coffeefile_instance:
		npm install --global- coffeescript
		coffee -c install-docker-compose.coffee
