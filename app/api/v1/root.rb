module V1
  class Root < Grape::API
    version 'v1'
    format :json
    helpers V1::Helpers::RequestHelper

    # 404
    rescue_from ActiveRecord::RecordNotFound do |e|
      not_found_error e.message
    end

    # 422
    rescue_from ActiveRecord::RecordInvalid do |e|
      Rails.logger.error(e)
      record_invalid_error e.message
    end

    route :any, '*path' do
      not_found_error '404 Not Found'
    end

    # 400
    rescue_from Grape::Exceptions::ValidationErrors do |e|
      bad_request_error e
    end

    # 500
    rescue_from :all do |e|
      Root.logger.error(e)
      internal_server_error 'Internal server error'
    end

    # ここに作成したらそれぞれのクラスをマウントする
    mount V1::Resources::External::Root
  end
end
