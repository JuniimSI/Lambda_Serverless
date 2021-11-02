# frozen_string_literal: true

load 'vendor/bundle/bundler/setup.rb'

require 'correios-cep'

def handler(event:, context:)
  cep = event['pathParameters']['cep']

  address = Correios::CEP::AddressFinder.get(cep)

  if address.empty?
    { statusCode: 404, body: JSON.generate('Não encontrado o cep passado.') }
  else
    { statusCode: 200, body: JSON.generate(address) }
  end
rescue ArgumentError
  { statusCode: 422, body: JSON.generate('Não processável o cep passado.') }
end
