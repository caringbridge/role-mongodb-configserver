# NOTE!!!!  CHECK SECUTIRY SETTINGS FOR THE DB!!!!!!
default['yum']['main']['obsoletes'] = false
default[:mongodb][:package_version] = '2.4.9-mongodb_1'
default[:mongodb][:cluster_name] = 'vzdev'
default[:mongodb][:shard_name] = 'shard1'
default['mongodb']['config']['fork'] = 'true'
default['mongodb']['config']['dbpath'] = '/data/cfgsvr/db'
default['mongodb']['config']['logpath'] = '/data/cfgsvr/log/config.log'
default['mongodb']['is_configserver'] = true
