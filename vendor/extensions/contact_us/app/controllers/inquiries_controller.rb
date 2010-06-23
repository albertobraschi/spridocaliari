class InquiriesController < ApplicationController
  helper 'spree/base'

  resource_controller

  create.flash "Sua mensagem foi enviada com sucesso."

  create.after do
    if params[:mailing_list]
      # make call to mail engine API
    end

  end


  def index
    redirect_to(new_inquiry_url) unless params[:inquiry]
  end


end

