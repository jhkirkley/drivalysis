class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(patients)
    id = current_patients.id
    get 'patients/:id/edit'
  end
end
