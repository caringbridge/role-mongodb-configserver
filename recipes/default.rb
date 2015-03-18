#
# Cookbook Name:: role-mongodb-configserver
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'yum'
include_recipe 'mongodb::mongodb_org_repo'


node.override['mongodb']['package_name'] = 'mongo-10gen-server'
['mongo-10gen', 'mongo-10gen-server'].each do |rpm|
  package rpm do
    version node['mongodb']['package_version']
  end
end

directory "/var/run/mongodb" do
  owner 'mongod'
  group 'mongod'
  mode '0755'
  action :create
end

include_recipe 'mongodb::configserver'
