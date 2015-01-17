require 'haml'
require_relative "the_role_bootstrap3_ui/version"

module TheRoleBootstrap3Ui
  class Engine < Rails::Engine; end
end

_root_ = File.expand_path('../../',  __FILE__)

# # Loading of concerns
require "#{_root_}/config/routes.rb"
