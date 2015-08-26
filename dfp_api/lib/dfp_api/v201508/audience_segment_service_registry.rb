# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.10.0 on 2015-08-13 11:27:48.

require 'dfp_api/errors'

module DfpApi; module V201508; module AudienceSegmentService
  class AudienceSegmentServiceRegistry
    AUDIENCESEGMENTSERVICE_METHODS = {:create_audience_segments=>{:input=>[{:name=>:segments, :type=>"FirstPartyAudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_audience_segments_response", :fields=>[{:name=>:rval, :type=>"FirstPartyAudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_audience_segments_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_audience_segments_by_statement_response", :fields=>[{:name=>:rval, :type=>"AudienceSegmentPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_audience_segment_action=>{:input=>[{:name=>:action, :type=>"AudienceSegmentAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_audience_segment_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_audience_segments=>{:input=>[{:name=>:segments, :type=>"FirstPartyAudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_audience_segments_response", :fields=>[{:name=>:rval, :type=>"FirstPartyAudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    AUDIENCESEGMENTSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ActivateAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :AdUnitTargeting=>{:fields=>[{:name=>:ad_unit_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:include_descendants, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ApproveAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :AudienceSegmentDataProvider=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AudienceSegmentPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"AudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FirstPartyAudienceSegment=>{:fields=>[], :abstract=>true, :base=>"AudienceSegment"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomCriteria=>{:fields=>[{:name=>:key_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:operator, :type=>"CustomCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}], :base=>"CustomCriteriaLeaf"}, :CustomCriteriaSet=>{:fields=>[{:name=>:logical_operator, :type=>"CustomCriteriaSet.LogicalOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:children, :type=>"CustomCriteriaNode", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaNode"}, :CustomCriteriaLeaf=>{:fields=>[], :abstract=>true, :base=>"CustomCriteriaNode"}, :CustomCriteriaNode=>{:fields=>[], :abstract=>true}, :AudienceSegmentCriteria=>{:fields=>[{:name=>:operator, :type=>"AudienceSegmentCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:audience_segment_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaLeaf"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DeactivateAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :EntityChildrenLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityChildrenLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ThirdPartyAudienceSegment=>{:fields=>[{:name=>:approval_status, :type=>"ThirdPartyAudienceSegment.AudienceSegmentApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:license_type, :type=>"ThirdPartyAudienceSegment.LicenseType", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"AudienceSegment"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryTargeting=>{:fields=>[{:name=>:targeted_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_placement_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NonRuleBasedFirstPartyAudienceSegment=>{:fields=>[{:name=>:membership_expiration_days, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"FirstPartyAudienceSegment"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PopulateAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FirstPartyAudienceSegmentRule=>{:fields=>[{:name=>:inventory_rule, :type=>"InventoryTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_criteria_rule, :type=>"CustomCriteriaSet", :min_occurs=>0, :max_occurs=>1}]}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RuleBasedFirstPartyAudienceSegment=>{:fields=>[{:name=>:rule, :type=>"FirstPartyAudienceSegmentRule", :min_occurs=>0, :max_occurs=>1}], :base=>"RuleBasedFirstPartyAudienceSegmentSummary"}, :RuleBasedFirstPartyAudienceSegmentSummary=>{:fields=>[{:name=>:page_views, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:recency_days, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:membership_expiration_days, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"FirstPartyAudienceSegment"}, :AudienceSegmentAction=>{:fields=>[], :abstract=>true}, :AudienceSegment=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:category_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"AudienceSegment.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:data_provider, :type=>"AudienceSegmentDataProvider", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"AudienceSegment.AudienceSegmentType", :min_occurs=>0, :max_occurs=>1}]}, :AudienceSegmentError=>{:fields=>[{:name=>:reason, :type=>"AudienceSegmentError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SharedAudienceSegment=>{:fields=>[], :base=>"AudienceSegment"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[], :abstract=>true}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"CollectionSizeError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :"CustomCriteria.ComparisonOperator"=>{:fields=>[]}, :"CustomCriteriaSet.LogicalOperator"=>{:fields=>[]}, :"AudienceSegmentCriteria.ComparisonOperator"=>{:fields=>[]}, :"EntityChildrenLimitReachedError.Reason"=>{:fields=>[]}, :"EntityLimitReachedError.Reason"=>{:fields=>[]}, :"ThirdPartyAudienceSegment.AudienceSegmentApprovalStatus"=>{:fields=>[]}, :"ThirdPartyAudienceSegment.LicenseType"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"AudienceSegment.AudienceSegmentType"=>{:fields=>[]}, :"AudienceSegment.Status"=>{:fields=>[]}, :"AudienceSegmentError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}}
    AUDIENCESEGMENTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return AUDIENCESEGMENTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return AUDIENCESEGMENTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return AUDIENCESEGMENTSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, AudienceSegmentServiceRegistry)
    end
  end
end; end; end
