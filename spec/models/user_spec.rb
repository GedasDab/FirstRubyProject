# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(name: name, email: email) }

  context 'when there is a name and an email' do
    let(:name) { "Name" }
    let(:email) { "Email" }

    it 'is valid' do
      expect(subject).to be_valid
    end
  end

  context 'when there is no name' do
    let(:email) { "Email" }
    let(:name) { nil }

    it 'is not valid' do
      expect(subject).not_to be_valid
    end
  end

  context 'when there is no email' do
    let(:name) { "Name" }
    let(:email) { nil }

    it 'is not valid' do
      expect(subject).not_to be_valid
    end
  end
end