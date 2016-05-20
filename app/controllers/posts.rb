#Si le da clic a crear post lo mandara a esta vista
get '/post/new' do
  #redirige a la pagina para crear post
  erb :create_post
end

#Metodo para ir a editar el post y pasarle los valores
#de post_it para editar el que se quiere
get '/post/edit_post/:post_id' do
  #Guardar el valor del post que se escogio
  id = params[:post_id]
  #Buscar el post seleccionado y guardarlo en
  #una variable de instanci
  @post = Post.find(id)
  #redirigir a la pagina de editar
  erb :editar
end

#metodo para borrar el post que el usuario
#seleccion pasando por parametro el id del que se
#haya seleccionado
get '/post/delete_post/:post_id' do
  #Guardar el id que se busco
  id = params[:post_id]
  #Borrar de la base de datos el id del post
  #seleccionado
  Post.delete(id)
  #redirigir a el index
  redirect to '/'
end

#Metodo para crear un post nuevo
post '/post/new' do
  #Guardar los parametros de el post nuevo
  title = params[:title]
  content = params[:content]
  #guardar los parametros del tag que se haya seleccionado
  tag = params[:tag]
  case tag
    #dependiendo de que haya escogido el valor del
    #tag cambiara
  when "deportes" then tag = 1
  when "social" then tag = 2
  when "musica" then tag = 3
    #regresar el nuevo valor del tag
  tag    
  end
  #Crear un nuevo post con los parametros que el usuario haya dado
  #y con el tag_id que se haya escogido
  post_new = Post.create(tag_id: tag, title: title, content: content)
  redirect to '/'
end

#Metodo para editar el post que se haya seleccionado
post '/post/update/:post_id' do
  #guarda el valor del post seleccionado
  id = params[:post_id] 
  #Guarda los parametros que haya puesto el usuario
  title = params[:title]
  content = params[:content]
  #busca el post y lo guarda en una variable
  post = Post.find(id.to_i)
  #actualiza el post con los nuevos valores que el usuario puso
  post.update(title: title, content: content)
  #Redirigir a el index
  redirect to '/'
end
#Buscar como editar un post y buscar como eliminar los post
#Con eso acabaria este programa
#Para editar Person.update(15, :user_name => 'Samuel', :group => 'expert')
#Metodo para borrar: Todo.delete(id)