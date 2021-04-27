require 'rails_helper'

RSpec.describe Stock, type: :model do
  it { expect(described_class.new).to validate_presence_of :price }
  it { expect(described_class.new).to validate_presence_of :ticker }
  it { expect(described_class.new).to validate_presence_of :company }
end