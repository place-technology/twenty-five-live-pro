module TwentyFiveLivePro
  module API
    class Resources
      def initialize(@session : Session)
      end

      def get(id : Int64, included_elements : Array(String), expanded_elements : Array(String))
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("include", included_elements.join(","))
        builder.add("expand", expanded_elements.join(","))

        Models::ResourceDetailv2.from_json(@session.get("/resource/#{id}/detail.json?#{io.rewind}").body)
      end

      def list(page : Int64 = 1, items_per_page : Int64 = 10, since : String? = nil, paginate : String? = nil)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("page", page)
        builder.add("itemsPerPage", items_per_page)
        builder.add("paginate", paginate) if paginate

        Models::ResourceListv2.from_json(@session.get("/resource/list.json?#{io.rewind}").body)
      end
    end
  end
end
