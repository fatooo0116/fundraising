class HomeController < ApplicationController
    def index
    end

    def send_mail
      Mail1Mailer.send_a_test_mail().deliver_now
      redirect_to root_path
    end
end
