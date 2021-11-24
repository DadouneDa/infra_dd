vagrant init centos/7
$file = '.\Vagrantfile'
$find = '  # config.vm.provision "shell", inline: <<-SHELL'
$replace = '  config.vm.provision "shell", path: "docker_install.sh"'
(Get-Content $file).replace($find, $replace) | Set-Content $file
vagrant up
vagrant ssh