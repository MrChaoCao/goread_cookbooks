default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:goread][:git_repository] = "https://github.com/MrChaoCao/goread/"
default[:goread][:git_revision] = "master"
default[:goread][:path] = "/opt/goread"

default[:goread][:rails_env] = "production"
default[:goread][:log_to_stdout] = "true"

default[:goread][:environment] = {
  "SECRET_KEY_BASE": node[:goread][:secret_key_base],
  "DATABASE_URL": node[:goread][:database_url],
  "RAILS_ENV": node[:goread][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:goread][:log_to_stdout]
}

default[:goread][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
