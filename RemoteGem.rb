class RemoteGem
  include HTTParty
 
  base_uri "api.purdue.io/odata"
 
  attr_accessor :subject, :course_Num
 
  def initialize(subject, course_Num)
    self.subject = subject
    self.course_Num = course_Num
  end
 
  # Returns the versions for this particular RemoteGem
  def versions
    response = self.class.get("/versions/#{name}.json")
    if response.success?
      response
    else
      raise response.response
    end
  end
 
  # Find a particular gem, based on its name
  def self.find(name)
    response = get("/gems/#{nam)
    if response.success?
      self.new(response["name"], response["info"], response["version"],
         response["authors"], response["downloads"])
    else
      # this just raises the net/http response that was raised
      raise response.response
    end
  end
end
