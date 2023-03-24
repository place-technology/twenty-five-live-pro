module TwentyFiveLivePro
  module API
    class Spaces
      def initialize(@session : Session)
      end

      def get(id : Int64, included_elements : Array(String), expanded_elements : Array(String))
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("include", included_elements.join(","))
        builder.add("expand", expanded_elements.join(","))

        Models::SpaceDetailv2.from_json(@session.get("/space/#{id}/detail.json?#{io.rewind}").body)
      end

      def list(page : Int64 = 1, items_per_page : Int64 = 10, since : String? = nil, paginate : String? = nil)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("page", page)
        builder.add("itemsPerPage", items_per_page)
        builder.add("paginate", paginate) if paginate

        Models::SpaceListv2.from_json(@session.get("/space/list.json?#{io.rewind}").body)
      end

      def availability(id : Int64, start_date : String, end_date : String, included_elements : Array(String), expanded_elements : Array(String))
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("include", included_elements.join(","))
        builder.add("expand", expanded_elements.join(","))

        body = {
          "spaces" => [
            {
              "spaceId" => id,
              "dates"   => {
                "startDt" => start_date,
                "endDt"   => end_date,
              },
            },
          ],
        }

        @session.post("/spaceAvailability.json?#{io.rewind}", raw: body.to_json).body
      end
    end
  end
end
