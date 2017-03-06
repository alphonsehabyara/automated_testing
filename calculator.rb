require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end


  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def associative (number_one, number_two)
    return (number_one + number_two) - number_one
  end

  def log (number)
    return Math.log10(number)
  end

  def sin(number)
    return Math.sin(number)    
  end

end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new 
      expect(calculator.add(1,2)).to eq(3)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new 
      expect(calculator.subtract(1,2)).to eq(-1)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new 
      expect(calculator.multiply(1,2)).to eq(2)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new 
      expect(calculator.divide(1,2.to_f)).to eq(0.5)
    end
  end

  describe '#square' do
    it 'should return the square of number' do
      calculator = Calculator.new 
      expect(calculator.square(5)).to eq(25)
    end
  end

  describe '#power' do
    it 'should return the power of number' do
      calculator = Calculator.new 
      expect(calculator.power(5, 3)).to eq(125)
    end
  end

  describe '#associative' do
    it 'should return the associative of two numbers' do
      calculator = Calculator.new 
      expect(calculator.associative(5, 3)).to eq(3)
    end
  end

  describe '#log' do
    it 'should return the log of number' do
      calculator = Calculator.new 
      expect(calculator.log(10).round).to eq(1)
    end
  end

  describe '#sin' do
    it 'should return the sin of number' do
      calculator = Calculator.new 
      expect(calculator.sin(90).round).to eq(1)
    end
  end

end
