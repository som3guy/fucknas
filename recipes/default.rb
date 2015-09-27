#
# Cookbook Name:: fucknas
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'fucknas::user'
include_recipe 'fucknas::dir_setup'
include_recipe 'fucknas::nfs_setup'