class ManagerPanelController < ApplicationController
  def index
    @employees = Employee.all
  end
end
