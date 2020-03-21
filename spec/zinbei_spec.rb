# frozen_string_literal: true

require 'spec_helper'
require 'date'

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

# RSpec Test Start
RSpec.describe 'Zinbei' do
  before do
    require 'zinbei/version'
    require 'himekuri'
  end

  describe 'prop/version' do
    str = '1.5.3'
    subject { Zinbei::VERSION }
    it { is_expected.to eq(str) }
  end

  context 'himekuri' do
    nen = %w[令和]
    td = Date.today
    rei = (nen[0] + "#{(td.year - 2018)}年" + "#{td.month}月" + "#{td.day}日")
    subject { Object.new.reiwa }
    it { is_expected.to eq(rei) }
  end

  after do
    GC.start
  end
end

__END__
