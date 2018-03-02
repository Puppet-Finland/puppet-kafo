# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "kafo" do |box|
    box.vm.box = "debian/stretch64"
    box.vm.box_version = "9.2.0"
    box.vm.hostname = "kafo.local"
    box.vm.network "private_network", ip: "192.168.221.101"
    box.vm.provision "shell" do |s|
      s.path = "vagrant/prepare.sh"
      s.args = ["-n", "kafo", "-f", "debian", "-o", "stretch", "-b", "/home/vagrant"]
    end
    box.vm.provision "shell", inline: "puppet apply --modulepath /home/vagrant/modules -e 'include ::kafo'"
    box.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = 768
    end
  end
end
