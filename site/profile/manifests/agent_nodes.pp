class profile::agent_nodes {
  include docker
  docker::image { 'puppet/puppet-agent-alpine':
    ensure    => 'present',
  }
  docker::run {'web.puppet.vm': 
      image     => 'puppet/puppet-agent-alpine',
      command   => '/bin/bash -c "while true; do echo hello world; sleep 1; done"',
      hostname  => 'web.puppet.vm',
  }
  docker::run {'db.puppet.vm': 
      image     => 'puppet/puppet-agent-alpine',
      command   => '/bin/bash -c "while true; do echo hello world; sleep 1; done"',
      hostname  => 'db.puppet.vm',
  }
}
