require './caesar_cipher'

describe '#caesar_cipher' do
  subject { method(:caesar_cipher) }
  it 'correctly encrypts a string' do
    expect(subject.call('numeric', 2)).to eql('pwogtke')
  end

  it 'ignores spaces and special characters' do
    expect(subject.call('hello mom!', 1)).to eql('ifmmp npn!')
  end

  it 'conserves character case' do
    expect(subject.call('NiCe', 3)).to eql('QlFh')
  end

  it 'wraps from a to z' do
    expect(subject.call('yveltal', 5)).to eql('dajqyfq')
  end

  it "doesn't change an empty string" do
    expect(subject.call('', 3)).to eql('')
  end
end