class HomeController < ApplicationController
    def index

    end

    def hi
        @message = "run away!"
        @is_message = true
    end
end
