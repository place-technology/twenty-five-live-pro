module TwentyFiveLivePro
  module Models
    class RoleExpanded
      include JSON::Serializable

      @[JSON::Field(key: "roleId")]
      property role_id : Int64
      @[JSON::Field(key: "etag")]
      property etag : String
      @[JSON::Field(key: "roleName")]
      property role_name : String
    end
  end
end
