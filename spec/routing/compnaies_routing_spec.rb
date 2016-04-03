RSpec.describe "routes for compnaies", :type => :routing do

  it "routes 'companies/new' to companies#new" do
    expect(:get => "/companies/new").
    to route_to(:controller => "companies", :action => "new")
  end 

  it "routes 'companies/' to companies#create" do
    expect(:post => "/companies").
    to route_to(:controller => "companies", :action => "create")
  end

  it "routes 'companies/1' to companies#show with id=1" do
    expect(:get => "/companies/1").
    to route_to(:controller => "companies", :action => "show", :id => "1")
  end

  it "routes companies/1.josn to companies#show with id=1 & format=json" do
    expect(:get => "/companies/1.json").
    to route_to(:controller => "companies", :action => "show", :id => "1", :format => "json")
  end

  it "routes companies/1.xml to companies#show" do
    expect(:get => "/companies/1.xml").
    to route_to(:controller => "companies", :action => "show", :id => "1", :format => "xml")
  end

end