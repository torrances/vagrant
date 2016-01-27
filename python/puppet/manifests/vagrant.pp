import "classes/*.pp"

$PROJ_DIR = "/home/vagrant/data"

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

class dev {
    class {
        init: before => Class[ltp];
        ltp:;
    }
}

include dev