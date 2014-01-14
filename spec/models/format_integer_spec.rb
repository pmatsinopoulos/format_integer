require 'spec_helper'

describe FormatInteger do
  describe "#format" do
    context 'when 35235235' do
      subject { FormatInteger.new(35235235) }
      it { expect(subject.format).to eq("35,235,235") }
    end
    context 'when 123412341234' do
      subject { FormatInteger.new(123412341234) }
      it { expect(subject.format).to eq("123,412,341,234") }
    end
    context 'when 1' do
      subject { FormatInteger.new(1) }
      it { expect(subject.format).to eq("1") }
    end
    context 'when 0' do
      subject { FormatInteger.new(0) }
      it { expect(subject.format).to eq("0") }
    end
    context 'when 10' do
      subject { FormatInteger.new(10) }
      it { expect(subject.format).to eq("10") }
    end
    context 'when 100' do
      subject { FormatInteger.new(100) }
      it { expect(subject.format).to eq("100") }
    end
    context 'when 1000' do
      subject { FormatInteger.new(1000) }
      it { expect(subject.format).to eq("1,000") }
    end
    context 'when 10000' do
      subject { FormatInteger.new(10000) }
      it { expect(subject.format).to eq("10,000") }
    end
    context 'when 100000' do
      subject { FormatInteger.new(100000) }
      it { expect(subject.format).to eq("100,000") }
    end
    context 'when 1000000' do
      subject { FormatInteger.new(1000000) }
      it { expect(subject.format).to eq("1,000,000") }
    end
    context 'when 1002' do
      subject { FormatInteger.new(1002) }
      it { expect(subject.format).to eq("1,002") }
    end
  end
end

