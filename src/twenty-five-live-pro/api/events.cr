module TwentyFiveLivePro
  module API
    class Events
      def initialize(@session : Session)
      end

      def get(id : Int64, included_elements : Array(String), expanded_elements : Array(String))
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("include", included_elements.join(","))
        builder.add("expand", expanded_elements.join(","))

        Models::EventDetailv2.from_json(JSON.parse(@session.get("/event/#{id}/detail.json?#{io.rewind}").body).["content"].to_json)
      end

      def list(page : Int64 = 1, items_per_page : Int64 = 10, since : String? = nil, paginate : String? = nil)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("page", page)
        builder.add("itemsPerPage", items_per_page)
        builder.add("created_since", since) if since
        builder.add("paginate", paginate) if paginate

        Models::EventListv2.from_json(@session.get("/event/list.json?#{io.rewind}").body)
      end
    end
  end
end
