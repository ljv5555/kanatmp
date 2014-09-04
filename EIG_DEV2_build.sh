#!/bin/bash  
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "Project EIG_DEV2_Build"
    echo "launch build at: http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/build?token=kana"
    echo "log available at http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/lastBuild/console"
    echo "see: http://ljv5555.github.io/kanatmp"
    echo "************************************************************************************"
    echo "************************************************************************************"
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
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo " "
	
    echo remove old files so disk wont be full...  
    echo rm -vrf $CORE_HOME/work/*  
    rm -vrf $CORE_HOME/work/*  
#    rem echo "removing old zip file..."
#    rm -vrf /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/work/jenkins*
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "************************************************************************************"
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
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "************************************************************************************"
    
      
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
      
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo -------------------------    cmd 3 - deploy environment    -------------------------
    echo "unzipping files..."
    unzip -d /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1 -o -v /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/work/$BUILD_TAG/$BUILD_TAG*.zip
    cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
    echo ./ccadmin.sh deploy-environment -Denvironment.name=devKeSp1
    ./ccadmin.sh deploy-environment -Denvironment.name=devKeSp1

    echo "starting app-server..."
    cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
    ./ccadmin.sh start-appserver -Denvironment.name=devKeSp1
    echo "restarting solr... (uses environment.name=dev, not devKeSp1)"
    # for some reason solr uses environment named "dev"
    cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
    ./ccadmin.sh stop-solr -Denvironment.name=dev
    cd /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/bin
    ./ccadmin.sh start-solr -Denvironment.name=dev
    echo " "
    echo " "
    echo " "
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "build complete."
    echo Archive available at /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/work/$BUILD_TAG/$BUILD_TAG*.zip
    echo release jar and webserver jar available at /home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/work/
    echo Application available at http://72.232.20.205:8180/GTConnect/UnifiedAcceptor/FrameworkDesktop.Main
    echo "************************************************************************************"
    echo "************************************************************************************"
    echo "************************************************************************************"
    

      
   
