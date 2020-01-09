# -*- mode: ruby -*-
# vi: set ft=ruby :

mirror = "http://mirrors.edge.kernel.org"
release = "halibut"
target = "qemux86-64"
image = "agl-demo-platform-crosssdk-qemux86-64.wic.vmdk"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "qemu", type: :shell, inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get install --assume-yes --quiet qemu-system-x86
  SHELL
  config.vm.provision "image", type: :shell, privileged: false, inline: <<-SCRIPT
    wget --progress=bar:force:noscroll "#{mirror}/AGL/release/#{release}/latest/#{target}/deploy/images/#{target}/#{image}"
  SCRIPT
end
