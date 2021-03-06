
Sandwich = Struct.new(:taste, :toppings)


# This is a Helper Method
def sandwich
  @sandwich ||= Sandwich.new('delicious', [])
end


RSpec.describe 'An ideal sandwich' do
  # IDEA: (Hooks) before { @sandwich = Sandwich.new('delicious', []) }

  it "is delicious" do
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it "lets me add toppings" do
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
