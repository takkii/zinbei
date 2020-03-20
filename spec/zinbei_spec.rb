# frozen_string_literal: true

require 'spec_helper'

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

# RSpec Test Start
RSpec.describe 'Zinbei' do
  before do
    require 'zinbei/version'
    require 'himekuri'
  end

  describe 'prop/version' do
    subject { Zinbei::VERSION }
    it { is_expected.to eq('1.5.3') }
  end

  context 'himekuri' do
    it "'himekuri'を評価します" do
      expect(Object.new.himekuri).equal?(Object.new.count)
    end
  end

  after do
    GC.start
  end
end

__END__
