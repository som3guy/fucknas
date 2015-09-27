# Create directories
media_dirs = [
  node['fucknas']['dir']['movies'],
  node['fucknas']['dir']['audiobooks'],
  node['fucknas']['dir']['tv'],
  node['fucknas']['dir']['music'],
  node['fucknas']['dir']['downloads']
]

media_dirs.each do |dir|
  directory dir do
    mode 0755
    owner node['fucknas']['user']['name']
    group node['fucknas']['user']['group']
    recursive true
  end
end
