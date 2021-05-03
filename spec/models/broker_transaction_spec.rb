require 'rails_helper'

RSpec.describe BrokerTransaction do
    it { expect(described_class.new).to validate_presence_of :price }
    it { expect(described_class.new).to validate_presence_of :quantity }
    it { expect(described_class.new).to validate_presence_of :total }
end