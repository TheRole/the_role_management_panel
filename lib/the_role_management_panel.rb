require 'haml'
require_relative "the_role_management_panel/version"

module TheRoleManagementPanel
  class Engine < Rails::Engine; end
end

_root_ = File.expand_path('../../',  __FILE__)

# # Loading of concerns
require "#{ _root_ }/config/routes.rb"
