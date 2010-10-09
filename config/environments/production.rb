##
# Copyright (c) Wordchuck Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software
# is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
# IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##

WordchuckDemo::Application.configure do
  ## The production environment is meant for finished, "live" apps. Code is not reloaded between requests.
  config.cache_classes = true

  ## Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  ## Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  ## For nginx:
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

  ## If you have no front-end server that supports something like X-Sendfile,
  ## just comment this out and Rails will serve the files

  ## See everything in the log (default is :info)
  # config.log_level = :debug

  ## Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  ## Use a different cache store in production
  # config.cache_store = :mem_cache_store

  ## Disable Rails's static asset server in production, as Apache or nginx will already do this, but
  ## this application is deployed on Heroku.
  config.serve_static_assets = true

  ## Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  ## Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  ## Enable threaded mode
  config.threadsafe!

  ## Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  ## Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
end
