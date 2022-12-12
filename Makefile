deps_instances:
    sudo zypper install clang htop neofetch wget curl zypper-aptitude go 
    sudo zypper install zypper install libXcomposite1 libXi6 libXext6 libXau6
    sudo zypper isntall libX11-6 libXrandr2 libXrender1 libXss1 libXtst6
    sudo zypper install libXdamage1 libXcursor1 libxcb1 libasound2 
    sudo zypper install libX11-xcb1 Mesa-libGL1 Mesa-libEGL1 ufw
    bash installer.sh
    clang delete_anaconda_script.cpp -o delete_anaconda_script
    ./delete_anaconda_script

tumbleweed:
    sudo zypper addrepo https://download.opensuse.org/repositories/devel:languages:go/openSUSE_Leap_15.2/devel:languages:go.repo

leap:
    sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.repo

docker_cleaner_instance:
    clang clean_docker_instance.cpp

typescript_enviroment:
    npm install

element_files:
    ELEMENT_VERSION=$(python3 get_element.py)
    wget -O element.tar.gz https://github.com/vector-im/element-web/releases/download/$ELEMENT_VERSION/element-$ELEMENT_VERSION.tar.gz
    tar -xvf element.tar.gz
    mkdir $CD/out
    mv element-$ELEMENT_VERSION out
    sudo zypper install rsync
    rsync -a $CD/ $CD/out/
    sudo zypper install ruby
    gem install nokogiri
    ruby deleter.rb

textediting_instance:
    sudo apt install nano vim

coffeefile_instance:
    sudo apt install coffeescript

jarfile:
    docker build -t build-jar-inside-docker-image .
    docker create -it --name build-jar-inside-docker build-jar-inside-docker-image bash
    docker cp build-jar-inside-docker:/target ./target
    docker rm -f build-jar-inside-docker
