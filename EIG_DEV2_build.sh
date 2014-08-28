#!/bin/bash
export BUILD_NUMBER=%1
export BUILD_TAG=%1
cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1
echo running svn update...
svn update . --username=EIGTeamCity --password=EIGTeamCity
echo making build...
svn copy https://drive.ciboodle.com/SVN/EIG/trunk https://drive.ciboodle.com/SVN/EIG/tags/$BUILD_TAG -m "$BUILD_TAG createdByJenkins-EIG_DEV2" --username=EIGTeamCity --password=EIGTeamCity
echo - - - - - - - - - -
echo svn switch...
cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
svn switch https://drive.ciboodle.com/SVN/EIG/tags/$BUILD_TAG --username=EIGTeamCity --password=EIGTeamCity
echo -- create release --
cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
./ccadmin.sh  create-release    -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG  --username=EIGTeamCity --password=EIGTeamCity
echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo --- end --- running build.sh for EIG_DEV2 $BUILD_TAG


# while true; do ./myserver; echo restarting; done



 
