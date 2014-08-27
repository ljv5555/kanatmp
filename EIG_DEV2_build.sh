#!/bin/bash
echo --- start --- running build.sh for EIG_DEV2
cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1

echo svn update...
svn update . --username=EIGTeamCity --password=EIGTeamCity


echo svn copy https://drive.cobiidle.com/SVN/EIG/trunk https://drive.cobiidle.com/SVN/EIG/branches/${BUILD_TAG} --username=EIGTeamCity --password=EIGTeamCity
svn copy https://drive.cobiidle.com/SVN/EIG/trunk https://drive.cobiidle.com/SVN/EIG/branches/${BUILD_TAG} --username=EIGTeamCity --password=EIGTeamCity



echo - - - - - - - - - -





echo --- end --- running build.sh for EIG_DEV2 ${BUILD_TAG}




 
