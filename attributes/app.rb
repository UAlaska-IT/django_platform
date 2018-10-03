# frozen_string_literal: true

tcb = 'django_platform'

# The url of the git server
default[tcb]['app_repo']['git_host'] = 'github.com'

# The user/organization on the server; must be set or an exception is raised
default[tcb]['app_repo']['git_user'] = nil

# The name of the repo; must be set or an exception is raised
default[tcb]['app_repo']['git_repo'] = nil

# This is often changed during development and testing, e.g. 'staging', 'deploy'
default[tcb]['app_repo']['git_revision'] = 'master'

# Hash of environment variables to pass to git repo
default[tcb]['app_repo']['environment'] = {}
