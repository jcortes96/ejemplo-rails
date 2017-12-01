class ComplaintsController < ApplicationController
  before_action :set_complaints

  def index
    @new_complaint = Complaint.new
  end

  def create
    @new_complaint = Complaint.new(complaint_params)
    if @new_complaint.save
      redirect_to complaints_path, notice: 'Publicaste tu queja correctamente. ¡Gracias!'
    else
      render :index
    end
  end

  private

  def set_complaints
    @complaints = Complaint.where(date: (3.days.ago)..Date.today).order(created_at: :desc)
  end

  def complaint_params
    params.require(:complaint).permit(:email, :body, :person_id)
  end
end
