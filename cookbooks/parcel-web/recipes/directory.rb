#
# Cookbook Name:: parcel-web
# Recipe:: directory
# Author:: John Dzialo
#
# Copyright 2013, EDR
#
# All rights reserved - Do Not Redistribute
#

directory "/opt/parcel" do
	owner "www-data"
	group "parcel"
	mode 00775
	action :create
end

directory "/opt/parcel/include" do
	owner "www-data"
	group "parcel"
	mode 00775
	action :create
end

directory "/opt/tomcat" do
	owner "root"
	group "root"
	mode 00755
	action :create
end

directory "/opt/tomcat/webapps" do
	owner "root"
	group "root"
	mode 00755
	action :create
end

directory "/opt/tomcat/webapps/parcel" do
	owner "root"
	group "root"
	mode 00755
	action :create
end

directory "/opt/tomcat/webapps/parcel/WEB-INF" do
	owner "root"
	group "root"
	mode 00755
	action :create
end
