class Users::RegistrationsController < ApplicationController
  def build_resource(hash={})
    self.resource = resource_class.new_with_session(hash || {}, session)
    super
  end
end
