require 'net/http'

module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Neteller
        class Notification < ActiveMerchant::Billing::Integrations::Notification
          %w(
            access_token
          ).each do |param_name|
            define_method(param_name.underscore){ params[param_name] }

            def status
              case params['status'].to_i
                when 2
                  'pending'
                when 1
                  'cancelled'
                when 0
                  'failed'
                when -1
                  'paid'
                when -2
                  'expired'
                else 'unknown'
              end
            end


            def payment_order
              params = { "order":
                             { "merchantRefId":"#{Time.now}",
                               "totalAmount": 3599,
                               "currency":"USD",
                               "lang":"ru_RU",
                               "items":
                                   [{ "amount": 3599,
                                      "quantity": 1,
                                      "name":"Shit",
                                      "description":"This shit doesn't work"}]
                             }
              }
              url = 'https://test.api.neteller.com/v1/orders'
              headers = {content_type: :json, Authorization: 'Bearer ' + access_token}
              RestClient.post url, params.to_json, headers
            end
          end
        end
      end
    end
  end
end
