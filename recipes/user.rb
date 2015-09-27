
# Create a user for media
user node['fucknas']['user']['name'] do
  comment 'fucknas user'
  uid '550'
  home '/home/media'
  shell '/bin/bash'
  password node['fucknas']['user']['password']
end

group 'fucknas' do
	gid '550'
	group_name 'fucknas'
	members 'fucknas'
	action :create
end


