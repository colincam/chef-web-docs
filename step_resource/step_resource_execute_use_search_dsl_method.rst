.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.

The following example shows how to use the ``search`` method in the |dsl recipe| to search for users:

.. code-block:: ruby

   #  the following code sample comes from the openvpn cookbook: https://github.com/chef-cookbooks/openvpn

   search("users", "*:*") do |u|
     execute "generate-openvpn-#{u['id']}" do
       command "./pkitool #{u['id']}"
       cwd '/etc/openvpn/easy-rsa'
       environment(
         'EASY_RSA' => '/etc/openvpn/easy-rsa',
         'KEY_CONFIG' => '/etc/openvpn/easy-rsa/openssl.cnf',
         'KEY_DIR' => node['openvpn']['key_dir'],
         'CA_EXPIRE' => node['openvpn']['key']['ca_expire'].to_s,
         'KEY_EXPIRE' => node['openvpn']['key']['expire'].to_s,
         'KEY_SIZE' => node['openvpn']['key']['size'].to_s,
         'KEY_COUNTRY' => node['openvpn']['key']['country'],
         'KEY_PROVINCE' => node['openvpn']['key']['province'],
         'KEY_CITY' => node['openvpn']['key']['city'],
         'KEY_ORG' => node['openvpn']['key']['org'],
         'KEY_EMAIL' => node['openvpn']['key']['email']
       )
       not_if { File.exist?("#{node['openvpn']['key_dir']}/#{u['id']}.crt") }
     end
   
     %w{ conf ovpn }.each do |ext|
       template "#{node['openvpn']['key_dir']}/#{u['id']}.#{ext}" do
         source 'client.conf.erb'
         variables :username => u['id']
       end
     end
   
     execute "create-openvpn-tar-#{u['id']}" do
       cwd node['openvpn']['key_dir']
       command <<-EOH
         tar zcf #{u['id']}.tar.gz \
         ca.crt #{u['id']}.crt #{u['id']}.key \
         #{u['id']}.conf #{u['id']}.ovpn \
       EOH
       not_if { File.exist?("#{node['openvpn']['key_dir']}/#{u['id']}.tar.gz") }
     end
   end

where 

* the search will use both of the |resource execute| resources, unless the condition specified by the ``not_if`` commands are met
* the ``environments`` property in the first |resource execute| resource is being used to define values that appear as variables in the |openvpn| configuration 
* the |resource template| resource tells the |chef client| which template to use
