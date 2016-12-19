This project is intended to make it easier to deploy Red Hat's Container Local kit by automating much of the installation on Mac and RHEL hosts

Getting Started

1. Preparing the host:
  **NOTE: If you already have Ansible installed on your host/local system, you can immediately run the Ansible play-book for deployment, passing the location of your Vagrant Box and associated zip folder as arguments:

  ``` ansible-playbook deploy_container_local.yaml -K "-e 'box_path=/path/to/vagrant.box zip_path=/path/to/cdk.zip'" ```

  If you do **NOT** have Ansible installed, you can optionally run the bash script 'host_setup.sh', then run the above play-book.


DONE:
1. Setup host systems
  a. Setup host system to support CDK via Vagrant
      i. For RHEL this means installing KVM and then Vagrant
      ii. For MacOS this means installing Virtualbox and then Vagrant
  b. Prompt user to specify where they want Vagrantfile & CDK images to exist, then create that directory
  c. Install oc packages on both platforms

2. Setup vagrant environment
  a. Enable plugins
  b. Start up system

TODO:
