class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service {'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key {'root@master.puppet.vm':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4+SJI9ZkQx9eq4JiosFMduAx/ziQ+Yt0fSkFSvy1s0sk6LG7X8b8FBPijCV1EF39rFydhze3hhB4nRg635SXYGDIA6XtBkaulvrqHDdbRh6/Xfxf/DPRTeXtedQwpcAezitRs4PoxJWhegYzM45PgwjJfabDZ1VmdMoFhrLm6oTBaonGv06Dnuwv24qRNggMMbA/QotH8iJhK8Fo/W8apFZUykpMrsc1pwCxcpC9dsI1iRFK6HJrSNwM25a0jxpxbX3Go3Z+AIlCG+srr7j8pWL9YgXNbfJLFULz/0wSIsHhz9CBt6bSrSaLLdeZvdVvc6VTVTORE9pAMnLNRTwUL'
        }
}
