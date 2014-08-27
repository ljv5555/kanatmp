#!/bin/bash
echo --- start --- running build.sh for EIG_DEV2



cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1

svn update . --username=EIGTeamCity --password=EIGTeamCity
echo - - - - - - - - - -
echo svn copy https://drive.cobiidle.com/SVN/EIG/trunk https://drive.cobiidle.com/SVN/EIG/branches/EIG_DEV2_BUILD_${BUILD_TAG} --username=EIGTeamCity --password=EIGTeamCity





echo --- end --- running build.sh for EIG_DEV2



 
