# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

NODE_COUNT = 2
Vagrant.configure(2) do |config|

  # config.vm.network "public_network", bridged: "en0: Wi-Fi (AirPort)"

  config.vm.provider "virtualbox" do |node|
    node.gui = true
    node.customize ["modifyvm", :id, "--memory", 768]
    node.customize ["modifyvm", :id, "--cpus", 1]
    node.customize ["modifyvm", :id, "--vram", "32"]
    node.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    node.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
  end

  config.vm.provision "shell" do |shell|
    # shell.path: "scripts/consul_install.ps1"
    shell.inline = "choco install consul -y"
  end

  # Loop through and create the nodes
  NODE_COUNT.times do |i|
    # Settings for VMs
    node_id = "node#{i}"
		config.vm.define node_id do |node|
      # Specify the box
      config.vm.box = "Windows-2012r2"
      node.vm.guest = :windows
      node.vm.communicator = "winrm"
		end
	end
end
