class profile::agent_nodes {
  include docker
  docker::image { 'puppet/puppet-agent': }
  docker::run {'web.puppet.vm': 
      image     => 'puppet/puppet-agent',
      command   => '/bin/bash',
      hostname  => 'web.puppet.vm',
  }
  docker::run {'db.puppet.vm': 
      image     => 'puppet/puppet-agent',
      command   => '/bin/bash',
      hostname  => 'db.puppet.vm',
  }
