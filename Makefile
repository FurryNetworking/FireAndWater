deps_instances:
  sudo zypper install clang htop neofetch wget curl zypper-aptitude go 
  sudo zypper install zypper install libXcomposite1 libXi6 libXext6 libXau6
  sudo zypper isntall libX11-6 libXrandr2 libXrender1 libXss1 libXtst6
  sudo zypper install libXdamage1 libXcursor1 libxcb1 libasound2 
  sudo zypper install libX11-xcb1 Mesa-libGL1 Mesa-libEGL1
  bash installer.sh
  clang delete_anaconda_script.cpp -o delete_anaconda_script
  ./delete_anaconda_script
  bash cleanup.sh

tumbleweed:
  sudo zypper addrepo https://download.opensuse.org/repositories/devel:languages:go/openSUSE_Leap_15.2/devel:languages:go.repo

leap:
  sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.repo

docker_cleaner_instance:
  clang clean_docker_instance.cpp

typescript_enviroment:
  npm install
