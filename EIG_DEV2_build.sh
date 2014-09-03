#!/bin/bash  
    echo ************************************************************************************
    echo ************************************************************************************
    echo ************************************************************************************
    echo "Project EIG_DEV2_Build"
    echo "launch build at: http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/build?token=kana"
    echo "log available at http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/lastBuild/console"
    echo "see: http://ljv5555.github.io/kanatmp"
    echo ************************************************************************************
    echo ************************************************************************************
    export BUILD_TAG=$1  
    echo ***BUILD_TAG=$BUILD_TAG*** 
    export CORE_HOME=/home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1      
    echo ***CORE_HOME=$CORE_HOME***  
    export ENVIRONMENT_NAME=devKeSp1
    echo ***ENVIRONMENT_NAME=$ENVIRONMENT_NAME***
    export SET_ENVIRONMENT_NAME=" -Denvironment.name=$ENVIRONMENT_NAME "
    echo ***SET_ENVIRONMENT_NAME=$SET_ENVIRONMENT_NAME*** 
    export BUILD_NUMBER=$1  
    echo ***BUILD_NUMBER=$BUILD_NUMBER*** 
    export BUILD_ZIP_FILE=$BUILD_TAG/$BUILD_TAG.zip  
    echo ***BUILD_ZIP_FILE=$BUILD_ZIP_FILE***
    echo " "
    echo "The release bundle zip file will be created: $CORE_HOME/$ZIP_FILE_NAME"
    echo " "
    echo ************************************************************************************
    echo ************************************************************************************ 
    echo ************************************************************************************
    echo " "
	
    echo remove old files so disk wont be full...  
    echo rm -vrf $CORE_HOME/work/*  
    rm -vrf $CORE_HOME/work/*  
    echo ************************************************************************************
    echo ************************************************************************************ 
    echo ************************************************************************************
    # ######################################################################################  
    echo "****************************** Running build: $1 ********************************"  
    cd $CORE_HOME  
    echo running svn update...  
    echo svn update  
    cd $CORE_HOME  
    svn update . --username=EIGTeamCity --password=EIGTeamCity  
    echo update complete  
    echo overwriting project properties  
	### the config file here overrides the environment name; the build was still picking up EIG_LOCAL otherwise (even with it passed in to ccadmin.sh on the command line) ### 
    cat config/project.properties.devKeSp1 > config/project.properties  
    echo ---  
    cd $CORE_HOME/bin  
    chmod +x $CORE_HOME/bin/ccadmin.sh  
    echo stopping app server...  
    cd $CORE_HOME/bin/  
    ./ccadmin stop-appserver -Denvironment.name=devKeSp1  
    echo stopped...  
    echo ./ccadmin.sh create-tag -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG -Ddefault.core.home=$CORE_HOME -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose
    ./ccadmin.sh create-tag -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG -Ddefault.core.home=$CORE_HOME -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose
    cd $CORE_HOME/bin/  
    echo --- running cmd: ---   
    echo starting app server...  
    cd $CORE_HOME/bin/  
    ./ccadmin start-appserver -Denvironment.name=devKeSp1  
    echo ************************************************************************************
    echo ************************************************************************************ 
    echo ************************************************************************************
    
      
    ##  
    echo --- running cmd 2 ---  
    echo stopping server...  
    cd $CORE_HOME/bin/  
    ./ccadmin.sh stop-appserver -Ddefault.core.home=$CORE_HOME -Denvironment.name=devKeSp1  
    echo server stopped.  
    cd $CORE_HOME/bin/  
    echo ./ccadmin.sh create-release -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG -Ddefault.core.home=$CORE_HOME -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose -Drelease.bundle.filename=$BUILD_ZIP_FILE -Drelease.bundle.location=$CORE_HOME/work 
    echo --- start ---  
    ./ccadmin.sh create-release -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG -Ddefault.core.home=$CORE_HOME -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose -Drelease.bundle.filename=$BUILD_ZIP_FILE -Drelease.bundle.location=$CORE_HOME/work  
    echo stopping server...  
    cd $CORE_HOME/bin/  
    ./ccadmin.sh stop-appserver -Ddefault.core.home=$CORE_HOME -Denvironment.name=devKeSp1  
    echo server stopped.  
    echo --- end cmd 2 ---  
      
    echo ************************************************************************************
    echo ************************************************************************************ 
    echo ************************************************************************************
    
      
    ###  
    #echo --- running cmd 3 ---  
    #  
    #  
    #  
    #  
    #  
    #echo cd $CORE_HOME/work$CORE_HOME/  
    #cd $CORE_HOME/work$CORE_HOME/  
    #mkdir $BUILD_TAG  
    #cd $BUILD_TAG  
    #echo dir=`pwd`  
    #echo unzip ../$BUILD_TAG  
    #unzip ../$BUILD_TAG  
    #cd $CORE_HOME/bin/  
    #echo stopping server...  
    #cd $CORE_HOME/bin/  
    #./ccadmin.sh stop-appserver -Ddefault.core.home=$CORE_HOME -Denvironment.name=devKeSp1  
    #echo server stopped.  
    #echo --- cmd 3 complete ---  
    #  
    ###  
    #echo --- cmd 4 ---  
    #cd $CORE_HOME/bin/  
    #echo ./ccadmin.sh deploy-release -Denvironment.name=devKeSp1 -Ddefault.core.home=$CORE_HOME  -Dvcs.tag=$BUILD_TAG -Drelease.jar.file=$CORE_HOME/work$CORE_HOME/jenkins-EIG_DEV2_Build-64/releases/exported-release.jar  
    #./ccadmin.sh deploy-release -Denvironment.name=devKeSp1 -Ddefault.core.home=$CORE_HOME  -Dvcs.tag=$BUILD_TAG -Drelease.jar.file=$CORE_HOME/work$CORE_HOME/jenkins-EIG_DEV2_Build-64/releases/exported-release.jar  
    #echo stopping server...  
    #cd $CORE_HOME/bin/  
    #./ccadmin.sh stop-appserver -Ddefault.core.home=$CORE_HOME -Denvironment.name=devKeSp1  
    #echo server stopped.  
    #echo --- cmd 4 complete ---  
    #echo ----------------------  
    #echo --- cmd 5 ---  
    #cd $CORE_HOME/bin/  
    #echo ./ccadmin.sh upgrade-database -Ddefault.core.home=$CORE_HOME -Denvironment.name=devKeSp1  
    #./ccadmin.sh upgrade-database -Ddefault.core.home=$CORE_HOME -Denvironment.name=devKeSp1  
    #echo -------------------------------------------------------  
    #echo -------------------------------------------------------  
    #echo -------------------------------------------------------  
    #echo -------------------------------------------------------  
    #echo -------------------------------------------------------  
    #echo starting app-server...  
    #cd $CORE_HOME/bin/  
    #./ccadmin.sh stop-appserver -Ddefault.core.home=$CORE_HOME -Denvironment.name=devKeSp1  
    #echo server started.  
    #  
    #  
    #echo --- cmd 5 complete ---  
    #  
    #  
    #  
    #######./ccadmin.sh create-tag -Denvironment.name=devKeSp1 -Dvcs.tag=jenkins-EIG_DEV2_Build-55 -Ddefault.core.home=$CORE_HOME -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose  
    #  
    #  
    ##./ccadmin.sh  create-tag    -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG -Ddefault.core.home=/home/kana/   -Dsvn.username=EIGTeamCity -Dsvn.password=EIGTeamCity -verbose  
    ##echo --- --- ran create tag command --- --- ---  
    #  
    ## -lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.bundle.file=%eig.bundle.location%/EIG_BUILD_%system.build.number%.zip -Drelease.name=%eig.release.name% -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -Drepository.password=eT3qPmbu -Drepository.username=admin  
    #  
    ## <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number%  -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -verbose" />  
    ##            
    #  
    #### ./ccadmin.sh  create-release    -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG  -Dvcs.username=EIGTeamCity -Dvcs.password=EIGTeamCity  
    #  
    #  
    #### svn copy "https://drive.ciboodle.com/SVN/EIG/trunk" "https://drive.ciboodle.com/SVN/EIG/tags/$BUILD_TAG" -m "$BUILD_TAG createdByJenkins-EIG_DEV2" --username EIGTeamCity --password EIGTeamCity  
    #  
    #  
    #  
    #  
    #  
    #  
    ##echo - - - - - - - - - -  
    ##echo svn switch to new tag ... "https://drive.ciboodle.com/SVN/EIG/tags/$BUILD_TAG"  
    ##cd $CORE_HOME  
    ##svn switch "https://drive.ciboodle.com/SVN/EIG/tags/$BUILD_TAG" --username EIGTeamCity --password EIGTeamCity  
    ##echo -- create release --  
    ##cd $CORE_HOME/bin  
    ##./ccadmin.sh  create-release    -Denvironment.name=devKeSp1 -Dvcs.tag=$BUILD_TAG  -Dvcs.username=EIGTeamCity -Dvcs.password=EIGTeamCity  
    ##echo - - - - - - - - - -  
    ##echo - - - - - - - - - -  
    ##echo - - - - - - - - - -  
    ##echo - - - - - - - - - -  
    ##echo - - - - - - - - - -  
    #echo --- end --- running build.sh for EIG_DEV2 $BUILD_TAG  
    #  
    #  
    ## while true; do ./myserver; echo restarting; done  
    #  
    #  
    ##          <param name="build-file-path" value="scripts/commands/create-tag.xml" />  
    ##          <param name="jvmArgs" value="-Xmx512m -Xms512m" />  
    ##          <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number%  -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -verbose" />  
    ##          <param name="target" value="run" />  
    #   
    ##          <param name="build-file-path" value="scripts/commands/create-release.xml" />  
    ##          <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.bundle.file=%eig.bundle.location%/EIG_BUILD_%system.build.number%.zip -Drelease.name=%eig.release.name% -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -Drepository.password=eT3qPmbu -Drepository.username=admin" />  
    ##          <param name="target" value="run" />  
    #  
    ##          <param name="script.content" value="./ccadmin.sh stop-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />  
    #  
    ##          <param name="script.content" value="unzip -o %build.number% -d %eig.release.location%" />  
    #  
    ##          <param name="script.content" value="./ccadmin.sh deploy-release -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%eig.release.location% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.jar.file=%eig.release.location%/releases/exported-release.jar" />  
    #  
    ##          <param name="script.content" value="./ccadmin.sh stop-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />  
    #  
    ##          <param name="script.content" value="./ccadmin.sh upgrade-database -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />  
    #  
    ##          <param name="script.content" value="./ccadmin.sh start-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />  
    #  
    ##          <param name="build-file-path" value="scripts/commands/run-ccadmin-script.xml" />  
    ##          <param name="jvmArgs" value="-Xmx768m -Xms768m" />  
    ##          <param name="runnerArgs" value="-lib lib/antlib -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Denvironment.name=%kana.environment.name% -Dcommand.list=stop-solr,start-solr" />  
    ##          <param name="target" value="run" />  
    #  
    ##          <param name="build-file-path" value="scripts/commands/clean.xml" />  
    ##          <param name="runnerArgs" value="-lib lib/antlib -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Denvironment.name=%kana.environment.name%" />  
    ##          <param name="target" value="run" />  
    
