#company_search
class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.orgnr = getCompanyOrgnr(@company.name)
    if @company.orgnr.nil?
      flash[:notice] = "searching "+@company.name.to_s+"  fails! , please try a nother name"
      if session[:success].present?
        session.delete(:success)
      end
    redirect_to root_path
      #render :new
    else
      #if the search find compnay orgnr
      @company.save
      session[:success] = "true"
      session[:orgnr] = @company.orgnr
      session[:name] = @company.name
      flash.discard(:notice)
      redirect_to root_path
    end
  end

  private

    def company_params
      params.require(:company).permit(:name)
    end
end
