#
# Cookbook Name:: parcel-web
# Recipe:: default
# Author:: John Dzialo
#
# Copyright 2013, EDR
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"
include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "apache2::mod_php5"
include_recipe "subversion::client"
#include_recipe "zend::parcel"
#include_recipe "java"

apache_site "default" do
	enable true
end
