module TwentyFiveLivePro
  module Models
    class EventDetailv2
      include JSON::Serializable

      @[JSON::Field(key: "id")]
      property id : Int64?

      @[JSON::Field(key: "updated")]
      property updated : String?

      class Data
        include JSON::Serializable

        class Event
          include JSON::Serializable

          @[JSON::Field(key: "kind")]
          property kind : String

          @[JSON::Field(key: "id")]
          property id : Int64

          @[JSON::Field(key: "etag")]
          property etag : String

          @[JSON::Field(key: "name")]
          property name : String

          @[JSON::Field(key: "eventLocator")]
          property event_locator : String

          @[JSON::Field(key: "priority")]
          property priority : Int64

          @[JSON::Field(key: "updated")]
          property updated : String

          @[JSON::Field(key: "dates")]
          property dates : Dates
        end

        @[JSON::Field(key: "items")]
        property items : Array(Event)?
      end

      @[JSON::Field(key: "data")]
      property data : Data?

      class ExpandedInfo
        include JSON::Serializable

        @[JSON::Field(key: "organizations")]
        property organizations : Array(OrganizationExpanded)?
        @[JSON::Field(key: "attributes")]
        property attributes : Array(AttributeExpanded)?
        @[JSON::Field(key: "roles")]
        property roles : Array(RoleExpanded)?
        @[JSON::Field(key: "spaces")]
        property spaces : Array(SpaceExpanded)?
        @[JSON::Field(key: "resources")]
        property resources : Array(ResourceExpanded)?
        @[JSON::Field(key: "states")]
        property states : Array(StateExpanded)?
        @[JSON::Field(key: "eventTypes")]
        property event_types : Array(EventTypeExpanded)?
        @[JSON::Field(key: "parentNodes")]
        property parent_nodes : Array(ParentNodeExpanded)?
        @[JSON::Field(key: "contacts")]
        property contacts : Array(ContactExpanded)?
      end

      @[JSON::Field(key: "expandedInfo")]
      property expanded_info : ExpandedInfo?
    end
  end
end
