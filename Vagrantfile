# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

# NODE_COUNT = 2
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
    shell.path = "scripts/configure_consul.ps1"
    # shell.inline = "choco install consul -y"
  end

  # Loop through and create the nodes
  # NODE_COUNT.times do |i|
  (1..2).each do |i|
    # Settings for VMs
    node_id = "node#{i}"
    mac_addr = "08002712345#{i}"
		config.vm.define node_id do |node|
      # Specify the box
      node.vm.box = "Windows-2012r2"
      node.vm.guest = :windows
      node.vm.communicator = "winrm"
      node.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)", mac: mac_addr
		end
	end
end
