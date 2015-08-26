# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.5 on 2015-02-11 12:50:05.

require 'ads_common/savon_service'
require 'dfp_api/v201502/audience_segment_service_registry'

module DfpApi; module V201502; module AudienceSegmentService
  class AudienceSegmentService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201502'
      super(config, endpoint, namespace, :v201502)
    end

    def create_audience_segments(*args, &block)
      return execute_action('create_audience_segments', args, &block)
    end

    def get_audience_segments_by_statement(*args, &block)
      return execute_action('get_audience_segments_by_statement', args, &block)
    end

    def perform_audience_segment_action(*args, &block)
      return execute_action('perform_audience_segment_action', args, &block)
    end

    def update_audience_segments(*args, &block)
      return execute_action('update_audience_segments', args, &block)
    end

    private

    def get_service_registry()
      return AudienceSegmentServiceRegistry
    end

    def get_module()
      return DfpApi::V201502::AudienceSegmentService
    end
  end
end; end; end
