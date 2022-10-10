class V1::ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    render json: @contacts, status: :ok
  end

  def create
    @contacts = Contact.new(contact_params)
  end
end
