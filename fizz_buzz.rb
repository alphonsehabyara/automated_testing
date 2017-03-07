require 'rspec'

class Fizzbuzz
  def output(number)
    if number % 15 === 0
      return "FizzBuzz"
    elsif number % 3 === 0
      return "Fizz"
    elsif 
      number % 5 === 0
      return "Buzz"        
    else
    return number
  end
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fb = Fizzbuzz.new
      expect(fb.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do 
      fb = Fizzbuzz.new
      expect(fb.output(2)).to eq(2)
    end

    it 'should return fizz if given 3' do 
      fb= Fizzbuzz.new
      expect(fb.output(3)).to eq("Fizz")
    end

    it 'should return Buzz if given 5' do 
      fb = Fizzbuzz.new 
      expect(fb.output(5)).to eq("Buzz")
    end

    it 'should return Buzz if given 10' do 
      fb = Fizzbuzz.new
      expect(fb.output(10)).to eq("Buzz")
    end

    it 'should return FizzBuzz if given 15' do 
      fb = Fizzbuzz.new
      expect(fb.output(15)).to eq("FizzBuzz")
    end

    it 'should return Buzz if given 50' do 
      fb = Fizzbuzz.new
      expect(fb.output(50)).to eq("Buzz")
    end

    it 'should return FizzBuzz if given 60' do 
      fb = Fizzbuzz.new
      expect(fb.output(60)).to eq("FizzBuzz")
    end
  end

end