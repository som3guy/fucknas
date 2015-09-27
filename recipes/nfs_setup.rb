package ['nfs-utils', 'nfs-utils-lib']  do
  action :install
end

template 'exports' do
	path '/etc/exports'
	source 'exports.erb'
	mode 0644
	owner 'root'
	group 'root'
end


execute 'disable_selinux' do
	command 'echo 0 >/selinux/enforce'
end

template 'selinux_config' do
	path '/etc/selinux/config'
	source 'fucknas_selinux.erb'
	mode 0644
	owner 'root'
	group 'root'
end

service 'iptables' do
	action [:disable, :stop]
end

service 'nfs' do
	action [:enable, :restart]
end
