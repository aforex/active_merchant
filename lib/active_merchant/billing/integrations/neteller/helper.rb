module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Neteller
        class Helper < ActiveMerchant::Billing::Integrations::Helper

          mapping :access_token, 'access_token'
          mapping :merchant_ref_id, 'merchant_ref_id'
          mapping :total_amount, 'total_amount'
          mapping :currency, 'currency'
          mapping :lang, 'lang'
          mapping :amount, 'amount'
          mapping :quantity, 'quantity'
          mapping :name, 'name'
          mapping :description, 'description'

        end
      end
    end
  end
end
