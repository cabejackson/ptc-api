class ApiController < ApplicationController
    # equivalent of authenticate_user! on devise, but this one will check the oath token
    # before_action :authenticate_user!
    before_action :doorkeeper_authorize!

    #skip CSRF token authenticity for API requests
    skip_before_action :verify_authenticity_token, raise: false

    #set response type
    respond_to :json

    private

    #helper method to access the current user from the token
    def current_user
        @current_user ||= User.find_by(id: doorkeeper_token[:resource_owner_id])
    end
end