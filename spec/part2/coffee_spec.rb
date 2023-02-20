require './bookCases/part2/coffee'

RSpec.configure do |config|
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = 'spec/part2/coffee.txt'
end

RSpec.describe 'A cup of coffee' do
  let(:coffee) { Coffee.new }
  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  it 'is light in colour' do
    pending 'Colour not impemented yet' # will make pending status, but not failed
    expect(coffee.color).to be(:light)
  end

  it 'is cooler than 200deg Fahrenheit' do
    pending 'Temperature not implemented yet'
    expect(coffee.temperature).to be < 200.0
  end

  context 'with milk' do # fcontext or context 'with milk', focus: true do to specify focused
    before { coffee.add :milk }
    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end
  end
end