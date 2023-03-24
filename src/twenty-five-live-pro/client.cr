module TwentyFiveLivePro
  class Client
    Log = ::Log.for(self)

    getter events : API::Events
    getter organizations : API::Organizations
    getter resources : API::Resources
    getter spaces : API::Spaces

    def initialize(base_url : String, username : String, password : String)
      session = Session.new(base_url, username, password)

      @events = API::Events.new(session)
      @organizations = API::Organizations.new(session)
      @resources = API::Resources.new(session)
      @spaces = API::Spaces.new(session)
    end
  end
end
