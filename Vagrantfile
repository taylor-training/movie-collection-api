# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "movies-vm"
  config.vbguest.auto_update = false
  config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1", auto_correct: true
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "8192"
  end

  config.vm.provision "shell", path: 'provision.sh'
end
