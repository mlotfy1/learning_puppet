class profile::agent_nodes {
  include docker
  docker::run {'web.puppet.vm': 
      image     => 'puppet/puppet-agent',
      detach    => true,
      command   => '/bin/bash',
      hostname  => 'web.puppet.vm',
      remove_container_on_start => false,
  }
  docker::run {'db.puppet.vm': 
      image     => 'puppet/puppet-agent',
      detach    => true,
      command   => '/bin/bash',
      hostname  => 'db.puppet.vm',
      remove_container_on_start => flase,
  }
}
