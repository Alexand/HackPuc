class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @contact.email = @user = User.where("email like '%#{params[:email]}%'").first.email
    @contact.name = 'Cliente'
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to contatos_url(), :notice => "Sua mensagem foi enviada!"
    else
      redirect_to contatos_url(), :alert => "Erro ao enviar a mensagem!"
    end
  end
end