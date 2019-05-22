require 'aa_test'

RSpec.describe Array do
  context "takes an array and returns new array with no duplicates" do
    subject (:array) {[1,2,3,3,4,5,5]}
    describe "#my_uniq" do
      it "Monkey-Patching Array" do
        expect(array.my_uniq).to be_a(Array)
      end

      it "Returns an new array without duplicate items" do
        expect(array.my_uniq).to eq([1,2,3,4,5])
      end

    end
  end
  context "Takes an array and returns pairs of indices whose values are equal to zero" do
    subject (:array) {[2, 3, -3, 1, -2, -1, 0]}
    describe "#two_sum" do
      it "Monkey Patching Array?" do
        expect(array.two_sum).to be_a(Array)
      end

      it "Return pairs in order that point to indices that sum to zero" do 
        expect(array.two_sum).to eq([[0,4],[1,2],[3,5]])
      end

      it "should call my_uniq"do
        expect(array.two_sum).to have_received(my_uniq)
      end


    end
  
  end
end