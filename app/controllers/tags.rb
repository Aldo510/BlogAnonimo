post '/post-tag' do
  #Dependiendo de el tag que el usuario haya elegido
  tag = params[:tag]
  #Cambiara el valor de ese tag
  case tag
  when "deportes" then tag = 1
  when "social" then tag = 2
  when "musica" then tag = 3 
    #regresa el valor del tag
  tag   
  end
  #redirige a la vista con el valor del tag
  redirect to "/?tag_id=#{tag}"
end