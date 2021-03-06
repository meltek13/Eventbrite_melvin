class UserMailer < ApplicationMailer

    default from: 'regnault.melvin@hotmail.fr'
    #validates :description, presence: true
    #validates :first_name, presence: true
    #validates :last_name, presence: true
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://eventbrite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  

end
