class profile::agent_nodes {
  include docker
  docker::run {'web.puppet.vm': 
      image     => 'puppet/puppet-agent',
      hostname  => 'web.puppet.vm',
  }
  docker::run {'db.puppet.vm': 
      image     => 'puppet/puppet-agent',
      hostname  => 'db.puppet.vm',
  }
}
