class Admin::RoleSectionsController < ApplicationController
  include TheRole::Controller
  layout  TheRole.config.layout.to_s

  before_action :login_required
  before_action :role_required

  before_action :section_rule_names, only: [:rule_on, :rule_off, :destroy_rule]
  before_action :role_find,          only: [:create, :create_rule, :rule_on, :rule_off, :destroy, :destroy_rule]
  before_action :owner_required,     only: [:create, :create_rule, :rule_on, :rule_off, :destroy, :destroy_rule]

  def create
    if @role.create_section params[:section_name]
      flash[:notice] = t(:section_created, scope: t_scope)
    else
      flash[:error]  = t(:section_not_created, scope: t_scope)
    end

    redirect_to_edit
  end

  def create_rule
    if @role.create_rule params[:section_name], params[:rule_name]
      flash[:notice] = t(:section_rule_created, scope: t_scope)
    else
      flash[:error]  = t(:section_rule_not_created, scope: t_scope)
    end

    redirect_to_edit
  end

  def rule_on
    if @role.rule_on @section_name, @rule_name
      flash[:notice] = t(:section_rule_on, scope: t_scope)
    else
      flash[:error]  = t(:state_not_changed, scope: t_scope)
    end

    redirect_to_edit
  end

  def rule_off
    if @role.rule_off @section_name, @rule_name
      flash[:notice] = t(:section_rule_off, scope: t_scope)
    else
      flash[:error]  = t(:state_not_changed, scope: t_scope)
    end

    redirect_to_edit
  end

  def destroy_rule
    if @role.delete_rule @section_name, @rule_name
      flash[:notice] = t(:section_rule_deleted, scope: t_scope)
    else
      flash[:error]  = t(:section_rule_not_deleted, scope: t_scope)
    end

    redirect_to_edit
  end

  def destroy
    section_name = params[:id]

    if @role.delete_section section_name
      flash[:notice] = t(:section_deleted, scope: t_scope)
    else
      flash[:error]  = t(:section_not_deleted, scope: t_scope)
    end

    redirect_to_edit
  end

  protected

  def t_scope
    [:the_role_gui]
  end

  def section_rule_names
    @section_name = params[:id]
    @rule_name    = params[:name]
  end

  def role_find
    @role = Role.find params[:role_id]

    # TheRole: You have to define object for ownership check
    for_ownership_check(@role)
  end

  def redirect_to_edit
    redirect_to edit_admin_role_path @role
  end
end
