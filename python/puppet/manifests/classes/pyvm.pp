class init {

    group { "puppet":
        ensure => "present",
    }

    # Let's update the system
    exec { "update-apt":
        command => "sudo apt-get update",
    }

    # Let's install the dependecies
    package {
        ["python", "python-dev", "libjs-jquery", "libjs-jquery-ui", "iso-codes", "gettext", "python-pip", "bzr"]:
        ensure => installed,
        require => Exec['update-apt'] # The system update needs to run first
    }

    # Let's install the project dependecies from pip
    exec { "pip-install-requirements":
        command => "sudo /usr/bin/pip install -r $PROJ_DIR/requirements.txt",
        tries => 2,
        timeout => 600, # Too long, but this can take awhile
        require => Package['python-pip', 'python-dev'], # The package dependecies needs to run first
        logoutput => on_failure,
    }
}