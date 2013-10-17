default["network-settings"]["networking"] = "yes"
default['network-settings']['networking_ipv6'] = "no"
default['network-settings']['hostname'] = "localhost.localdomain"

default["stop-services"] = %w[auditd autofs atd irqbalance messagebus portreserve bluetooth certmonger cpuspeed cups ip6tables lvm2-monitor mdmonitor netfs nfslock postfix rpcbind rpcgssd rpcidmapd]
