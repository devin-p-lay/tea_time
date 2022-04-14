require 'rails_helper'

RSpec.describe 'create subscription endpoint' do
  it 'creates a subscription for a customer to a given tea' do
    customer = Customer.create(first_name: 'Devin', last_name: 'Pile', email: 'test@email.com', address: '123 Fake St')
    green_tea = Tea.create(title: 'Green Tea', description: 'Organic Japanese', temperature: 167, brew_time: 'Between 1-4 minutes')
    body = {
      tea_id: green_tea.id,
      title: 'Weekly Green Tea',
      price: 10.00,
      frequency: :weekly
    }

    post "/api/v1/customers/#{customer.id}/subscriptions", params: body

    expect(response).to be_successful
    expect(response.status).to eq 201

    subscription = JSON.parse(response.body, symbolize_names: true)

    expect(subscription).to have_key(:data)
    expect(subscription[:data]).to be_a Hash
  end

  context 'when response is unsuccessful' do
    it 'returns error if tea is invalid' do
      customer = Customer.create(first_name: 'Devin', last_name: 'Pile', email: 'test@email.com', address: '123 Fake St')
      green_tea = Tea.create(title: 'Green Tea', description: 'Organic Japanese', temperature: 167, brew_time: 'Between 1-4 minutes')
      body = {
        tea_id: 11111,
        title: 'Weekly Green Tea',
        price: 10.00,
        frequency: :weekly
      }

      post "/api/v1/customers/#{customer.id}/subscriptions", params: body

      expect(response).to_not be_successful
      expect(response.status).to eq 400
    end

    it 'returns error if customer is invalid' do
      customer = Customer.create(first_name: 'Devin', last_name: 'Pile', email: 'test@email.com', address: '123 Fake St')
      green_tea = Tea.create(title: 'Green Tea', description: 'Organic Japanese', temperature: 167, brew_time: 'Between 1-4 minutes')
      body = {
        tea_id: green_tea.id,
        title: 'Weekly Green Tea',
        price: 10.00,
        frequency: :weekly
      }

      post "/api/v1/customers/1111/subscriptions", params: body

      expect(response).to_not be_successful
      expect(response.status).to eq 400
    end


    it 'returns error if attributes are missing' do
      customer = Customer.create(first_name: 'Devin', last_name: 'Pile', email: 'test@email.com', address: '123 Fake St')
      green_tea = Tea.create(title: 'Green Tea', description: 'Organic Japanese', temperature: 167, brew_time: 'Between 1-4 minutes')
      body = {
        tea_id: green_tea.id,
      }

      post "/api/v1/customers/#{customer.id}/subscriptions", params: body
      
      expect(response).to_not be_successful
      expect(response.status).to eq 400
    end
  end
end