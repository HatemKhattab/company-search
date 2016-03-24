#company_search
class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def show
    @compnay = company.find(params[id:])
  end

  def create
    @company = Company.new(company_params)
    @company.orgnr = getCompanyOrgnr(@company.name)
    if @company.orgnr.nil?
      flash[:notice] = "searching "+@company.name.to_s+"  fails! , please try a nother name"
      render :new
    else
      #if the search find compnay orgnr
      @company.save
      redirect_to "compnay_path"
    end
  end

  private

    def company_params
      params.require(:company).permit(:name)
    end
end
