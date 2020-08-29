module V1
  module Helpers
    module RequestHelper
      extend Grape::API::Helpers

      # def authenticate!(scope)
      #   unauthorized_error 'Invalid Token' unless current_user_by_scope(scope).present?
      # end
      #
      # # userもしくはclientのどちらもログインしていない場合にエラーを返す
      # def authenticate_any!
      #   return if current_user_by_scope("client").present? || current_user_by_scope("user").present?
      #
      #   unauthorized_error 'Invalid Token'
      # end
      #
      # # companyのstatusがactiveではない場合はエラーが発生する
      # def active_company!
      #   unauthorized_error 'Invalid Company Status' unless @current_client.company.active?
      # end
      #
      # def not_demo_company!
      #   unauthorized_error 'Invalid Company Status' if @current_client.company.demo?
      # end
      #
      # def active_user!
      #   unauthorized_error 'Invalid User Status' unless @current_user.active?
      # end

      def unauthorized_error(message, type = "")
        error!({success: false, message: message, status: 401, type: type}, 401)
      end

      def bad_request_error(message, exception = nil)
        error!({success: false, message: message, status: 400, exception: exception}, 400)
      end

      def not_found_error(message = "")
        error!({success: false, message: message, status: 404}, 404)
      end

      def forbidden_error(message)
        error!({success: false, message: message, status: 403}, 403)
      end

      def record_invalid_error(message)
        error!({success: false, message: message, status: 422}, 422)
      end

      def internal_server_error(message)
        error!(success: false, message: message, status: 500)
      end

      # def set_current_client
      #   @current_client = current_user_by_scope("client")
      # end
      #
      # def set_current_company
      #   current_client = @current_client || current_user_by_scope("client")
      #   @current_company = current_client.try(:company)
      # end
      #
      # def set_current_user
      #   access_token = get_authorization_token
      #   @current_user = if access_token.present?
      #                     cognito_user = AwsCognitoService.new.get_user(access_token)
      #                     return nil unless cognito_user.present?
      #
      #                     user_provider = if cognito_user.provider_facebook?
      #                                       User.providers[:facebook]
      #                                     elsif cognito_user.provider_apple?
      #                                       User.providers[:apple]
      #                                     else
      #                                       nil
      #                                     end
      #                     User.find_by(uid: cognito_user.uid, provider: user_provider)
      #                   else
      #                     nil
      #                   end
      # end
      #
      # def get_authorization_token
      #   token_prefix = /^Bearer\s/
      #   if headers['Authorization']
      #     headers['Authorization'].gsub(token_prefix, '')
      #   else
      #     ""
      #   end
      # end

      private

      # # @param {String} scope admin or user or client
      # def current_user_by_scope(scope)
      #   env['warden'].user(scope.to_sym)
      # end
    end
  end
end
