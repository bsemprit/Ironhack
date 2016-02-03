class ContactsController < ApplicationController
  def index
		@contacts = Contact.order("name ASC").all
		render "index"
  end

  def new
  		@contact = Contact.new
  		render "new"
  end

   def create
         # Create new Contact from params[:contact]
	    @contact = Contact.new(
	      :name => params[:contact][:name],
	      :address => params[:contact][:address],
	      :phone_number => params[:contact][:phone_number],
	      :email => params[:contact][:email])

	  	# Now we save the contact

	    if @contact.save
	    	redirect_to('/')
	    else
	    	render 'new'
	    end

	    # Render contact's attributes
	    # render(:text => contact.attributes)

	    # redirect_to("/contacts")
  end

  def show
  		@contact = Contact.find(params[:id])
  		render "show"
  end

  def add_favorite
  		id = params[:favorite_contact_id]
  		@contact = Contact.find_by(id: id)
  		@contact.make_favorite!
  		@contact.save
  		redirect_to "/"
  end
end
