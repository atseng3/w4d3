class ContactsController < ApplicationController

  def index
    user = User.find(params[:user_id])
    all_contacts = user.contacts + user.other_contacts
    render :json => all_contacts
  end

  def create
    params[:contact][:user_id] = params[:user_id]
    contact = Contact.new(params[:contact])
    if contact.save
      render :json => contact
    else
      render :json => contact.errors, :status => :unprocessable_entity
    end
  end

  def update
    contact = Contact.find(params[:id])
    if contact.update_attributes(params[:contact])
      render :json => true
    else
      render :json => false
    end
  end

  def show
    contact = Contact.find(params[:id])
    render :json => contact
  end

  def destroy
    contact = Contact.find(params[:id])
    if contact.destroy
      head :ok
    else
      render :json => false
    end
  end
end
