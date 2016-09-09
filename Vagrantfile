# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "mesos.local"
  config.vm.box = "bento/ubuntu-16.04"

  config.vm.define "devcluster" do |dev|
    dev.vm.network :private_network, ip: "192.168.33.7"
    dev.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    dev.vm.provision "shell", inline: <<-EOF
      cd /vagrant
      ./provision.sh
    EOF
  end
end
