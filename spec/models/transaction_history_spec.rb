require 'rails_helper'

RSpec.describe TransactionHistory, type: :model do
  it { expect(described_class.new).to validate_presence_of :price }
  it { expect(described_class.new).to validate_presence_of :stock }
  it { expect(described_class.new).to validate_presence_of :date }
  it { expect(described_class.new).to validate_presence_of :quantity }
end