#
# Cookbook Name:: exim_ey
#
# Copyright 2009, Engine Yard, Inc.

define :exim_auth, :my_hostname => nil, :smtp_host => nil, :username => nil, :password => nil do

  include_recipe "exim::default"

  template "/data/exim/exim.conf" do
    cookbook "exim"
    source "exim.conf.erb"
    owner "root"
    group "root"
    mode 0644
    backup 2
    variables(:p => params)
  end
end
