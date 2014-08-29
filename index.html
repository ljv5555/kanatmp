<!DOCTYPE html>
<head>
<style>
</style>
<script>

</script>
</head>
<body>
<h3>kanatmp</h3>
===
kana tmp repo

DEV2-EIG build script runs under job: 
<a href="http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/" target="_blank">http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/</a>

The job output is available here: 
<a href="http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/lastBuild/console" target="_blank">http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/lastBuild/console</a>

The job can be launched here:

<a href="http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/build?token=kana&cause=launchFromURL">
http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/build?token=kana&cause=launchFromURL</a>

<iframe src="http://72.232.20.205:28080/jenkins/job/EIG_DEV2_Build/lastBuild/console"></iframe>


<div class="d1">
  <div><h3>old team-city config file: </h3></div>
  <div><code><pre>
  <!--
  
  
  
  -----------------------------
  
  <build-type id="bt13" name="Create and Deploy the Release Bundle">
    <description>Tags a new release, creates a bundle from it and releases it to DEV2</description>
  <settings>
    <options>
      <option name="allowExternalStatus" value="true" />
    </options>
    <disabled-settings>
      <setting-ref ref="RUNNER_27" />
    </disabled-settings>
    <parameters>
      <param name="eig.bundle.location" value="/home/kana/KANAEnterprise/KE13R1/bundles" />
      <param name="eig.release.location" value="/home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/" />
      <param name="eig.release.name" value="Resources.Releases.EIGRelease" />
      <param name="env.checkout.dir" value="/home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/" />
      <param name="kana.environment.name" value="devKeSp1" />
      <param name="kana.svn.password" value="EIGTeamCity" />
      <param name="kana.svn.username" value="EIGTeamCity" />
    </parameters>
    <build-runners>
      <runner id="RUNNER_18" name="Create Tag" type="Ant">
        <parameters>
          <param name="ant.home" value="lib/ant" />
          <param name="build-file-path" value="scripts/commands/create-tag.xml" />
          <param name="jvmArgs" value="-Xmx512m -Xms512m" />
          <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number%  -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -verbose" />
          <param name="target" value="run" />
          <param name="teamcity.coverage.emma.include.source" value="true" />
          <param name="teamcity.coverage.emma.instr.parameters" value="-ix -*Test*" />
          <param name="teamcity.coverage.idea.includePatterns" value="*" />
          <param name="teamcity.step.mode" value="default" />
        </parameters>
      </runner>
      <runner id="RUNNER_19" name="Create Relese Bundle" type="Ant">
        <parameters>
          <param name="ant.home" value="lib/ant" />
          <param name="build-file-path" value="scripts/commands/create-release.xml" />
          <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.bundle.file=%eig.bundle.location%/EIG_BUILD_%system.build.number%.zip -Drelease.name=%eig.release.name% -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -Drepository.password=eT3qPmbu -Drepository.username=admin" />
          <param name="target" value="run" />
          <param name="teamcity.coverage.emma.include.source" value="true" />
          <param name="teamcity.coverage.emma.instr.parameters" value="-ix -*Test*" />
          <param name="teamcity.coverage.idea.includePatterns" value="*" />
          <param name="teamcity.step.mode" value="default" />
        </parameters>
      </runner>
      <runner id="RUNNER_21" name="Stop appserver" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh stop-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_22" name="Unzip release bundle for deployment" type="simpleRunner">
        <parameters>
          <param name="script.content" value="unzip -o EIG_BUILD_%build.number% -d %eig.release.location%" />
          <param name="teamcity.build.workingDir" value="%eig.bundle.location%" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_28" name="Deploy Release Bundle" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh deploy-release -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%eig.release.location% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.jar.file=%eig.release.location%/releases/exported-release.jar" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_24" name="Stop appserver" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh stop-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_25" name="Upgrade database" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh upgrade-database -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_26" name="Start appserver" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh start-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_27" name="restart solr" type="Ant">
        <parameters>
          <param name="ant.home" value="lib/ant" />
          <param name="build-file-path" value="scripts/commands/run-ccadmin-script.xml" />
          <param name="jvmArgs" value="-Xmx768m -Xms768m" />
          <param name="runnerArgs" value="-lib lib/antlib -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Denvironment.name=%kana.environment.name% -Dcommand.list=stop-solr,start-solr" />
          <param name="target" value="run" />
          <param name="teamcity.coverage.emma.include.source" value="true" />
          <param name="teamcity.coverage.emma.instr.parameters" value="-ix -*Test*" />
          <param name="teamcity.coverage.idea.includePatterns" value="*" />
          <param name="teamcity.step.mode" value="default" />
        </parameters>
      </runner>
      <runner id="RUNNER_29" name="Clean" type="Ant">
        <parameters>
          <param name="ant.home" value="lib/ant" />
          <param name="build-file-path" value="scripts/commands/clean.xml" />
          <param name="runnerArgs" value="-lib lib/antlib -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Denvironment.name=%kana.environment.name%" />
          <param name="target" value="run" />
          <param name="teamcity.coverage.emma.include.source" value="true" />
          <param name="teamcity.coverage.emma.instr.parameters" value="-ix -*Test*" />
          <param name="teamcity.coverage.idea.includePatterns" value="*" />
          <param name="teamcity.step.mode" value="default" />
        </parameters>
      </runner>
    </build-runners>
    <vcs-settings checkout-mode="ON_SERVER" labeling-type="NONE" labeling-pattern="build-%system.build.number%">
      <vcs-entry-ref root-id="4" set-label="false" />
    </vcs-settings>
    <requirements />
    <build-triggers />
    <cleanup />
  </settings>
</build-type>

