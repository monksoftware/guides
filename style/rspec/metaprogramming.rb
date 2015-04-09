# bad
it 'works for sold and available products' do
  expect(build :product, status: :sold).to be_working
  expect(build :product, status: :available).to be_working
end

# good
%i(sold available).each do |status|
  it "works for #{status} products" do
    expect(build :product, status: status).to be_working
  end
end

# this is very simple example and maybe not the best one, but you get the idea :-)
