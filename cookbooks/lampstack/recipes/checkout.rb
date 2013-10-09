# Cookbook Name:: lampstack
# Recipe:: checkout
#
# Copyright 2013, EDR
#
# All rights reserved - Do Not Redistribute
#

subversion "parcel" do
	repository "http://edrscm/svn/Parcel/trunk/webroot"
	destination "/var/www"
	svn_username "EDR\jdziaoex"
	svn_password "Back2Briars"
	action :checkout
end
