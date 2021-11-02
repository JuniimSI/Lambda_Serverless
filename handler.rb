# frozen_string_literal: true

load 'vendor/bundle/bundler/setup.rb'

require 'correios-cep'

def handler(event:)
  cep = event['pathParameters']['cep']

  address = Correios::CEP::AddressFinder.get(cep)

  { statusCode: 200, body: JSON.generate(address) }
end
