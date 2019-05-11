class profile::agent_nodes {
  include docker
  docker::run {'web.puppet.vm': 
      image     => 'puppet/puppet-agent',
      detach    => true,
      command   => '/bin/bash',
      hostname  => 'web.puppet.vm',
  }
  docker::run {'db.puppet.vm': 
      image     => 'puppet/puppet-agent',
      detach    => true,
      command   => '/bin/bash',
      hostname  => 'db.puppet.vm',
  }
}
