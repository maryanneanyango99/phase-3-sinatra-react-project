class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/planners" do
    Planner.all.to_json
   end
   
   post '/planners' do
    # contact_email = params[:contact]
    contact_email = contact.find_by(contact: params[:contact])
    contact_id = contact_email.id
   

    planners = Planner.create(
      title: params[:title],
      price: params[:price],
      description: params[:description],
      rating: params[:rating]

    )
    planners.to_json
  end
   
   get "/events" do
    Event.all.to_json
    
   end
   post "/events" do 
    Event.create(
      likes: params[:likes],
      image1: params[:image1],
      image2: params[:image2],
      image3: params[:image3],
      image4: params[:image4],
    )
    events.to_json
  end

   get "/request" do
    Request.all.to_json
   end
    # delete
  delete '/request/:id' do
    request = Request.find(params[:id])
    request.destroy 
    request.to_json
  end 

  # post
  post '/request' do
    requests = Request.create(
      name: params[:name],
      email: params[:email],
      message: params[:message]
    )
    requests.to_json
  end

  # patch
  patch '/request/:id' do
    requests = Request.find(params[:id])
    request.update(
      name: params[:name],
      email: params[:email],
      message: params[:message]
    )
    requests.to_json
  end

  
end
