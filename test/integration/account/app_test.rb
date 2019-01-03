# frozen_string_literal: true

require_relative '../helpers'

node = json('/opt/chef/run_record/last_chef_run_node.json')['automatic']

describe file('/home/django/.ssh/known_hosts') do
  # Basics tested in default suite
  its(:content) { should match(/github\.alaska\.edu ssh-rsa/) }
end

describe file(path_to_django_host(node)) do
  # Basics tested in default suite
  its(:content) { should match('<Directory app/account_site>') }
end

describe file(path_to_django_conf(node)) do
  # Basics tested in default suite
  its(:content) { should match('WSGIScriptAlias / /home/django/repo/app/account_site/wsgi\.py') }
end
