#!/bin/bash
# This script is only necessary if you do not have Ansible already installed on your host system
# Install homebrew, pip, Vagrant, & Ansible
# Check to see if this is Mac OSX or Fedora-based Linux
  platform='unknown'
  unamestr=`uname`
  if [[ "$unamestr" == 'Linux' ]]; then
    platform='linux'
  elif [[ "$unamestr" == 'Darwin'* ]]; then
    platform='darwin'
  else
    echo "This tool is currently only supported on Mac OS X or Fedora distros. Sorry!"
  fi

  # Install Ansible
  if [[ $platform == 'darwin' ]]; then
      if [[ -x $(type -p ansible) ]]; then
        echo "Both pip & Ansible are installed. Moving on.."
      elif [[ ! -x $(type -p pip) ]]; then
        echo "Installing pip.."
        sudo easy_install pip
      elif [[ ! -x $(type -p ansible) ]]; then
          echo "Installing Ansible..."
          sudo `which pip` install ansible
      fi
      if [[ -x $(type -p ansible)  ]]; then
          echo "Ansible ready for use"
      fi	
  elif [[ $platform == 'linux' ]]; then
      if [[ -x $(type -p ansible) ]]; then
        echo "Ansible is already installed."
      elif [[ ! -x $(type -p ansible) ]]; then
        echo "Enabling EPEL repo to install Ansible"
        sudo /usr/bin/rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
        sudo /usr/bin/yum install -y ansible
        if [[ -x $(type -p ansible)  ]]; then
          echo "Ansible ready for use"
        fi
        echo "Disabling EPEL repo"
        sudo rm -f /etc/yum.repos.d/epel*.repo
      fi
  fi
