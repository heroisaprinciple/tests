require './intro/one'
require './intro/rook'

describe 'Bouncer' do
  it 'rejects xx from entering the venue' do
    b = Bouncer.new
    bounced = b.bounce('xx')
    expect(bounced).to be(true)
  end
end

describe 'Rook' do
  it 'returns the correct points value' do
    rook = Rook.new
    rook_point = rook.points
    expect(rook_point).to be(5)
  end

  it 'returns the correct name' do
    rook = Rook.new
    rook_name = rook.name
    expect(rook_name).to eq('Rook')
  end

  it 'returns a point value greater than pawns' do
    rook = Rook.new
    rook_point = rook.points
    expect(rook_point).to be_between(1, 10)
  end
end
