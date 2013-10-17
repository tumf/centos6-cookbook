# Cookbook Name:: centos6
# Recipe:: network-settings

template "/etc/sysconfig/network" do
  owner "root"
  group "root"
  mode 0644
  source "etc/sysconfig/network.erb"
end

execute "update_hostname" do
  command "hostname #{node["network-settings"]["hostname"]}"
  not_if {
    node["network-settings"]["hostname"] == `hostname`.chomp
  }
end

template "/etc/hosts" do
  owner "root"
  group "root"
  mode 0644
  source "etc/hosts.erb"
end



