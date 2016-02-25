Joerd Cookbook
==============

This cookbook installs and configures [Joerd](https://github.com/mapzen/joerd), a system for creating global, tiled elevation maps.

Requirements
------------

#### cookbooks
- `apt` - For installing OS packages.
- `git` - For... ???
- `runit` - To run Joerd as a service.
- `user` - To create a special user for Joerd.

#### operating systems
- `ubuntu` - Only tested on Ubuntu so far.

#### packages
- `python` - Joerd is written in Python, so it needs the interpreter.
- `python-pip` - Joerd has several Python package dependencies which need to be installed.
- `python-gdal` - Most of the heavy lifting is done by GDAL via Python.
- `python-bs4` - For getting the information out of remote file listing pages.
- `python-numpy` - For the heavy lifting that GDAL doesn't do, e.g: normal calculation.
- `gdal-bin` - Because Joerd shells out to `gdalbuildvrt`.

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:joerd][:cfg_path]</tt></td>
    <td>String</td>
    <td>Path to put configuration files in.</td>
    <td><tt>'/etc/joerd'</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:cfg_file]</tt></td>
    <td>String</td>
    <td>What to call the main YAML configuration file.</td>
    <td><tt>'config.yaml'</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:bin_path]</tt></td>
    <td>String</td>
    <td>Path to install the Joerd binary as.</td>
    <td><tt>'/usr/local/bin/joerd'</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:logging_file]</tt></td>
    <td>String</td>
    <td>What to call the Python logging config file.</td>
    <td><tt>'logging.conf'</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:user][:user]</tt></td>
    <td>String</td>
    <td>What to call the Joerd user.</td>
    <td><tt>'joerd'</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:user][:home]</tt></td>
    <td>String</td>
    <td>What directory to use as Joerd's home.</td>
    <td><tt>'/home/joerd'</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:user][:create_group]</tt></td>
    <td>Boolean</td>
    <td>True if a group should be created for the Joerd user.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:user][:enabled]</tt></td>
    <td>Boolean</td>
    <td>True if the user should be created.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:revision][:joerd]</tt></td>
    <td>String</td>
    <td>The revision, tag or branch to of the Joerd source to use.</td>
    <td><tt>'master'</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:pip_requirements_location]</tt></td>
    <td>String</td>
    <td>The location of the file to dump the Python package requirements to.</td>
    <td><tt>'/etc/joerd/pip-requirements.txt'</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:pip_requirements]</tt></td>
    <td>List of String</td>
    <td>Lists the requirements of the Joerd package, including the Joerd package itself.</td>
    <td>See <tt>attributes/default.rb</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:runit][:timeout]</tt></td>
    <td>Number</td>
    <td>The timeout in seconds to use when runit runs Joerd.</td>
    <td><tt>300</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:sqs_queue_name]</tt></td>
    <td>String</td>
    <td>The name of the SQS queue to use for receiving jobs.</td>
    <td><tt>''</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:s3_bucket_name]</tt></td>
    <td>String</td>
    <td>The name of the bucket to store output tiles in.</td>
    <td><tt>''</tt></td>
  </tr>
  <tr>
    <td><tt>[:joerd][:s3_upload_config]</tt></td>
    <td>JSON Object</td>
    <td>Additional parameters to include along with the S3 upload.</td>
    <td><tt>{}</tt></td>
  </tr>
</table>


License
-------

The Joerd cookbook is available under the [GPLv3](LICENSE) license.

Contributing
------------

We welcome contributions to Joerd. If you would like to report an issue, or even better fix an existing one, please use the [Joerd cookbook issue tracker](https://github.com/mapzen/chef-joerd/issues) on GitHub.
