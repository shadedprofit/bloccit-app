require 'rails_helper'

describe Vote do
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        expect( @vote.abs ).to eq(1) # since we are adding a vote model, I expect there to be an instance variable of @vote. I also use the absolute value method to eliminate the need to write an "or" statement in the tests.
      end
    end
  end
end