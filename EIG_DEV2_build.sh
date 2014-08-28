#!/bin/bash
echo --- start --- running build.sh for EIG_DEV2
cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1
echo running svn update...
svn update . --username=EIGTeamCity --password=EIGTeamCity
echo making build...
echo svn copy https://drive.ciboodle.com/SVN/EIG/trunk https://drive.ciboodle.com/SVN/EIG/branches/${BUILD_TAG} --username=EIGTeamCity --password=EIGTeamCity
svn copy https://drive.ciboodle.com/SVN/EIG/trunk https://drive.ciboodle.com/SVN/EIG/branches/${BUILD_TAG} -m "${BUILD_TAG} createdByJenkins-EIG_DEV2" --username=EIGTeamCity --password=EIGTeamCity
echo - - - - - - - - - -
echo -- create release --
cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
export BUILD_TAG_0=`java -jar jseval.jar (new Date()).getTime()` 
./ccadmin.sh  create-release -Dvcs.tag=$BUILD_TAG_0   -Denvironment.name=devKeSp1
echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo --- end --- running build.sh for EIG_DEV2 ${BUILD_TAG}


# while true; do ./myserver; echo restarting; done



 
