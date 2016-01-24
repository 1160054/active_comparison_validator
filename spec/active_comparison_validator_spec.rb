# -*- coding: utf-8 -*-
require 'spec_helper'

describe ActiveComparisonValidator do
  it 'has a version number' do
    expect(ActiveComparisonValidator::VERSION).not_to be nil
  end

  describe '.comparison_validator' do
    before do
      @class = self.class.const_set :Dummy, Class.new
      @class.send(:include, ActiveModel::Model)
      @class.send(:include, ActiveComparisonValidator)
      @class.send(:attr_accessor, :open_at, :close_at)
    end
    it 'Alredy Included comparison_validator' do
      expect(@class.methods.grep(/comparison_validator/).count).to eq 1
    end

    describe 'Custom validation' do
      before do
        @class.send(:comparison_validator, 'open_at == close_at')
        @instance = @class.new
      end
      it 'Custom validator is defined' do
        expect(@instance.methods.grep(/comparison_validator_for_open_at_and_close_at/).count).to eq 1
      end
      it 'Custom validation is executed' do
        @instance.open_at  = Date.today
        @instance.close_at = @instance.open_at + 1
        expect { @instance.valid? }.to change { @instance.errors.full_messages }
          .from([]).to([%(Close at doesn't match Open at), %(Open at doesn't match Close at)])
      end
    end
  end
end
