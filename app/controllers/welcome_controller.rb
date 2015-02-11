class WelcomeController < ActionController::Base
  def index
    render template: "layouts/welcome"
  end
end
