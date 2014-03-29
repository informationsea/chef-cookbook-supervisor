supervisor Cookbook
===================
This cookbook installs and configures [supervisor](http://supervisord.org)

Requirements
------------

#### packages
- `python` - [Python Cookbook](http://community.opscode.com/cookbooks/python)

Attributes
----------
#### supervisor::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['supervisord']['bin']</tt></td>
    <td>String</td>
    <td>Binary Path</td>
    <td><tt>/usr/bin/supervisord</tt></td>
  </tr>
  <tr>
    <td><tt>['supervisord']['pid']</tt></td>
    <td>String</td>
    <td>PID file path</td>
    <td><tt>/usr/bin/supervisord</tt></td>
  </tr>
  <tr>
    <td><tt>['supervisord']['config']</tt></td>
    <td>String</td>
    <td>Configure file path</td>
    <td><tt>/etc/supervisord.conf</tt></td>
  </tr>
</table>

Usage
-----
#### supervisor::default
Just include `supervisor` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[supervisor]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: OKAMURA Yasunobu (okamura@informationsea.info)
