'''
When you initialize an instance variable in a before hook, you pay the
cost of that setup time for all the examples in the group, even if some of them
never use the instance variable. That’s inefficient and can be quite noticeable
when setting up large or expensive objects
'''
Sandwich = Struct.new(:taste, :toppings)
RSpec.describe 'An ideal sandwich' do
  # runs before every example
  before { @sandwich = Sandwich.new('delicious', [])}
  it 'is delicious' do
    taste = @sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    @sandwich.toppings << 'cheese'
    toppings = @sandwich.toppings
    expect(toppings).not_to be_empty
  end
end