guration:</h3></div>
  <div><code><pre>
  <!--
  <build-type id="bt13" name="Create and Deploy the Release Bundle">
  <description>Tags a new release, creates a bundle from it and releases it to DEV2</description>
  <settings>
    <options>
      <option name="allowExternalStatus" value="true" />
    </options>
    <disabled-settings>
      <setting-ref ref="RUNNER_27" />
    </disabled-settings>
    <parameters>
      <param name="eig.bundle.location" value="/home/kana/KANAEnterprise/KE13R1/bundles" />
      <param name="eig.release.location" value="/home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/" />
      <param name="eig.release.name" value="Resources.Releases.EIGRelease" />
      <param name="env.checkout.dir" value="/home/kana/KANAEnterprise/KE13R1/AgentDesktopSP1/" />
      <param name="kana.environment.name" value="devKeSp1" />
      <param name="kana.svn.password" value="EIGTeamCity" />
      <param name="kana.svn.username" value="EIGTeamCity" />
    </parameters>
    <build-runners>
      <runner id="RUNNER_18" name="Create Tag" type="Ant">
        <parameters>
          <param name="ant.home" value="lib/ant" />
          <param name="build-file-path" value="scripts/commands/create-tag.xml" />
          <param name="jvmArgs" value="-Xmx512m -Xms512m" />
          <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number%  -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -verbose" />
          <param name="target" value="run" />
          <param name="teamcity.coverage.emma.include.source" value="true" />
          <param name="teamcity.coverage.emma.instr.parameters" value="-ix -*Test*" />
          <param name="teamcity.coverage.idea.includePatterns" value="*" />
          <param name="teamcity.step.mode" value="default" />
        </parameters>
      </runner>
      <runner id="RUNNER_19" name="Create Relese Bundle" type="Ant">
        <parameters>
          <param name="ant.home" value="lib/ant" />
          <param name="build-file-path" value="scripts/commands/create-release.xml" />
          <param name="runnerArgs" value="-lib lib/antlib -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.bundle.file=%eig.bundle.location%/EIG_BUILD_%system.build.number%.zip -Drelease.name=%eig.release.name% -Dsvn.username=%kana.svn.username% -Dsvn.password=%kana.svn.password% -Drepository.password=eT3qPmbu -Drepository.username=admin" />
          <param name="target" value="run" />
          <param name="teamcity.coverage.emma.include.source" value="true" />
          <param name="teamcity.coverage.emma.instr.parameters" value="-ix -*Test*" />
          <param name="teamcity.coverage.idea.includePatterns" value="*" />
          <param name="teamcity.step.mode" value="default" />
        </parameters>
      </runner>
      <runner id="RUNNER_21" name="Stop appserver" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh stop-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_22" name="Unzip release bundle for deployment" type="simpleRunner">
        <parameters>
          <param name="script.content" value="unzip -o EIG_BUILD_%build.number% -d %eig.release.location%" />
          <param name="teamcity.build.workingDir" value="%eig.bundle.location%" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_28" name="Deploy Release Bundle" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh deploy-release -Denvironment.name=%kana.environment.name% -Ddefault.core.home=%eig.release.location% -Dvcs.tag=EIG_BUILD_%system.build.number% -Drelease.jar.file=%eig.release.location%/releases/exported-release.jar" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_24" name="Stop appserver" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh stop-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_25" name="Upgrade database" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh upgrade-database -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_26" name="Start appserver" type="simpleRunner">
        <parameters>
          <param name="script.content" value="./ccadmin.sh start-appserver -Ddefault.core.home=%eig.release.location% -Denvironment.name=%kana.environment.name%" />
          <param name="teamcity.build.workingDir" value="%eig.release.location%/bin" />
          <param name="teamcity.step.mode" value="default" />
          <param name="use.custom.script" value="true" />
        </parameters>
      </runner>
      <runner id="RUNNER_27" name="restart solr" type="Ant">
        <parameters>
          <param name="ant.home" value="lib/ant" />
          <param name="build-file-path" value="scripts/commands/run-ccadmin-script.xml" />
          <param name="jvmArgs" value="-Xmx768m -Xms768m" />
          <param name="runnerArgs" value="-lib lib/antlib -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Denvironment.name=%kana.environment.name% -Dcommand.list=stop-solr,start-solr" />
          <param name="target" value="run" />
          <param name="teamcity.coverage.emma.include.source" value="true" />
          <param name="teamcity.coverage.emma.instr.parameters" value="-ix -*Test*" />
          <param name="teamcity.coverage.idea.includePatterns" value="*" />
          <param name="teamcity.step.mode" value="default" />
        </parameters>
      </runner>
      <runner id="RUNNER_29" name="Clean" type="Ant">
        <parameters>
          <param name="ant.home" value="lib/ant" />
          <param name="build-file-path" value="scripts/commands/clean.xml" />
          <param name="runnerArgs" value="-lib lib/antlib -Ddefault.core.home=%system.teamcity.build.checkoutDir% -Denvironment.name=%kana.environment.name%" />
          <param name="target" value="run" />
          <param name="teamcity.coverage.emma.include.source" value="true" />
          <param name="teamcity.coverage.emma.instr.parameters" value="-ix -*Test*" />
          <param name="teamcity.coverage.idea.includePatterns" value="*" />
          <param name="teamcity.step.mode" value="default" />
        </parameters>
      </runner>
    </build-runners>
    <vcs-settings checkout-mode="ON_SERVER" labeling-type="NONE" labeling-pattern="build-%system.build.number%">
      <vcs-entry-ref root-id="4" set-label="false" />
    </vcs-settings>
    <requirements />
    <build-triggers />
    <cleanup />
  </settings>
</build-type>


  
  -----------------------------
  
  
  
  
  -->
  </pre></code></div>
</div>
