#! /usr/bin/env bash

#SCRIPTPATH=$(cd "$(dirname "$0")" && pwd)
#TARGETPATH=$(cd "${SCRIPTPATH}" && cd "../build" && pwd)
#BASEPATH=$(cd "${SCRIPTPATH}" && cd ".." && pwd)



deploy() {
  echo
  echo "Strartig Deploy Web App."

  echo "[01] Build Java File"
  #gradle build -b $BASEPATH/build.gradle

  echo "[02] Build Docker image File"
  #cd $TARGETPATH
  #version=`cat DockerBuildVersion.txt`
  #docker build -f DockerfileWebApp -t webapp:$version .

  
  
  echo "[03] create kube mafifest"
  echo " All Container Deploy Complieted!" 
}

scale () {

}

install () {

}

status() {
  echo 
  echo "Status kube workload"
}

case "$1" in
  status)
    status
    ;;
  deploy)
    deploy
    ;;
  scale)
    scale
    ;;
*)
  echo "Usage: $0 {status | deploy | scale}"
esac
exit 0
