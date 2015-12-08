require_relative "../../lib/square_root"

describe SquareRoot do
  context "computes a square root" do
    it "evaluates a square root with Newton's method" do
      expect(SquareRoot.new(2).newton_method).to eq 1.5
    end

    it "evaluates a square root given an apprpoximation" do
      expect(SquareRoot.new(2).newton_method(1.25)).to eq 57.0/40
    end

    it "evaluates a square root given an apprpoximation" do
      s = SquareRoot.new(2)
      expect(s.compute(2,1.25)).to eq s.newton_method(57.0/40)
    end

    it "evaluates a square root with 2 iterations" do
      expect(SquareRoot.new(2).compute(2)).to eq 17.0/12
    end
  end

  context "returns a nubmer of iterations given the error range" do
    it "returns how many times the function got iterated" do
      expect(SquareRoot.new(5).times_iterated).to be_an(Integer)
    end

    it "closer approximation takes less iterations" do
      s = SquareRoot.new(2)
      expect(s.times_iterated(1.4)).to be < s.times_iterated
    end
  end
end
