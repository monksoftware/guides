
# bad
let(:product) { create(:product, :trait, attr: :val) }
expect(some_value).to eq(23)

# good
let(:product) { create :product, :trait, attr: :val }
expect(some_value).to eq 23
