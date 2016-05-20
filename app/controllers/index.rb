#Ruta raíz
get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  #Guardar los parametros que manden las vistas
  tag = params[:tag_id]
  #dependiendo de lo que regrese el tag
  if tag == "1"
    #Regresara solo los post con tag_id 1
    #El where encuentra todos, el find_by solo
    #Regresara un objeto
    @chose = Post.where(tag_id: 1)
  elsif tag == "2"
    #Contenido
    #Regresara solo los post con tag_id 1
    @chose = Post.where(tag_id: 2)
  elsif tag == "3"
    #Contenido
    #Regresara solo los post con tag_id 1
    @chose = Post.where(tag_id: 3)
  end  
  #Mostrar todos los tags en orden descendente para que 
  #muestren con forme se fueron creando
  @all_post = Post.all.order("id DESC")
  #renderear al index
  erb :index
end
