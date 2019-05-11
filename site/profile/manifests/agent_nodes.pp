class profile::agent_nodes {
  include docker
  docker::image { 'alpine': }
  docker::run {'web.puppet.vm': 
      image     => 'alpine',
      command   => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
      hostname  => 'web.puppet.vm',
  }
  docker::run {'db.puppet.vm': 
      image     => 'alpine',
      command   => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
      hostname  => 'db.puppet.vm',
  }
}
