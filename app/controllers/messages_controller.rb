class MessagesController < ApplicationController
    def random
        @message = Message.order(Arel.sql('RANDOM()')).first
        render json: @message
      end
end
