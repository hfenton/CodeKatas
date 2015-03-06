require 'spec_helper'


describe Process32 do
  let(:my_proc) { described_class.new }

  it 'should start a process' do
    my_proc.start_process().should eq(2)
  end
end
