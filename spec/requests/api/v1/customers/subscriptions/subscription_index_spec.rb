require 'rails_helper'

RSpec.describe 'customer subscriptions endpoint' do
  context 'when response is successful' do
    it 'returns all subscriptions of a given customer' do
      customer = Customer.create(first_name: 'Devin', last_name: 'Pile', email: 'test@email.com', address: '123 Fake St')
      tea_1 = Tea.create(title: 'Oolong Tea', description: 'Organic, top rated', temperature: 159, brew_time: 'Between 1-4 minutes')
      tea_2 = Tea.create(title: 'Rishi Tea', description: 'Organic, recommended by staff', temperature: 165, brew_time: 'Between 2-4 minutes')
      subscription_1 = Subscription.create(customer_id: customer.id, tea_id: tea_1.id, title: 'Monthly Oolong Tea', price: 10.00, frequency: :monthly)
      subscription_1 = Subscription.create(customer_id: customer.id, tea_id: tea_2.id, title: 'Weekly Rishi Tea', price: 12.00, frequency: :weekly)

      get "/api/v1/customers/#{customer.id}/subscriptions"

      expect(response).to be_successful
      expect(response.status).to eq 200

      subscriptions = JSON.parse(response.body, symbolize_names: true)

      expect(subscriptions).to be_a Hash
      expect(subscriptions).to have_key(:data)
      expect(subscriptions[:data]).to be_an Array
      expect(subscriptions[:data].count).to eq 2
    end
  end
end 