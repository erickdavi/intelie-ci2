#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright (c) 2017 Erick Davi Morgade Pessanha, All Rights Reserved.


remote_file '/tmp/jenkins-ci.org.key' do 
	source 'https://jenkins-ci.org/debian/jenkins-ci.org.key'
end

execute 'apt-key add /tmp/jenkins-ci.org.key' 

#file '/etc/apt/sources.list.d/jenkins.list' do
#	content 'deb http://pkg.jenkins-ci.org/debian binary'
#end
template '/etc/apt/sources.list' do
  source 'sources.list.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

execute 'apt-get update' 

package 'openjdk-8-jre-headless'

package 'jenkins'

service 'jenkins' do
	action :start
end
