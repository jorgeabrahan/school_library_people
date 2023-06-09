require 'spec_helper'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  describe '#factorial' do
    context 'When factorial receives a valid input test functionality' do
      it 'Should return 6 as factorial of 3' do
        expect(@solver.factorial(3)).to eq(6)
      end

      it 'Should return 120 as factorial of 5' do
        expect(@solver.factorial(5)).to eq(120)
      end

      it 'Should return 5040 as factorial of 7' do
        expect(@solver.factorial(5)).to eq(120)
      end

      it 'Should return 1 as factorial of 0' do
        expect(@solver.factorial(0)).to eq(1)
      end
    end

    context 'When factorial receives an invalid input raise error' do
      it 'Should raise an exception when a -1 is given' do
        expect { @solver.factorial(-1) }.to raise_error('Integer should be positive')
      end

      it 'Should raise an exception when a -5 is given' do
        expect { @solver.factorial(-5) }.to raise_error('Integer should be positive')
      end
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      solver = Solver.new
      expect(solver.reverse('')).to eq('')
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('racecar')).to eq('racecar')
    end
  end

  describe '#fizzbuzz' do
    context 'takes an integer and return fizz, buzz or fizzbuzz depending if' do
      it 'it divisible by 3 return fizz, gets 6 expected fizz' do
        expect(@solver.fizzbuzz(6)).to eq('fizz')
      end
      it 'it divisible by 5 return buzz, gets 10 expected fizz' do
        expect(@solver.fizzbuzz(10)).to eq('buzz')
      end
      it 'it divisible by 3 and 5 return fizzbuzz, gets 15 expected fizz' do
        expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
      it 'its not divisible by 3 or 5 return N as a String, gets 8 expected "8"' do
        expect(@solver.fizzbuzz(8)).to eq('8')
      end
    end
  end
end
