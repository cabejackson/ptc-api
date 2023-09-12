class ApplicationController < ActionController::API
    def index
        render html: 'Hello', layout: true
    end
end
