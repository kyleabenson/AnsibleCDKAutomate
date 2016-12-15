This project is intended to make it easier to deploy Red Hat's Container Local kit by automating much of the installation on Mac and Linux hosts

Getting Started

1. Preparing the host:
  **NOTE: If you already have Ansible installed on your host/local system, you can immediately run the Ansible play-book for deployment:
  ``` ansible-playbook deploy_container_local.yaml -K ```

  If you do **NOT** have it installed, you can optionally run the bash script 'host_setup.sh'


TODO:
1. Setup host systems
  a. Setup host system to support CDK via Vagrant
      i. For RHEL this means installing KVM and then Vagrant
      ii. For MacOS this means installing Virtualbox and then Vagrant
  b. Setup Vagrant sync folder to be location for host dev, sync to cdk for container -- this may not need to be done if primary use case is pushing code via OC commands
  c. Prompt user to specify where they want Vagrantfile & CDK images to exist, then create that directory
  d. Create a prompt for user to pause and go download CDK files to directory, then continue
2. Setup vagrant system
  a. Enable subscription-manager plugins
  b. Start up system
