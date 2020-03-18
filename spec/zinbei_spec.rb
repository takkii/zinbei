# frozen_string_literal: true

require 'spec_helper'

# RSpec Test Start
RSpec.describe 'Zinbei' do
  before do
    require 'zinbei/version'
  end

  describe 'prop/version' do
    @ver = '1.5.3'
    it "まず最初に、'version'を評価します。@verとZinbei::VERSIONを比較します。" do
      expect(Zinbei::VERSION).equal?(@ver)
    end
  end

  after do
    GC.start
  end
end

__END__
