class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
  	render "index.html"
  end
  def webDesign
  	@service = getService('Web Design')
  	render "services.html"
  end

  def internet
  	@service = getService('Internet of Things')
  	render "services.html"
  end

  def digital
  	@service = getService('Digital Strategy Consulting ')
  	render "services.html"
  end

  def bigData
  	@service = getService('Big Data Analytics.')
  	render "services.html"
  end

  def getService(name)
  	return {image: "02.png",name: name,tagline:"Lorem ipsum dolor sit amet, consectetur adipisicing elit.",description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia sint rem inventore est reprehenderit voluptatum, placeat delectus dolore quam ab ea, illum omnis! Laboriosam neque accusantium ex aliquam, reiciendis, quo."}
  end
end
