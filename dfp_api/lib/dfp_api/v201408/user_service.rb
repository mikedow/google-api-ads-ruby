# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-08-12 14:24:00.

require 'ads_common/savon_service'
require 'dfp_api/v201408/user_service_registry'

module DfpApi; module V201408; module UserService
  class UserService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201408'
      super(config, endpoint, namespace, :v201408)
    end

    def create_users(*args, &block)
      return execute_action('create_users', args, &block)
    end

    def get_all_roles(*args, &block)
      return execute_action('get_all_roles', args, &block)
    end

    def get_current_user(*args, &block)
      return execute_action('get_current_user', args, &block)
    end

    def get_users_by_statement(*args, &block)
      return execute_action('get_users_by_statement', args, &block)
    end

    def perform_user_action(*args, &block)
      return execute_action('perform_user_action', args, &block)
    end

    def update_users(*args, &block)
      return execute_action('update_users', args, &block)
    end

    private

    def get_service_registry()
      return UserServiceRegistry
    end

    def get_module()
      return DfpApi::V201408::UserService
    end
  end
end; end; end
