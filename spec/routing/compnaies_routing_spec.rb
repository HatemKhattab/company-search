RSpec.describe "routes for compnaies", :type => :routing do
  it "routes /new to the companies controller" do
    expect(:get => "/new").
      to route_to(:controller => "compnaies", :action => "new")
  end
end