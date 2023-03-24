module TwentyFiveLivePro
  module Models
    class Roles
      include JSON::Serializable

      @[JSON::Field(key: "roleId")]
      property role_id : Int64
      @[JSON::Field(key: "contactId")]
      property contact_id : Int64
    end
  end
end
