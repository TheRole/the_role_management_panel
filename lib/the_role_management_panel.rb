require_relative "the_role_management_panel/version"

require 'the_notification'
require 'bootstrap-sass'
require 'sass-rails'
require 'haml'

module TheRoleManagementPanel
  class Engine < Rails::Engine; end
end

require_relative "../config/routes.rb"
