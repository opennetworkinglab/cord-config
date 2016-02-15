# Configuration files for CORD deployment

This repository hosts the configuration files used in CORD deployment.
This does not work in any environment other than mine.
However, this is still a very good example to take a look.

## network-cfg-ext-vr.json

A network-cfg.json example includes the following features
(works with ONOS after commit 852dabf100262d07475b82b8ddc3cc42afe370a9)

* 2x2 leaf-spine fabric
    - of:1/5, of:1/7
        subnet = 10.0.1.0/24
        gateway = 10.0.1.254
    - of:2/5
        subnet = 10.0.2.0/24
        gateway = 10.0.2.254

* VLAN cross-connect (OLT)
    - of:1/5 <-> of:1/65 (port 9 breakout)
        outer VLAN (S-tag) = 69
    - of:1/5 <-> of:1/73 (port 11 breakout)
        outer VLAN (S-tag) = 90

* Default route (external standalone vRouter)
    - vSG
        loc = of:1/5
        IP  = 200.0.0.200
        MAC = 00:00:00:00:00:01
    - vRouter
        loc = of:2/5
        MAC = 00:00:00:00:00:02

* Link verification

* Interface exclusion
    - exclude vrouterpeer1

## cord.cell

The cell configuration used for CORD deployment