class TeachersController < ApplicationController
  before_action :authorize_request
  before_action :find_teacher

  def index
    @teachers = Teacher.all
    render json: @teachers
  end

  def show
    render json: @teacher
  end

  private

  def find_teacher
    begin
      @teacher = Teacher.find(params[:id])
    rescue => exception
      render json: {data:"Data not found"}
    end
  end
end
