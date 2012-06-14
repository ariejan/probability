require File.expand_path(File.dirname(__FILE__) + "/spec_helper")

describe "Probability for Integer" do
  context "1.in(1)" do
    subject { 1.in(1) }
    specify { should be_true }
  end

  context "0.in(1)" do
    subject { 0.in(1) }
    specify { should be_false }
  end

  context "3.in(0)" do
    subject { 3.in(0) }
    specify { should be_false }
  end

  context "with blocks" do
    it "yields the block for 1.in(1)" do
      expect { |b| 1.in(1, &b) }.to yield_with_no_args
    end

    it "does not yield the block for 0.in(1)" do
      expect { |b| 0.in(1, &b) }.to_not yield_with_no_args
    end
  end
end
