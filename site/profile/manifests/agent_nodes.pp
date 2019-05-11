class profile::agent_nodes {
  include docker
  docker::image { 'alpine': }
  docker::run {'web.puppet.vm': 
      image   => 'alpine',
      detach  => true,
  }
  docker::run {'db.puppet.vm': 
      image   => 'alpine',
      detach  => true,
  }
}
