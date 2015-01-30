class TheRoleManagementPanelGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../', __FILE__)
  # argument :xname, type: :string, default: :xname

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
    directory "app/assets", "app/assets"
  end

  def cp_controllers
    directory "app/controllers", "app/controllers"
  end

  def cp_views
    directory "app/views", "app/views"
  end
end
