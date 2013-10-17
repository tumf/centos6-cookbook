CentOS6 Cookbook
================

CentOS6専用のクックブック

Requirements
------------

* CentOS6.x


Attributes
----------

#### centos6::default

何もしない

### centos6::network-settings

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['network-settings']['hostname']</tt></td>
    <td>String</td>
    <td>ホスト名</td>
    <td><tt>localhost.localdomain</tt></td>
  </tr>
  <tr>
    <td><tt>['network-settings']['networking']</tt></td>
    <td>String</td>
    <td>ネットワーク有効</td>
    <td><tt>yes</tt></td>
  </tr>
  <tr>
    <td><tt>['network-settings']['networking_ipv6']</tt></td>
    <td>String</td>
    <td>IPVt6ネットワーク有効</td>
    <td><tt>no</tt></td>
  </tr>
  <tr>
    <td><tt>['network-settings']['gateway']</tt></td>
    <td>String</td>
    <td>デフォルトゲートウェイ</td>
    <td><tt>(設定しない)</tt></td>
  </tr>
</table>

### centos6::stop-services

> [Qiita:CentOSの要らないサービスを無効にするレシピ](http://qiita.com/items/bb90e266016e0dc85c4e)

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['stop-services']</tt></td>
    <td>String</td>
    <td>停止するサービスのリスト</td>
    <td><tt>auditd autofs atd irqbalance messagebus portreserve bluetooth certmonger cpuspeed cups ip6tables lvm2-monitor mdmonitor netfs nfslock postfix rpcbind rpcgssd rpcidmapd</tt></td>
  </tr>
</table>



Install
-------

    echo "cookbook 'centos6', github: 'tumf/centos6-cookbook'" >> Berksfile
    berks install --path cookbooks

Usage
-----

#### centos6::network-settings

```json
{
    "network-settings": {
        "hostname": "my.domain"
    },
    "run_list":["centos6::network-settings"]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

* Yoshihiro Takahara
