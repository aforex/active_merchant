module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Neteller
        class Helper < ActiveMerchant::Billing::Integrations::Helper

          mapping :access_token, 'access_token'
          # mapping :amount, 'amount'
          # mapping :currency, 'currency'
          # mapping :transaction_id, 'transaction_id'
          # mapping :language, 'language'
          # mapping :detail1_description, 'detail1_description'
          # mapping :detail1_text, 'detail1_text'
          # mapping :status_url, 'status_url'

        end
      end
    end
  end
end
