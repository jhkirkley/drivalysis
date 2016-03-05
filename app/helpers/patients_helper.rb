module PatientsHelper

  def checked(area)
  @patient.days_of_week.nil? ? false : @patient.days_of_week.match(area)
end
end
