module TwentyFiveLivePro
  module Models
    class ErrorResponse
      include JSON::Serializable

      class Content
        include JSON::Serializable

        @[JSON::Field(key: "id")]
        property id : Int64
        @[JSON::Field(key: "updated")]
        property updated : String

        class Data
          include JSON::Serializable

          class Items
            include JSON::Serializable

            @[JSON::Field(key: "kind")]
            property kind : String
            @[JSON::Field(key: "id")]
            property id : Int64
            @[JSON::Field(key: "etag")]
            property etag : String
            @[JSON::Field(key: "name")]
            property name : String
            @[JSON::Field(key: "title")]
            property title : String
            @[JSON::Field(key: "eventLocator")]
            property event_locator : String
            @[JSON::Field(key: "priority")]
            property priority : Int64
            @[JSON::Field(key: "updated")]
            property updated : String

            class Dates
              include JSON::Serializable

              @[JSON::Field(key: "startDate")]
              property start_date : String
              @[JSON::Field(key: "endDate")]
              property end_date : String
            end

            @[JSON::Field(key: "dates")]
            property dates : Dates?

            class Context
              include JSON::Serializable

              @[JSON::Field(key: "state")]
              property state : Int64
              @[JSON::Field(key: "typeId")]
              property type_id : Int64
              @[JSON::Field(key: "parentId")]
              property parent_id : Int64
            end

            @[JSON::Field(key: "context")]
            property context : Context?
          end

          @[JSON::Field(key: "items")]
          property items : Items
        end

        @[JSON::Field(key: "data")]
        property data : Data
        @[JSON::Field(key: "errors")]
        property errors : Array(ErrorsResponse)

        class Etags
          include JSON::Serializable

          class Valid
            include JSON::Serializable

            @[JSON::Field(key: "id")]
            property id : Int64
            @[JSON::Field(key: "etag")]
            property etag : String
          end

          @[JSON::Field(key: "valid")]
          property valid : Valid?

          class Invalid
            include JSON::Serializable

            @[JSON::Field(key: "id")]
            property id : Int64
            @[JSON::Field(key: "etag")]
            property etag : String
          end

          @[JSON::Field(key: "invalid")]
          property invalid : Invalid?
        end

        @[JSON::Field(key: "etags")]
        property etags : Etags
      end

      @[JSON::Field(key: "content")]
      property content : Content
    end
  end
end
