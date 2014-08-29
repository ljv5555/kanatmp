#!/bin/bash
# ######################################################################################
echo "****************************** Running build: $1 ********************************"
export BUILD_NUMBER=$1
export BUILD_TAG=$1
cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1
echo running svn update...
#w svn update . --username=EIGTeamCity --password=EIGTeamCity
#echo making build...
########################################## above this are working but commented for testing ####################
#echo svn switch...
#cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1
#svn switch "https://drive.ciboodle.com/SVN/EIG/trunk" --username EIGTeamCity --password EIGTeamCity



#echo svn update
#cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1
#svn update . --username=EIGTeamCity --password=EIGTeamCity

cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
pwd
# ls -al
chmod +x /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin/ccadmin.sh
# ls -al
export next_cmd="./ccadmin.sh create-tag -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG -Ddefault.core.home=/home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1
-Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose"
echo --- running cmd: --- 
echo $next_cmd

cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin/
echo "#!/bin/bash" > next_cmd.sh
echo $next_cmd >> next_cmd.sh
chmod +x next_cmd.sh
./next_cmd.sh

##
echo --- running cmd 2 ---

export next_cmd="echo ./ccadmin.sh create-release -lib lib/antlib -Ddefault.core.home=/home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1 -Dvcs.tag=$BUILD_TAG -Drelease.bundle.file=-Ddefault.core.home=/home/kana/KANAEnterprise/KE13R1/bundles/$BUILD_TAG.zip -Drelease.name=Resources.Releases.EIGRelease -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -Drepository.password=eT3qPmbu -Drepository.username=admin -verbose"
cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin/
echo "#!/bin/bash" > next_cmd.sh
echo $next_cmd >> next_cmd.sh
chmod +x next_cmd.sh
./next_cmd.sh



######./ccadmin.sh create-tag -Denvironment.name=devKeSp1 -Dvcs.tag=jenkins-EIG_DEV2_Build-55 -Ddefault.core.home=/home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1 -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose

echo -- ran next_cmd.sh ---


#./ccadmin.sh  create-tag    -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG -Ddefault.core.home=/home/kana/   -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose
echo --- --- ran create tag command --- --- ---

# -lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.bundle.file=%eig.bundle.location%/EIG_BUILD_%system.build.number%.zip -Drelease.name=%eig.release.name% -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -Drepository.password=eT3qPmbu -Drepository.username=admin

# <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number%  -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -verbose" />
#          

### ./ccadmin.sh  create-release    -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG  -Dvcs.username=EIGTeamCity -Dvcs.password=EIGTeamCity


### svn copy "https://drive.ciboodle.com/SVN/EIG/trunk" "https://drive.ciboodle.com/SVN/EIG/tags/$BUILD_TAG" -m "$BUILD_TAG createdByJenkins-EIG_DEV2" --username EIGTeamCity --password EIGTeamCity






echo - - - - - - - - - -
#echo svn switch to new tag ... "https://drive.ciboodle.com/SVN/EIG/tags/$BUILD_TAG"
#cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1
#svn switch "https://drive.ciboodle.com/SVN/EIG/tags/$BUILD_TAG" --username EIGTeamCity --password EIGTeamCity
#echo -- create release --
#cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
#./ccadmin.sh  create-release    -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG  -Dvcs.username=EIGTeamCity -Dvcs.password=EIGTeamCity
#echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo - - - - - - - - - -
echo --- end --- running build.sh for EIG_DEV2 $BUILD_TAG


# while true; do ./myserver; echo restarting; done


#          <param name="build-file-path" value="scripts/commands/create-tag.xml" />
#          <param name="jvmArgs" value="-Xmx512m -Xms512m" />
#          <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number%  -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -verbose" />
#          <param name="target" value="run" />

#          <param name="build-file-path" value="scripts/commands/create-release.xml" />
#          <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.bundle.file=%eig.bundle.location%/EIG_BUILD_%system.build.number%.zip -Drelease.name=%eig.release.name% -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -Drepository.password=eT3qPmbu -Drepository.username=admin" />
#          <param name="target" value="run" />

#          <param name="script.content" value="./ccadmin.sh stop-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />

#          <param name="script.content" value="unzip -o EIG_BUILD_%build.number% -d %eig.release.location%" />

#          <param name="script.content" value="./ccadmin.sh deploy-release -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%eig.release.location% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.jar.file=%eig.release.location%/releases/exported-release.jar" />

#          <param name="script.content" value="./ccadmin.sh stop-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />

#          <param name="script.content" value="./ccadmin.sh upgrade-database -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />

#          <param name="script.content" value="./ccadmin.sh start-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />

#          <param name="build-file-path" value="scripts/commands/run-ccadmin-script.xml" />
#          <param name="jvmArgs" value="-Xmx768m -Xms768m" />
#          <param name="runnerArgs" value="-lib lib/antlib -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Denvironment.name=%kana.environment.name% -Dcommand.list=stop-solr,start-solr" />
#          <param name="target" value="run" />

#          <param name="build-file-path" value="scripts/commands/clean.xml" />
#          <param name="runnerArgs" value="-lib lib/antlib -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Denvironment.name=%kana.environment.name%" />
#          <param name="target" value="run" />


 
