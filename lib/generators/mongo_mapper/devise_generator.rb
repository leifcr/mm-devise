require 'generators/devise/orm_helpers'

module MongoMapper
  module Generators
    class DeviseGenerator < Rails::Generators::NamedBase
      include Devise::Generators::OrmHelpers

      def generate_model
        invoke "mongo_mapper:model", [name] unless model_exists? && behavior == :invoke
      end
      
      def inject_key_types
        inject_into_file model_path, migration_data, :after => "include MongoMapper::Document\n" if model_exists?
      end

      def inject_devise_content
        inject_into_file model_path, model_contents, :after => "include MongoMapper::Document\n" if model_exists?
      end
      
      def migration_data
<<RUBY
  ## Database authenticatable
  key :email,               String, :default => ""
  key :encrypted_password,  String, :default => ""
  
  ## Recoverable
  key :reset_password_token,    String
  key :reset_password_sent_at,  Time

  ## Rememberable
  key :remember_created_at, Time

  ## Trackable
  key :sign_in_count,       Integer, :default => 0
  key :current_sign_in_at,  Time
  key :last_sign_in_at,     Time
  key :current_sign_in_ip,  String
  key :last_sign_in_ip,     String

  ## Confirmable
  # key :confirmation_token,   String
  # key :confirmed_at,         Time
  # key :confirmation_sent_at, Time
  # key :unconfirmed_email,    String # Only if using reconfirmable

  ## Lockable
  # key :failed_attempts, Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # key :unlock_token,    String # Only if unlock strategy is :email or :both
  # key :locked_at,       Time

  ## Token authenticatable
  # key :authentication_token, String
RUBY
      end

      def replace_default_devise_orm
        gsub_file Rails.root.join("config/initializers/devise.rb"), 'orm/false', 'orm/mongo_mapper'
      end
    end
  end
end