# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.8.0 on 2012-08-03 17:40:26.

require 'adwords_api/errors'

module AdwordsApi; module V201206; module AdGroupAdService
  class AdGroupAdServiceRegistry
    ADGROUPADSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"AdGroupAdPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"AdGroupAdOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"AdGroupAdReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"AdGroupAdPage", :min_occurs=>0, :max_occurs=>1}]}}}
    ADGROUPADSERVICE_TYPES = {:AdError=>{:fields=>[{:name=>:reason, :type=>"AdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdExtensionOverrideStats=>{:fields=>[], :base=>"Stats"}, :AdGroupAdCountLimitExceeded=>{:fields=>[], :base=>"EntityCountLimitExceeded"}, :AdGroupAdError=>{:fields=>[{:name=>:reason, :type=>"AdGroupAdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdStats=>{:fields=>[{:name=>:percent_served, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"Stats"}, :AdxError=>{:fields=>[{:name=>:reason, :type=>"AdxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Audio=>{:fields=>[{:name=>:duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:streaming_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ready_to_play_on_the_web, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BetaError=>{:fields=>[{:name=>:reason, :type=>"BetaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DeprecatedAd=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"DeprecatedAd.Type", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :Dimensions=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Image=>{:fields=>[{:name=>:data, :type=>"base64Binary", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :ImageError=>{:fields=>[{:name=>:reason, :type=>"ImageError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :MediaError=>{:fields=>[{:name=>:reason, :type=>"MediaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Media_Size_DimensionsMapEntry=>{:fields=>[{:name=>:key, :type=>"Media.Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Dimensions", :min_occurs=>0, :max_occurs=>1}]}, :Media_Size_StringMapEntry=>{:fields=>[{:name=>:key, :type=>"Media.Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :MobileAd=>{:fields=>[{:name=>:headline, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:markup_languages, :type=>"MarkupLanguageType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:mobile_carriers, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:business_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:phone_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :NewEntityCreationError=>{:fields=>[{:name=>:reason, :type=>"NewEntityCreationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotWhitelistedError=>{:fields=>[{:name=>:reason, :type=>"NotWhitelistedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PagingError=>{:fields=>[{:name=>:reason, :type=>"PagingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :"PolicyViolationError.Part"=>{:fields=>[{:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:length, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PolicyViolationKey=>{:fields=>[{:name=>:policy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:violating_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProductAd=>{:fields=>[{:name=>:promotion_line, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :QueryError=>{:fields=>[{:name=>:reason, :type=>"QueryError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StatsQueryError=>{:fields=>[{:name=>:reason, :type=>"StatsQueryError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TempAdUnionId=>{:fields=>[], :base=>"AdUnionId"}, :TextAd=>{:fields=>[{:name=>:headline, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description1, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description2, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :ThirdPartyRedirectAd=>{:fields=>[{:name=>:is_cookie_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_user_interest_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_tagged, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_types, :type=>"VideoType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:expanding_directions, :type=>"ThirdPartyRedirectAd.ExpandingDirection", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"RichMediaAd"}, :Video=>{:fields=>[{:name=>:duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:streaming_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ready_to_play_on_the_web, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:industry_standard_commercial_identifier, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertising_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:you_tube_video_id_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :DynamicSearchAd=>{:fields=>[{:name=>:description1, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description2, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :AdGroupAdExperimentData=>{:fields=>[{:name=>:experiment_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:experiment_delta_status, :type=>"ExperimentDeltaStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:experiment_data_status, :type=>"ExperimentDataStatus", :min_occurs=>0, :max_occurs=>1}]}, :AdUnionId=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_union_id_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ExemptionRequest=>{:fields=>[{:name=>:key, :type=>"PolicyViolationKey", :min_occurs=>0, :max_occurs=>1}]}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :PolicyViolationError=>{:fields=>[{:name=>:key, :type=>"PolicyViolationKey", :min_occurs=>0, :max_occurs=>1}, {:name=>:external_policy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:external_policy_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:external_policy_description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_exemptable, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:violating_parts, :type=>"PolicyViolationError.Part", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApiError"}, :RichMediaAd=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:dimensions, :type=>"Dimensions", :min_occurs=>0, :max_occurs=>1}, {:name=>:snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:impression_beacon_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:certified_vendor_format_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:source_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rich_media_ad_type, :type=>"RichMediaAd.RichMediaAdType", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Ad"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Media=>{:fields=>[{:name=>:media_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Media.MediaType", :min_occurs=>0, :max_occurs=>1}, {:name=>:reference_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:dimensions, :type=>"Media_Size_DimensionsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:urls, :type=>"Media_Size_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:mime_type, :type=>"Media.MimeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:source_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:file_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:media_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :MobileImageAd=>{:fields=>[{:name=>:markup_languages, :type=>"MarkupLanguageType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:mobile_carriers, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:image, :type=>"Image", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :Stats=>{:fields=>[{:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:network, :type=>"Stats.Network", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_position, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_cpc, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_cpm, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:ctr, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:view_through_conversions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TemplateElementField=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"TemplateElementField.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_media, :type=>"Media", :min_occurs=>0, :max_occurs=>1}]}, :ImageAd=>{:fields=>[{:name=>:image, :type=>"Image", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_to_copy_image_from, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :TemplateElement=>{:fields=>[{:name=>:unique_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:fields, :type=>"TemplateElementField", :min_occurs=>0, :max_occurs=>:unbounded}]}, :TemplateAd=>{:fields=>[{:name=>:template_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_union_id, :type=>"AdUnionId", :min_occurs=>0, :max_occurs=>1}, {:name=>:template_elements, :type=>"TemplateElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:dimensions, :type=>"Dimensions", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :Ad=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:disapproval_reasons, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupAd=>{:fields=>[{:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad, :type=>"Ad", :min_occurs=>0, :max_occurs=>1}, {:name=>:experiment_data, :type=>"AdGroupAdExperimentData", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"AdGroupAd.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"AdGroupAd.ApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:trademark_disapproved, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats, :type=>"AdStats", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupAdOperation=>{:fields=>[{:name=>:operand, :type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>1}, {:name=>:exemption_requests, :type=>"ExemptionRequest", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Operation"}, :AdGroupAdPage=>{:fields=>[{:name=>:entries, :type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :AdGroupAdReturnValue=>{:fields=>[{:name=>:value, :type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"AdError.Reason"=>{:fields=>[]}, :"AdGroupAd.ApprovalStatus"=>{:fields=>[]}, :"AdGroupAd.Status"=>{:fields=>[]}, :"AdGroupAdError.Reason"=>{:fields=>[]}, :"AdxError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AuthorizationError.Reason"=>{:fields=>[]}, :"BetaError.Reason"=>{:fields=>[]}, :"ClientTermsError.Reason"=>{:fields=>[]}, :"DatabaseError.Reason"=>{:fields=>[]}, :"DateError.Reason"=>{:fields=>[]}, :"DeprecatedAd.Type"=>{:fields=>[]}, :"DistinctError.Reason"=>{:fields=>[]}, :"EntityCountLimitExceeded.Reason"=>{:fields=>[]}, :"EntityNotFound.Reason"=>{:fields=>[]}, :ExperimentDataStatus=>{:fields=>[]}, :ExperimentDeltaStatus=>{:fields=>[]}, :"IdError.Reason"=>{:fields=>[]}, :"ImageError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :MarkupLanguageType=>{:fields=>[]}, :"Media.MediaType"=>{:fields=>[]}, :"Media.MimeType"=>{:fields=>[]}, :"Media.Size"=>{:fields=>[]}, :"MediaError.Reason"=>{:fields=>[]}, :"NewEntityCreationError.Reason"=>{:fields=>[]}, :"NotEmptyError.Reason"=>{:fields=>[]}, :"NotWhitelistedError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"OperationAccessDenied.Reason"=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"PagingError.Reason"=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :"QueryError.Reason"=>{:fields=>[]}, :"QuotaCheckError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RateExceededError.Reason"=>{:fields=>[]}, :"ReadOnlyError.Reason"=>{:fields=>[]}, :"RequestError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"RichMediaAd.RichMediaAdType"=>{:fields=>[]}, :"SelectorError.Reason"=>{:fields=>[]}, :"SizeLimitError.Reason"=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"Stats.Network"=>{:fields=>[]}, :"StatsQueryError.Reason"=>{:fields=>[]}, :"TemplateElementField.Type"=>{:fields=>[]}, :"ThirdPartyRedirectAd.ExpandingDirection"=>{:fields=>[]}, :VideoType=>{:fields=>[]}}
    ADGROUPADSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADGROUPADSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADGROUPADSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADGROUPADSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, AdGroupAdServiceRegistry)
    end
  end
end; end; end