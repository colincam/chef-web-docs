################################################################################
# Welcome to the syntax phase
#
# This recipe is executed as the delivery user
################################################################################

# Check the syntax on the cookbooks in cookbooks/
include_recipe 'delivery-truck::syntax'

# Syntax checking for the actual project would go here
#
# TODO add a syntax check for the ruby files

ruby_block 'test redirects.json' do
  block do
    redirects_file = File.join(node['delivery']['workspace']['repo'], 'config', 'redirects.json')
    puts "Attempting to parse: #{redirects_file}"
    JSON.parse(File.read(redirects_file))
  end
end
