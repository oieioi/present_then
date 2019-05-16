# frozen_string_literal: true

RSpec.describe PresentThen do
  it 'has a version number' do
    expect(PresentThen::VERSION).not_to be nil
  end

  describe 'Object#present_then(&block)' do
    subject { val.present_then(&block) }
    let(:val) {}
    let(:block) { ->(val) { "given val is #{val}" } }

    context 'when object is blank' do
      let(:val) { nil }
      it { is_expected.to eq nil }
    end

    context 'when object is present' do
      let(:val) { 1 }
      context 'and give a block' do
        it { is_expected.to eq 'given val is 1' }
      end

      context 'and do not give a block' do
        let(:block) { nil }
        it { is_expected.to eq 1 }
      end
    end
  end
end
