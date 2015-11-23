require 'simplecov'
SimpleCov.start


load 'hash.rb'

describe "haszowanie" do
  it "check if hash table works correctly" do
	t = ['NIL','NIL','NIL','NIL','NIL','NIL','NIL','NIL','NIL','NIL']
	out = [0,0,1,'NIL',4,5,'NIL','NIL','NIL','NIL']
	haszowanie(t,0)
	haszowanie(t,0)
	haszowanie(t,5)
	haszowanie(t,1)
	haszowanie(t,4)
      (0..9).each do |counter|
  expect(t[counter]).to eq(out[counter])
  end
  end
end