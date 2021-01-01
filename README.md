# devops
project for kakaopay

웹 어플리케이션 spring-petclinic-data-jdbc을 kubernetes 환경에서 실행하고자 합니다. 다음의 요구 사항에 부합하도록 빌드 스크립트, 어플리케이션 코드 등을 작성하십시오.
kubernetes에 배포하기 위한 manifest 파일을 작성하십시오. 

요구 사항
-gradle을 사용하여 어플리케이션과 도커이미지를 빌드한다.
-어플리케이션의 log는 host의 /logs 디렉토리에 적재되도록 한다.
-정상 동작 여부를 반환하는 api를 구현하며, 10초에 한번 체크하도록 한다. 3번 연속 체크에 실패하 면 어플리케이션은 restart 된다.
-종료 시 30초 이내에 프로세스가 종료되지 않으면 SIGKILL로 강제 종료 시킨다.
-배포 시와 scale in/out 시 유실되는 트래픽이 없어야 한다.
-어플리케이션 프로세스는 root 계정이 아닌 uid:1000으로 실행한다.
-DB도 kubernetes에서 실행하며 재 실행 시에도 변경된 데이터는 유실되지 않도록 설정한다. 어플리케이션과 DB는 cluster domain을 이용하여 통신한다.
-nginx-ingress-controller를 통해 어플리케이션에 접속이 가능하다.
-namespace는 default를 사용한다.
-README.md 파일에 실행 방법을 기술한다.

