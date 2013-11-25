# Cookbook Name:: lampstack
# Recipe:: checkout
#
# Copyright 2013, EDR
#
# All rights reserved - Do Not Redistribute
#

subversion "parcel" do
	repository "http://edrscm/svn/Parcel/trunk/webroot"
	destination "/var/www/parcel"
	svn_username "'EDR\\jdzialoex'"
	svn_password "'xxxxxxxxxx'"
	action :checkout
end
