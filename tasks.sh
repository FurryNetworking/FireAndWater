while getopts t: flag
do
    case "${flag}" in
        t) task_no=${OPTARG};;
    esac
done

if [ $task_no = 0 ]; then
  echo [INFO] Cleaning anaconda script.....
  rm -rf ./delete_anaconda_script
elif [ $task_no = 1 ]; then
  echo [INFO] Cleaning files that did not meet gitignore.....
  if [[ -f requirements.txt ]]; then
    rm -rf requirements.txt
  fi
  if [[ -f version.xml ]]; then
    rm -rf version.xml
  fi
  if [[ -f anaconda.xml ]]; then
    rm -rf anaconda.xml
  fi
elif [ $task_no = 2 ]; then
  sudo zypper install typescript htop
elif [ $task_no = 3 ]; then
  chmod 755 Makefile*
elif [ $task_no = 4 ]; then
  chmod 755 Dockerfile*
elif [ $task_no = 5 ]; then
  chmod 755 *.ts
elif [ $task_no = 6 ]; then
  make ruby_installation --file Makefile.runtimes
elif [ $task_no = 7 ]; then
  git clone https://github.com/cginternals/cppfs
elif [ $task_no = 8 ]; then
  set path=$CD/cppfs
  cd $path
  pwd
  curl -fsSL https://get.docker.com -o get-docker.sh
  bash get-docker.sh
  docker build -f Dockerfile
  set current_directory=$CD
  cd $current_directory
  pwd
  echo Built.
  make docker_cleaner_instance --file Makefile.main
  ./delete_docker_script
  make typescript_environment --file Makefile.main
elif [ $task_no = 9 ]; then
  ELEMENT_VERSION=$(python3 get_element.py)
  wget -O element.tar.gz https://github.com/vector-im/element-web/releases/download/$ELEMENT_VERSION/element-$ELEMENT_VERSION.tar.gz
  tar -xvf element.tar.gz
elif [ $task_no = 24 ]; then
  ELEMENT_VERSION=$(python3 get_element.py)
  mv element-$ELEMENT_VERSION out
else
  echo An error occured.
fi
