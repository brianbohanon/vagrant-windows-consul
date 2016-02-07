# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Specify the box
  config.vm.box = "Windows-2012r2"

  # Loop through and create the nodes
  (1..2).each do |i|
    # Settings for VMs
		config.vm.define "consul_vm#{i}" do |node|
			config.vm.provider "virtualbox" do |node|
				# Each VM hostname will be consul_vm{i}
				node.name = "consul_vm#{i}"
        node.gui = true
        node.customize ["modifyvm", :id, "--memory", 768]
        node.customize ["modifyvm", :id, "--cpus", 1]
        node.customize ["modifyvm", :id, "--vram", "32"]
        node.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
        node.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
			end
      config.vm.guest = :windows
      config.vm.communicator = "winrm"
      config.vm.provision "shell" do |shell|
        # shell.path: "scripts/consul_install.ps1"
        shell.inline: "choco install consul -y"
		end
	end
end
