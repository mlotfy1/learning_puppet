class profile::agent_nodes {
  include docker
  docker::run {'web.puppet.vm': 
      image   => 'base',
      detach  => true,
  }
  docker::run {'db.puppet.vm': 
      image   => 'base',
      detach  => true,
  }
}
