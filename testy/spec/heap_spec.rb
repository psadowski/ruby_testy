require 'simplecov'
SimpleCov.start


load 'heap.rb'

describe "parent" do
  it "parent returns i/2" do
    expect(parent(2)).to eq(1)
  end
end

describe "left" do
  it "left returns 2*i" do
    expect(left(2)).to eq(4)
  end
end

describe "right" do
  it "right returns 2*i+1" do
    expect(right(2)).to eq(5)
  end
end

describe "heapsort" do
  it "test if element is lower than next one in the table " do
  
  t = [10,8,6,4,2,9,7,5,3,1] 
  heapsort t
  (0..8).each do |counter|
  expect(t[counter]).to be < t[counter+1] 
	end
    
  end
end


describe "heapify" do
  it "test if heapify transform input into correct output " do
  input = [3,1,2,4,5,6,7,8,9,10]
  output = [3,2,1,4,5,6,7,8,9,10]
  
  heapify input,1,3
  (0..9).each do |counter|
  expect(input[counter]).to eq(output[counter])
  end
  
  
  
  end
end