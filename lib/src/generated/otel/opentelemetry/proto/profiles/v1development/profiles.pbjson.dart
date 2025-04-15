//
//  Generated code. Do not modify.
//  source: opentelemetry/proto/profiles/v1development/profiles.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aggregationTemporalityDescriptor instead')
const AggregationTemporality$json = {
  '1': 'AggregationTemporality',
  '2': [
    {'1': 'AGGREGATION_TEMPORALITY_UNSPECIFIED', '2': 0},
    {'1': 'AGGREGATION_TEMPORALITY_DELTA', '2': 1},
    {'1': 'AGGREGATION_TEMPORALITY_CUMULATIVE', '2': 2},
  ],
};

/// Descriptor for `AggregationTemporality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aggregationTemporalityDescriptor = $convert.base64Decode(
    'ChZBZ2dyZWdhdGlvblRlbXBvcmFsaXR5EicKI0FHR1JFR0FUSU9OX1RFTVBPUkFMSVRZX1VOU1'
    'BFQ0lGSUVEEAASIQodQUdHUkVHQVRJT05fVEVNUE9SQUxJVFlfREVMVEEQARImCiJBR0dSRUdB'
    'VElPTl9URU1QT1JBTElUWV9DVU1VTEFUSVZFEAI=');

@$core.Deprecated('Use profilesDataDescriptor instead')
const ProfilesData$json = {
  '1': 'ProfilesData',
  '2': [
    {'1': 'resource_profiles', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.ResourceProfiles', '10': 'resourceProfiles'},
  ],
};

/// Descriptor for `ProfilesData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profilesDataDescriptor = $convert.base64Decode(
    'CgxQcm9maWxlc0RhdGESaQoRcmVzb3VyY2VfcHJvZmlsZXMYASADKAsyPC5vcGVudGVsZW1ldH'
    'J5LnByb3RvLnByb2ZpbGVzLnYxZGV2ZWxvcG1lbnQuUmVzb3VyY2VQcm9maWxlc1IQcmVzb3Vy'
    'Y2VQcm9maWxlcw==');

@$core.Deprecated('Use resourceProfilesDescriptor instead')
const ResourceProfiles$json = {
  '1': 'ResourceProfiles',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.opentelemetry.proto.resource.v1.Resource', '10': 'resource'},
    {'1': 'scope_profiles', '3': 2, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.ScopeProfiles', '10': 'scopeProfiles'},
    {'1': 'schema_url', '3': 3, '4': 1, '5': 9, '10': 'schemaUrl'},
  ],
  '9': [
    {'1': 1000, '2': 1001},
  ],
};

/// Descriptor for `ResourceProfiles`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceProfilesDescriptor = $convert.base64Decode(
    'ChBSZXNvdXJjZVByb2ZpbGVzEkUKCHJlc291cmNlGAEgASgLMikub3BlbnRlbGVtZXRyeS5wcm'
    '90by5yZXNvdXJjZS52MS5SZXNvdXJjZVIIcmVzb3VyY2USYAoOc2NvcGVfcHJvZmlsZXMYAiAD'
    'KAsyOS5vcGVudGVsZW1ldHJ5LnByb3RvLnByb2ZpbGVzLnYxZGV2ZWxvcG1lbnQuU2NvcGVQcm'
    '9maWxlc1INc2NvcGVQcm9maWxlcxIdCgpzY2hlbWFfdXJsGAMgASgJUglzY2hlbWFVcmxKBgjo'
    'BxDpBw==');

@$core.Deprecated('Use scopeProfilesDescriptor instead')
const ScopeProfiles$json = {
  '1': 'ScopeProfiles',
  '2': [
    {'1': 'scope', '3': 1, '4': 1, '5': 11, '6': '.opentelemetry.proto.common.v1.InstrumentationScope', '10': 'scope'},
    {'1': 'profiles', '3': 2, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.Profile', '10': 'profiles'},
    {'1': 'schema_url', '3': 3, '4': 1, '5': 9, '10': 'schemaUrl'},
  ],
};

/// Descriptor for `ScopeProfiles`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scopeProfilesDescriptor = $convert.base64Decode(
    'Cg1TY29wZVByb2ZpbGVzEkkKBXNjb3BlGAEgASgLMjMub3BlbnRlbGVtZXRyeS5wcm90by5jb2'
    '1tb24udjEuSW5zdHJ1bWVudGF0aW9uU2NvcGVSBXNjb3BlEk8KCHByb2ZpbGVzGAIgAygLMjMu'
    'b3BlbnRlbGVtZXRyeS5wcm90by5wcm9maWxlcy52MWRldmVsb3BtZW50LlByb2ZpbGVSCHByb2'
    'ZpbGVzEh0KCnNjaGVtYV91cmwYAyABKAlSCXNjaGVtYVVybA==');

