class profile::ssh_server {
    package {'openssh-server':
        ensure => present,
    }
    service {'ssh':
        ensure => 'running',
        enable => 'true',
    }
    ssh_authorized_key { 'root@master.puppet.vm':
        ensure => present,
        user   => 'root',
        type   => 'ssh-rsa',
        key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC10vDvAMUMFODum9uW2N4+0Racebp7YtCn0kNKSnzgY9CAqjetRIOnIPdZC6jxDjDZBO9BgdobuxKKbK66RH+5YwaWiTwstr/0J5AM3UxUzNscGcqebmnHC2dzOOnTQUy7L5lhtvKrz4bPm/g09rJx64DugRpJOWNKYiUIOALHMEsbHSMuPf1SmHm2etySsrnkuF1refQbYijEAJPYNGYDRM9mkSdk5DwV63Nv5cSF6njs3am8Qf59ZigUWztrJUsbKVaHO6qHU7N+fQhpkh3GkiU5h9ruJwrdhAS4CfDGvU0a16iUwqYJOaZ9SunDHyzYk+4DJz43yIYvXMQR8lxP',
    }
}
