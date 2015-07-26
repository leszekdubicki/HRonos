class EmployeePanelController < ApplicationController
  before_action :authenticate_user! 
  def index
    @vacation_requests = VacationRequest.find_by(user_id: 1)
  end
end
