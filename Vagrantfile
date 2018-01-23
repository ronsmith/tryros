# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.provider "virtualbox"

  config.vm.box = "bento/ubuntu-16.04"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "tryros"
    vb.memory = 1024
    vb.cpus = 1
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.network "private_network", ip: "192.168.10.19"
  config.vm.synced_folder "./", "/vagrant", owner: 'vagrant', group: 'vagrant', mount_options: ["dmode=775,fmode=775"]
  config.vm.provision "shell", path: "provision_vagrant.sh"
end
