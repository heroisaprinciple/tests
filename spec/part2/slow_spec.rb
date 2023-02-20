'''
We can ask RSpec to list the top time-wasters by passing the --profile option
along with the number of offenders we’d like to see:
$ rspec --profile 2

Output:

Top 2 slowest examples (0.90158 seconds, 69.1% of total time):
The sleep() method can sleep for 0.5sec
  0.50088 seconds ./slow_spec.rb:11
The sleep() method can sleep for 0.4sec
  0.4007 seconds ./slow_spec.rb:10

Finished in 1.31 seconds (files took 0.06766 seconds to load)
4 examples, 0 failures

'''

RSpec.describe 'The sleep() method' do
  it('can sleep for 0.1sec') { sleep 0.1 }
  it('can sleep for 0.3sec') { sleep 0.3 }
  it('can sleep for 0.4sec') { sleep 0.4 }
  it('can sleep for 0.5sec') { sleep 0.5 }
end