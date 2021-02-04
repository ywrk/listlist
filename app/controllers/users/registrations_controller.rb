class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_guest, only: [:destroy, :update]

  def check_guest
    if resource.email == "guest@example.com"
      redirect_to root_path, alert: "ゲストユーザーの変更・削除はできません"
    end
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

end
