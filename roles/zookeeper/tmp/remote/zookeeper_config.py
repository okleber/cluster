#!/usr/bin/env python3
import re
import socket

h=socket.gethostname()
id=re.findall(".*([0-9])\.*",h)[0]

with open('/var/lib/zookeeper/myid','w') as f:
    f.write(str(id))

with open('/etc/zookeeper/zoo.cfg', 'r') as content_file:
    content = content_file.read()

new_content=re.sub(h,'0.0.0.0',content)

with open('etc/zookeeper/zoo.cfg','w') as f:
    f.write(new_content)

