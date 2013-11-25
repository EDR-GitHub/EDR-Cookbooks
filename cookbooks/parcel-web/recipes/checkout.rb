#
# Cookbook Name:: parcel-web
# Recipe:: checkout
# Author:: John Dzialo
#
# Copyright 2013, EDR
#
# All rights reserved - Do Not Redistribute
#

subversion "web" do
	repository "http://edrscm/svn/Parcel/trunk/webroot"
	destination "/var/www"
	svn_username node['subversion']['username']
	svn_password node['subversion']['password']
	action :force_export
end

subversion "include" do
	repository "http://edrscm/svn/Parcel/trunk/includeroot"
        destination "/opt/parcel/include"
        svn_username node['subversion']['username']
        svn_password node['subversion']['password']
        action :force_export
end

subversion "java" do
	repository "http://edrscm/svn/Parcel/trunk/javaroot/parcel-deliverable"
	destination "/opt/tomcat/webapps/parcel/WEB-INF"
	svn_username node['subversion']['username']
	svn_password node['subversion']['password']
	action :force_export
end

