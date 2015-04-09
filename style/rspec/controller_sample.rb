# bad
it "redirects to home page and sets flash" do
  get :index
  expect(response).to redirect_to contract_path(contract)
  expect(response).to set_the_flash[:notice]
end

# good
before do
  get :index
end

it { should redirect_to contract_path(contract) }
it { should set_the_flash[:notice] }
