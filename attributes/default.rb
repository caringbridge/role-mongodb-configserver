# NOTE!!!!  CHECK SECUTIRY SETTINGS FOR THE DB!!!!!!
default['yum']['main']['obsoletes'] = false
default[:mongodb][:package_version] = '2.4.9-mongodb_1'
default[:mongodb][:cluster_name] = 'vzdev'
default[:mongodb][:shard_name] = 'shard1'
default['mongodb']['config']['fork'] = 'true'
default['mongodb']['config']['dbpath'] = '/data/cfgsvr/db'
default['mongodb']['config']['logpath'] = '/data/cfgsvr/log/config.log'
default['mongodb']['is_configserver'] = true
# set for mongo gem - new version breaks setting replica set and other things
# that require the use of a mongo connection.
default['mongodb']['ruby_gems'] = {
  :mongo => '1.12.0',
  :bson_ext => '1.12.0'
}
