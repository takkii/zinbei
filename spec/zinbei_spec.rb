# frozen_string_literal: true

require 'spec_helper'
require 'date'

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

# RSpec Test Start
RSpec.describe 'Zinbei RSpec Test' do
  before do
    require 'zinbei/version'
    require 'himekuri'
  end

  describe 'Zinbei Function' do
    context 'prop/version' do
      str = '1.5.5.1'
      subject { Zinbei::VERSION }
      it { is_expected.to eq(str) }
    end

    context 'himekuri' do
      nen = %w[令和]
      td = Date.today
      rei = (nen[0] + "#{(td.year - 2018)}年" + "#{td.month}月" + "#{td.day}日" + %w(日 月 火 水 木 金 土)[td.wday] + "曜日")
      subject { HimekuriClass.new.reiwa }
      it { is_expected.to eq(rei) }
    end

    context 'downcase' do
      ring = 'DOWNCASE'
      rin = 'DoWnCase'
      subject { ring.downcase }
      it { is_expected.to eq(rin.downcase) }
    end

    context 'upcase' do
      upp = 'upcase'
      upps = 'UpCase'
      subject { upp.upcase }
      it { is_expected.to eq(upps.upcase) }
    end

    context 'String' do
      sri = 'こんにちは'
      tng = 'こんにちは'.to_s
      subject { sri }
      it { is_expected.to eq(tng) }
    end

    after do
      GC.start
    end
  end
end

__END__
