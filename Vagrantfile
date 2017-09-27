# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 
	 config.vm.box = "chad-thompson-VAGRANTSLASH-ubuntu-trusty64-gui"
	   config.vm.synced_folder "C:/Users/Administrator/Desktop/Vagrant/shared", "/home/Desktop/Vagrant/shared"
	   config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.memory = 4096
	 vb.cpus = 2
	 end
	 
	 config.vm.define "master" do |master|
		master.vm.hostname = "russ.local"
		master.vm.network :public_network, ip: "192.168.1.162"	
		master.vm.provision "shell", path: "shared//ansible.sh"
		master.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
		
	end
     
	 config.vm.define "host1" do |host1|
		host1.vm.hostname = "russ.dual.one"
		host1.vm.network :public_network, ip: "192.168.1.163"
		host1.vm.provision "shell", path: "shared//ansible.sh"
		host1.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
   end
   
   	 config.vm.define "host2" do |host2|
		host2.vm.hostname = "russ.dual.two"
		host2.vm.network :public_network, ip: "192.168.1.164"
		host2.vm.provision "shell", path: "shared//ansible.sh"
		host2.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
   end
end