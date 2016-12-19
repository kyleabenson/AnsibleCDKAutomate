This project is intended to make it easier to deploy Red Hat's Container Local kit by automating much of the installation on MacOS and RHEL hosts

## Prerequisites

In order to proceed you must already have the Red Hat CDK Vagrant Box and zip folder downloaded. If you don't already have that see:
[https://developers.redhat.com/products/cdk/get-started](https://developers.redhat.com/products/cdk/get-started)

You also need to have Ansible installed on the host for your CDK environment. If you don't have that you can use `host_setup.sh` to install Ansible:
```
chmod +x host_setup.sh
./host_setup.sh
```


## Setup
Run the deploy_container_local ansible-playbook as the example below outlines. The -K flag will prompt for a sudo password where needed and the quotes with -e pass the location of the relevant files so that your environment can be configured.

```
ansible-playbook deploy_container_local.yaml -K "-e 'box_path=/path/to/vagrant.box zip_path=/path/to/cdk.zip'"
```


This play-book makes several assumptions in order to accomplish ease of installation including:
Using homebrew to install packages on MacOSX
Using specific virtualization products for each OS: On MacOS this is Virtualbox and on RHEL it is the standard KVM tools

Contributions to this project are welcome!
