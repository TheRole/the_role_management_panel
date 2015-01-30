module TheRole
  module Controller
    def login_required
      send TheRole.config.login_required_method
    end

    def role_access_denied
      access_denied_method = TheRole.config.access_denied_method
      return send(access_denied_method) if access_denied_method && respond_to?(access_denied_method)

      the_role_default_access_denied_response
    end

    private

    def role_required
      role_access_denied unless current_user.try(:has_role?, controller_path, action_name)
    end

    def owner_required
      role_access_denied unless current_user.try(:owner?, @owner_check_object)
    end

    def the_role_default_access_denied_response
      if request.xhr?
        render json: {
          errors: { the_role: [ t('the_role.access_denied') ] },

          controller_name:      controller_path,
          action_name:          action_name,
          has_access_to_action: current_user.try(:has_role?, controller_path, action_name),

          current_user: { id: current_user.try(:id) },

          owner_check_object: {
            owner_check_object_id:    @owner_check_object.try(:id),
            owner_check_object_class: @owner_check_object.try(:class).try(:to_s)
          },

          has_access_to_object: current_user.try(:owner?, @owner_check_object)
        }, status: 401
      else
        redirect_to :back, flash: { error: t('the_role.access_denied') }
      end
    end
  end
end
