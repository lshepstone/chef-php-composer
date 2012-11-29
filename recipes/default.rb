include_recipe "php"

package "curl" do
  action :install
end

case node['platform']
  when "ubuntu","debian"
    bash "install_composer" do
      cwd "#{Chef::Config[:file_cache_path]}"
      code <<-EOH
        curl -s #{node[:composer][:url]} | php
        mv composer.phar #{node[:composer][:path]}
      EOH
    end
end
