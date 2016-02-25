# where to put joerd and its config files
default[:joerd][:cfg_path]                    = '/etc/joerd'
default[:joerd][:cfg_file]                    = 'config.yaml'
default[:joerd][:bin_path]                    = '/usr/local/bin/joerd'
default[:joerd][:logging_file]                = 'logging.conf'

# joerd user to create
default[:joerd][:user][:user]                 = 'joerd'
default[:joerd][:user][:home]                 = "/home/#{node[:joerd][:user][:user]}"
default[:joerd][:user][:create_group]         = true
default[:joerd][:user][:enabled]              = true

# which version of joerd to install?
default[:joerd][:revision][:joerd] = 'master'

default[:joerd][:pip_requirements_location]       = "#{node[:joerd][:cfg_path]}/pip-requirements.txt"

# PIP requirements to install
default[:joerd][:pip_requirements] = [
  'GDAL==1.10.1',
  'PyYAML==3.11',
  'beautifulsoup4==4.2.1',
  'boto3==1.2.3',
  'contextlib2==0.5.1',
  'geographiclib==1.46.3',
  'numpy==1.8.2',
  'pyqtree==0.24',
  'requests==2.8.1',
  "git+https://github.com/mapzen/joerd@#{node[:joerd][:revision][:joerd]}#egg=joerd"
]

default[:joerd][:runit][:timeout]        = 300

default[:joerd][:sqs_queue_name] = ''
default[:joerd][:s3_bucket_name] = ''
default[:joerd][:s3_upload_config] = {}
