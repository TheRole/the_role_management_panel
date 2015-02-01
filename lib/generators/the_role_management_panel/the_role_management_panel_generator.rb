class TheRoleManagementPanelGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../', __FILE__)
  # argument :xname, type: :string, default: :xname

  # bundle exec rails g the_role_management_panel NAME
  def generate_controllers
    if gen_name == 'install'
      cp_views
      cp_assets
      cp_controllers
    elsif gen_name == 'assets'
      cp_assets
    elsif gen_name == 'controllers'
      cp_controllers
    elsif gen_name == 'views'
      cp_views
    elsif gen_name == 'locales'
      cp_locales
    elsif gen_name == 'help'
      cp_help
    else
      puts 'TheRole ManagementPanel Generator - wrong Name'
      puts 'Try to use install'
    end
  end

  private

  def gen_name
    name.to_s.downcase
  end

  def cp_assets
    directory 'app/assets',
              'app/assets'
  end

  def cp_controllers
    directory 'app/controllers',
              'app/controllers'
  end

  def cp_views
    directory 'app/views',
              'app/views'
  end

  def cp_locales
    directory 'config/locales',
              'config/locales'
  end

  def cp_help
    puts File.read "#{ TheRoleManagementPanelGenerator.source_root }/lib/generators/the_role_management_panel/USAGE"
  end
end
