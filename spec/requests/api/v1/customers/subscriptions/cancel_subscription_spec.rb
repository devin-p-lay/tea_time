require 'rails_helper'

RSpec.describe 'update subscription endpoint' do
  context 'when response is successful' do
    it 'returns changed subscription status to cancelled' do
      customer = Customer.create(first_name: 'Devin', last_name: 'Pile', email: 'test@email.com', address: '123 Fake St')
      tea = Tea.create(title: 'Earl Grey', description: 'Organic', temperature: 159, brew_time: 'Between 1-4 minutes')
      subscription = Subscription.create(customer_id: customer.id, tea_id: tea.id, title: 'Quarterly Earl Grey', price: 11.00, frequency: :quarterly)

      patch "/api/v1/customers/#{customer.id}/subscriptions/#{subscription.id}", params: { status: 'cancelled' }

      expect(response).to be_successful
      expect(response.status).to eq 200

      subscription = JSON.parse(response.body, symbolize_names: true)

      expect(subscription[:data][:attributes][:status]).to eq('cancelled')
    end
  end

  context 'when response is not successful' do
    it 'returns error if subscription does not exist' do
      customer = Customer.create(first_name: 'Devin', last_name: 'Pile', email: 'test@email.com', address: '123 Fake St')
      tea = Tea.create(title: 'Earl Grey', description: 'Organic', temperature: 159, brew_time: 'Between 1-4 minutes')

      patch "/api/v1/customers/#{customer.id}/subscriptions/1", params: { status: 'cancelled' }

      expect(response).to_not be_successful
      expect(response.status).to eq 400
    end

    it 'returns error if status is not valid' do
      customer = Customer.create(first_name: 'Devin', last_name: 'Pile', email: 'test@email.com', address: '123 Fake St')
      tea = Tea.create(title: 'Earl Grey', description: 'Organic', temperature: 159, brew_time: 'Between 1-4 minutes')
      subscription = Subscription.create(customer_id: customer.id, tea_id: tea.id, title: 'Quarterly Earl Grey', price: 11.00, frequency: :quarterly)

      patch "/api/v1/customers/#{customer.id}/subscriptions/#{subscription.id}", params: { status: 'pending' }

      expect(response).to_not be_successful
      expect(response.status).to eq 400
    end
  end
end