#company_search
class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]
  def index
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.orgnr = "333-4444"
    if @company.save
      redirect_to @company
    else
      render :new
    end
  end

  end

  def show
  end

  private

    def set_company
      @company = Company.find(params[:id])
    end
    def company_params
      params.require(:company).permit(:name)
    end
