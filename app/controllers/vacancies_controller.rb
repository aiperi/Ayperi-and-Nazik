class VacanciesController < ApplicationController
  before_action :set_vacancy, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vacancies = Vacancy.all
    respond_with(@vacancies)
  end

  def show
    respond_with(@vacancy)
  end

  def new
    @vacancy = Vacancy.new
    respond_with(@vacancy)
  end

  def edit
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)
    @vacancy.save
    respond_with(@vacancy)
  end

  def update
    @vacancy.update(vacancy_params)
    respond_with(@vacancy)
  end

  def destroy
    @vacancy.destroy
    respond_with(@vacancy)
  end

  private
    def set_vacancy
      @vacancy = Vacancy.find(params[:id])
    end

    def vacancy_params
      params.require(:vacancy).permit(:email, :position, :workPlace, :workingStatus, :description, :contactphone, :deadlinedate, :salary, :companyInfo)
    end
end