@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = {
  '1': 'Profile',
  '2': [
    {'1': 'sample_type', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.ValueType', '10': 'sampleType'},
    {'1': 'sample', '3': 2, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.Sample', '10': 'sample'},
    {'1': 'mapping_table', '3': 3, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.Mapping', '10': 'mappingTable'},
    {'1': 'location_table', '3': 4, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.Location', '10': 'locationTable'},
    {'1': 'location_indices', '3': 5, '4': 3, '5': 5, '10': 'locationIndices'},
    {'1': 'function_table', '3': 6, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.Function', '10': 'functionTable'},
    {'1': 'attribute_table', '3': 7, '4': 3, '5': 11, '6': '.opentelemetry.proto.common.v1.KeyValue', '10': 'attributeTable'},
    {'1': 'attribute_units', '3': 8, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.AttributeUnit', '10': 'attributeUnits'},
    {'1': 'link_table', '3': 9, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.Link', '10': 'linkTable'},
    {'1': 'string_table', '3': 10, '4': 3, '5': 9, '10': 'stringTable'},
    {'1': 'time_nanos', '3': 11, '4': 1, '5': 3, '10': 'timeNanos'},
    {'1': 'duration_nanos', '3': 12, '4': 1, '5': 3, '10': 'durationNanos'},
    {'1': 'period_type', '3': 13, '4': 1, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.ValueType', '10': 'periodType'},
    {'1': 'period', '3': 14, '4': 1, '5': 3, '10': 'period'},
    {'1': 'comment_strindices', '3': 15, '4': 3, '5': 5, '10': 'commentStrindices'},
    {'1': 'default_sample_type_index', '3': 16, '4': 1, '5': 5, '10': 'defaultSampleTypeIndex'},
    {'1': 'profile_id', '3': 17, '4': 1, '5': 12, '10': 'profileId'},
    {'1': 'dropped_attributes_count', '3': 19, '4': 1, '5': 13, '10': 'droppedAttributesCount'},
    {'1': 'original_payload_format', '3': 20, '4': 1, '5': 9, '10': 'originalPayloadFormat'},
    {'1': 'original_payload', '3': 21, '4': 1, '5': 12, '10': 'originalPayload'},
    {'1': 'attribute_indices', '3': 22, '4': 3, '5': 5, '10': 'attributeIndices'},
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode(
    'CgdQcm9maWxlElYKC3NhbXBsZV90eXBlGAEgAygLMjUub3BlbnRlbGVtZXRyeS5wcm90by5wcm'
    '9maWxlcy52MWRldmVsb3BtZW50LlZhbHVlVHlwZVIKc2FtcGxlVHlwZRJKCgZzYW1wbGUYAiAD'
    'KAsyMi5vcGVudGVsZW1ldHJ5LnByb3RvLnByb2ZpbGVzLnYxZGV2ZWxvcG1lbnQuU2FtcGxlUg'
    'ZzYW1wbGUSWAoNbWFwcGluZ190YWJsZRgDIAMoCzIzLm9wZW50ZWxlbWV0cnkucHJvdG8ucHJv'
    'ZmlsZXMudjFkZXZlbG9wbWVudC5NYXBwaW5nUgxtYXBwaW5nVGFibGUSWwoObG9jYXRpb25fdG'
    'FibGUYBCADKAsyNC5vcGVudGVsZW1ldHJ5LnByb3RvLnByb2ZpbGVzLnYxZGV2ZWxvcG1lbnQu'
    'TG9jYXRpb25SDWxvY2F0aW9uVGFibGUSKQoQbG9jYXRpb25faW5kaWNlcxgFIAMoBVIPbG9jYX'
    'Rpb25JbmRpY2VzElsKDmZ1bmN0aW9uX3RhYmxlGAYgAygLMjQub3BlbnRlbGVtZXRyeS5wcm90'
    'by5wcm9maWxlcy52MWRldmVsb3BtZW50LkZ1bmN0aW9uUg1mdW5jdGlvblRhYmxlElAKD2F0dH'
    'JpYnV0ZV90YWJsZRgHIAMoCzInLm9wZW50ZWxlbWV0cnkucHJvdG8uY29tbW9uLnYxLktleVZh'
    'bHVlUg5hdHRyaWJ1dGVUYWJsZRJiCg9hdHRyaWJ1dGVfdW5pdHMYCCADKAsyOS5vcGVudGVsZW'
    '1ldHJ5LnByb3RvLnByb2ZpbGVzLnYxZGV2ZWxvcG1lbnQuQXR0cmlidXRlVW5pdFIOYXR0cmli'
    'dXRlVW5pdHMSTwoKbGlua190YWJsZRgJIAMoCzIwLm9wZW50ZWxlbWV0cnkucHJvdG8ucHJvZm'
    'lsZXMudjFkZXZlbG9wbWVudC5MaW5rUglsaW5rVGFibGUSIQoMc3RyaW5nX3RhYmxlGAogAygJ'
    'UgtzdHJpbmdUYWJsZRIdCgp0aW1lX25hbm9zGAsgASgDUgl0aW1lTmFub3MSJQoOZHVyYXRpb2'
    '5fbmFub3MYDCABKANSDWR1cmF0aW9uTmFub3MSVgoLcGVyaW9kX3R5cGUYDSABKAsyNS5vcGVu'
    'dGVsZW1ldHJ5LnByb3RvLnByb2ZpbGVzLnYxZGV2ZWxvcG1lbnQuVmFsdWVUeXBlUgpwZXJpb2'
    'RUeXBlEhYKBnBlcmlvZBgOIAEoA1IGcGVyaW9kEi0KEmNvbW1lbnRfc3RyaW5kaWNlcxgPIAMo'
    'BVIRY29tbWVudFN0cmluZGljZXMSOQoZZGVmYXVsdF9zYW1wbGVfdHlwZV9pbmRleBgQIAEoBV'
    'IWZGVmYXVsdFNhbXBsZVR5cGVJbmRleBIdCgpwcm9maWxlX2lkGBEgASgMUglwcm9maWxlSWQS'
    'OAoYZHJvcHBlZF9hdHRyaWJ1dGVzX2NvdW50GBMgASgNUhZkcm9wcGVkQXR0cmlidXRlc0NvdW'
    '50EjYKF29yaWdpbmFsX3BheWxvYWRfZm9ybWF0GBQgASgJUhVvcmlnaW5hbFBheWxvYWRGb3Jt'
    'YXQSKQoQb3JpZ2luYWxfcGF5bG9hZBgVIAEoDFIPb3JpZ2luYWxQYXlsb2FkEisKEWF0dHJpYn'
    'V0ZV9pbmRpY2VzGBYgAygFUhBhdHRyaWJ1dGVJbmRpY2Vz');

@$core.Deprecated('Use attributeUnitDescriptor instead')
const AttributeUnit$json = {
  '1': 'AttributeUnit',
  '2': [
    {'1': 'attribute_key_strindex', '3': 1, '4': 1, '5': 5, '10': 'attributeKeyStrindex'},
    {'1': 'unit_strindex', '3': 2, '4': 1, '5': 5, '10': 'unitStrindex'},
  ],
};

/// Descriptor for `AttributeUnit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeUnitDescriptor = $convert.base64Decode(
    'Cg1BdHRyaWJ1dGVVbml0EjQKFmF0dHJpYnV0ZV9rZXlfc3RyaW5kZXgYASABKAVSFGF0dHJpYn'
    'V0ZUtleVN0cmluZGV4EiMKDXVuaXRfc3RyaW5kZXgYAiABKAVSDHVuaXRTdHJpbmRleA==');

@$core.Deprecated('Use linkDescriptor instead')
const Link$json = {
  '1': 'Link',
  '2': [
    {'1': 'trace_id', '3': 1, '4': 1, '5': 12, '10': 'traceId'},
    {'1': 'span_id', '3': 2, '4': 1, '5': 12, '10': 'spanId'},
  ],
};

/// Descriptor for `Link`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkDescriptor = $convert.base64Decode(
    'CgRMaW5rEhkKCHRyYWNlX2lkGAEgASgMUgd0cmFjZUlkEhcKB3NwYW5faWQYAiABKAxSBnNwYW'
    '5JZA==');

@$core.Deprecated('Use valueTypeDescriptor instead')
const ValueType$json = {
  '1': 'ValueType',
  '2': [
    {'1': 'type_strindex', '3': 1, '4': 1, '5': 5, '10': 'typeStrindex'},
    {'1': 'unit_strindex', '3': 2, '4': 1, '5': 5, '10': 'unitStrindex'},
    {'1': 'aggregation_temporality', '3': 3, '4': 1, '5': 14, '6': '.opentelemetry.proto.profiles.v1development.AggregationTemporality', '10': 'aggregationTemporality'},
  ],
};

/// Descriptor for `ValueType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueTypeDescriptor = $convert.base64Decode(
    'CglWYWx1ZVR5cGUSIwoNdHlwZV9zdHJpbmRleBgBIAEoBVIMdHlwZVN0cmluZGV4EiMKDXVuaX'
    'Rfc3RyaW5kZXgYAiABKAVSDHVuaXRTdHJpbmRleBJ7ChdhZ2dyZWdhdGlvbl90ZW1wb3JhbGl0'
    'eRgDIAEoDjJCLm9wZW50ZWxlbWV0cnkucHJvdG8ucHJvZmlsZXMudjFkZXZlbG9wbWVudC5BZ2'
    'dyZWdhdGlvblRlbXBvcmFsaXR5UhZhZ2dyZWdhdGlvblRlbXBvcmFsaXR5');

@$core.Deprecated('Use sampleDescriptor instead')
const Sample$json = {
  '1': 'Sample',
  '2': [
    {'1': 'locations_start_index', '3': 1, '4': 1, '5': 5, '10': 'locationsStartIndex'},
    {'1': 'locations_length', '3': 2, '4': 1, '5': 5, '10': 'locationsLength'},
    {'1': 'value', '3': 3, '4': 3, '5': 3, '10': 'value'},
    {'1': 'attribute_indices', '3': 4, '4': 3, '5': 5, '10': 'attributeIndices'},
    {'1': 'link_index', '3': 5, '4': 1, '5': 5, '9': 0, '10': 'linkIndex', '17': true},
    {'1': 'timestamps_unix_nano', '3': 6, '4': 3, '5': 4, '10': 'timestampsUnixNano'},
  ],
  '8': [
    {'1': '_link_index'},
  ],
};

/// Descriptor for `Sample`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sampleDescriptor = $convert.base64Decode(
    'CgZTYW1wbGUSMgoVbG9jYXRpb25zX3N0YXJ0X2luZGV4GAEgASgFUhNsb2NhdGlvbnNTdGFydE'
    'luZGV4EikKEGxvY2F0aW9uc19sZW5ndGgYAiABKAVSD2xvY2F0aW9uc0xlbmd0aBIUCgV2YWx1'
    'ZRgDIAMoA1IFdmFsdWUSKwoRYXR0cmlidXRlX2luZGljZXMYBCADKAVSEGF0dHJpYnV0ZUluZG'
    'ljZXMSIgoKbGlua19pbmRleBgFIAEoBUgAUglsaW5rSW5kZXiIAQESMAoUdGltZXN0YW1wc191'
    'bml4X25hbm8YBiADKARSEnRpbWVzdGFtcHNVbml4TmFub0INCgtfbGlua19pbmRleA==');

@$core.Deprecated('Use mappingDescriptor instead')
const Mapping$json = {
  '1': 'Mapping',
  '2': [
    {'1': 'memory_start', '3': 1, '4': 1, '5': 4, '10': 'memoryStart'},
    {'1': 'memory_limit', '3': 2, '4': 1, '5': 4, '10': 'memoryLimit'},
    {'1': 'file_offset', '3': 3, '4': 1, '5': 4, '10': 'fileOffset'},
    {'1': 'filename_strindex', '3': 4, '4': 1, '5': 5, '10': 'filenameStrindex'},
    {'1': 'attribute_indices', '3': 5, '4': 3, '5': 5, '10': 'attributeIndices'},
    {'1': 'has_functions', '3': 6, '4': 1, '5': 8, '10': 'hasFunctions'},
    {'1': 'has_filenames', '3': 7, '4': 1, '5': 8, '10': 'hasFilenames'},
    {'1': 'has_line_numbers', '3': 8, '4': 1, '5': 8, '10': 'hasLineNumbers'},
    {'1': 'has_inline_frames', '3': 9, '4': 1, '5': 8, '10': 'hasInlineFrames'},
  ],
};

/// Descriptor for `Mapping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mappingDescriptor = $convert.base64Decode(
    'CgdNYXBwaW5nEiEKDG1lbW9yeV9zdGFydBgBIAEoBFILbWVtb3J5U3RhcnQSIQoMbWVtb3J5X2'
    'xpbWl0GAIgASgEUgttZW1vcnlMaW1pdBIfCgtmaWxlX29mZnNldBgDIAEoBFIKZmlsZU9mZnNl'
    'dBIrChFmaWxlbmFtZV9zdHJpbmRleBgEIAEoBVIQZmlsZW5hbWVTdHJpbmRleBIrChFhdHRyaW'
    'J1dGVfaW5kaWNlcxgFIAMoBVIQYXR0cmlidXRlSW5kaWNlcxIjCg1oYXNfZnVuY3Rpb25zGAYg'
    'ASgIUgxoYXNGdW5jdGlvbnMSIwoNaGFzX2ZpbGVuYW1lcxgHIAEoCFIMaGFzRmlsZW5hbWVzEi'
    'gKEGhhc19saW5lX251bWJlcnMYCCABKAhSDmhhc0xpbmVOdW1iZXJzEioKEWhhc19pbmxpbmVf'
    'ZnJhbWVzGAkgASgIUg9oYXNJbmxpbmVGcmFtZXM=');

@$core.Deprecated('Use locationDescriptor instead')
const Location$json = {
  '1': 'Location',
  '2': [
    {'1': 'mapping_index', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'mappingIndex', '17': true},
    {'1': 'address', '3': 2, '4': 1, '5': 4, '10': 'address'},
    {'1': 'line', '3': 3, '4': 3, '5': 11, '6': '.opentelemetry.proto.profiles.v1development.Line', '10': 'line'},
    {'1': 'is_folded', '3': 4, '4': 1, '5': 8, '10': 'isFolded'},
    {'1': 'attribute_indices', '3': 5, '4': 3, '5': 5, '10': 'attributeIndices'},
  ],
  '8': [
    {'1': '_mapping_index'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode(
    'CghMb2NhdGlvbhIoCg1tYXBwaW5nX2luZGV4GAEgASgFSABSDG1hcHBpbmdJbmRleIgBARIYCg'
    'dhZGRyZXNzGAIgASgEUgdhZGRyZXNzEkQKBGxpbmUYAyADKAsyMC5vcGVudGVsZW1ldHJ5LnBy'
    'b3RvLnByb2ZpbGVzLnYxZGV2ZWxvcG1lbnQuTGluZVIEbGluZRIbCglpc19mb2xkZWQYBCABKA'
    'hSCGlzRm9sZGVkEisKEWF0dHJpYnV0ZV9pbmRpY2VzGAUgAygFUhBhdHRyaWJ1dGVJbmRpY2Vz'
    'QhAKDl9tYXBwaW5nX2luZGV4');

@$core.Deprecated('Use lineDescriptor instead')
const Line$json = {
  '1': 'Line',
  '2': [
    {'1': 'function_index', '3': 1, '4': 1, '5': 5, '10': 'functionIndex'},
    {'1': 'line', '3': 2, '4': 1, '5': 3, '10': 'line'},
    {'1': 'column', '3': 3, '4': 1, '5': 3, '10': 'column'},
  ],
};

/// Descriptor for `Line`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lineDescriptor = $convert.base64Decode(
    'CgRMaW5lEiUKDmZ1bmN0aW9uX2luZGV4GAEgASgFUg1mdW5jdGlvbkluZGV4EhIKBGxpbmUYAi'
    'ABKANSBGxpbmUSFgoGY29sdW1uGAMgASgDUgZjb2x1bW4=');

@$core.Deprecated('Use function_Descriptor instead')
const Function_$json = {
  '1': 'Function',
  '2': [
    {'1': 'name_strindex', '3': 1, '4': 1, '5': 5, '10': 'nameStrindex'},
    {'1': 'system_name_strindex', '3': 2, '4': 1, '5': 5, '10': 'systemNameStrindex'},
    {'1': 'filename_strindex', '3': 3, '4': 1, '5': 5, '10': 'filenameStrindex'},
    {'1': 'start_line', '3': 4, '4': 1, '5': 3, '10': 'startLine'},
  ],
};

/// Descriptor for `Function`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List function_Descriptor = $convert.base64Decode(
    'CghGdW5jdGlvbhIjCg1uYW1lX3N0cmluZGV4GAEgASgFUgxuYW1lU3RyaW5kZXgSMAoUc3lzdG'
    'VtX25hbWVfc3RyaW5kZXgYAiABKAVSEnN5c3RlbU5hbWVTdHJpbmRleBIrChFmaWxlbmFtZV9z'
    'dHJpbmRleBgDIAEoBVIQZmlsZW5hbWVTdHJpbmRleBIdCgpzdGFydF9saW5lGAQgASgDUglzdG'
    'FydExpbmU=');

