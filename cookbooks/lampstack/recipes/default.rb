#
# Cookbook Name:: lampstack
# Recipe:: default
#
# Copyright 2013, EDR
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"
include_recipe "mysql::client"
include_recipe "mysql::server"
include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "apache2::mod_php5"
include_recipe "mysql::ruby"
include_recipe "subversion::client"

apache_site "default" do
	enable true
end

mysql_database node['lampstack']['database'] do
	connection ({:host => 'localhost', :username => 'root', :password => node['mysql']['server_root_password']})
	action:create
end

mysql_database_user node['lampstack']['db_username'] do
	connection ({:host => 'localhost', :username => 'root', :password => node['mysql']['server_root_password']})
	password node['lampstack']['db_password']
	database_name node['lampstack']['database']
	privileges [:select, :update, :insert, :create, :delete]
	action :grant
end

subversion "parcel" do
	repository "http://edrscm/svn/Parcel/trunk/webroot"
	destination "/var/www"
	svn_username "username"
	svn_password "xxxxxxxxx"
	action :checkout
end
