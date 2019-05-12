class minecraft {
  file {'/opt/minecraft':
      ensure => directory,
  }
  file {'/opt/minecraft/minecraft_server.jar':
    ensure => file,
    source => 'https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar',
    before => 'Service['minecraft'],
  }
  package {'java':
    ensure => present,
  }
  file {'/opt/minecraft/eula.txt':
    ensure => file,
    content=> 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
    ensure => running,
    enable => true,
    require=> [Package['java'],File['/opt/minecraft/eula.txt'],File['/etc/systemd/system/minecraft.service']],
  }
}
