class profile::agent_nodes {
  include docker
  docker::run {'web.puppet.vm': image   => 'base', }
  docker::run {'db.puppet.vm': image   => 'base', }
}
