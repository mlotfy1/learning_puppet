class profile::agent_nodes {
  include docker
  docker::run {'web.puppet.vm': 
      image     => 'puppet/puppet-agent',
      links     => ['web.puppet.vm:master.puppet.vm'],
      hostname  => 'web.puppet.vm',
  }
  docker::run {'db.puppet.vm': 
      image     => 'puppet/puppet-agent',
      links     => ['db.puppet.vm:master.puppet.vm'],
      hostname  => 'db.puppet.vm',
  }
}
