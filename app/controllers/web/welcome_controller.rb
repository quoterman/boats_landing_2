class Web::WelcomeController < Web::ApplicationController

  def index
     @text_blocks = TextBlock.all
  end

end