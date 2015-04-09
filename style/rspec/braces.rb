
# bad
create(:product, :trait, attr: :val)
expect(some_value).to eq(23)

# good
create :product, :trait, attr: :val
expect(some_value).to eq 23
