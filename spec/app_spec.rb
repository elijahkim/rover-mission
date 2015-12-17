require "spec_helper"

describe App do
  let(:input) { File.read("spec/support/input.txt") }
  let(:subject) { described_class.new(input) }
  it "returns the proper coordinates" do
    expect(subject.run).to eq(
      <<-eos
1 3 N
5 1 E
     eos
    )
  end
end
