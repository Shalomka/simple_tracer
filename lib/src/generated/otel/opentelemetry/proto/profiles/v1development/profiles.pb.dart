//
//  Generated code. Do not modify.
//  source: opentelemetry/proto/profiles/v1development/profiles.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../common/v1/common.pb.dart' as $4;
import '../../resource/v1/resource.pb.dart' as $5;
import 'profiles.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'profiles.pbenum.dart';

///  ProfilesData represents the profiles data that can be stored in persistent storage,
///  OR can be embedded by other protocols that transfer OTLP profiles data but do not
///  implement the OTLP protocol.
///
///  The main difference between this message and collector protocol is that
///  in this message there will not be any "control" or "metadata" specific to
///  OTLP protocol.
///
///  When new fields are added into this message, the OTLP request MUST be updated
///  as well.
class ProfilesData extends $pb.GeneratedMessage {
  factory ProfilesData({
    $core.Iterable<ResourceProfiles>? resourceProfiles,
  }) {
    final $result = create();
    if (resourceProfiles != null) {
      $result.resourceProfiles.addAll(resourceProfiles);
    }
    return $result;
  }
  ProfilesData._() : super();
  factory ProfilesData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProfilesData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProfilesData', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..pc<ResourceProfiles>(1, _omitFieldNames ? '' : 'resourceProfiles', $pb.PbFieldType.PM, subBuilder: ResourceProfiles.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProfilesData clone() => ProfilesData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProfilesData copyWith(void Function(ProfilesData) updates) => super.copyWith((message) => updates(message as ProfilesData)) as ProfilesData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProfilesData create() => ProfilesData._();
  ProfilesData createEmptyInstance() => create();
  static $pb.PbList<ProfilesData> createRepeated() => $pb.PbList<ProfilesData>();
  @$core.pragma('dart2js:noInline')
  static ProfilesData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProfilesData>(create);
  static ProfilesData? _defaultInstance;

  /// An array of ResourceProfiles.
  /// For data coming from a single resource this array will typically contain
  /// one element. Intermediary nodes that receive data from multiple origins
  /// typically batch the data before forwarding further and in that case this
  /// array will contain multiple elements.
  @$pb.TagNumber(1)
  $pb.PbList<ResourceProfiles> get resourceProfiles => $_getList(0);
}

/// A collection of ScopeProfiles from a Resource.
class ResourceProfiles extends $pb.GeneratedMessage {
  factory ResourceProfiles({
    $5.Resource? resource,
    $core.Iterable<ScopeProfiles>? scopeProfiles,
    $core.String? schemaUrl,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    if (scopeProfiles != null) {
      $result.scopeProfiles.addAll(scopeProfiles);
    }
    if (schemaUrl != null) {
      $result.schemaUrl = schemaUrl;
    }
    return $result;
  }
  ResourceProfiles._() : super();
  factory ResourceProfiles.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceProfiles.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceProfiles', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..aOM<$5.Resource>(1, _omitFieldNames ? '' : 'resource', subBuilder: $5.Resource.create)
    ..pc<ScopeProfiles>(2, _omitFieldNames ? '' : 'scopeProfiles', $pb.PbFieldType.PM, subBuilder: ScopeProfiles.create)
    ..aOS(3, _omitFieldNames ? '' : 'schemaUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceProfiles clone() => ResourceProfiles()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceProfiles copyWith(void Function(ResourceProfiles) updates) => super.copyWith((message) => updates(message as ResourceProfiles)) as ResourceProfiles;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceProfiles create() => ResourceProfiles._();
  ResourceProfiles createEmptyInstance() => create();
  static $pb.PbList<ResourceProfiles> createRepeated() => $pb.PbList<ResourceProfiles>();
  @$core.pragma('dart2js:noInline')
  static ResourceProfiles getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceProfiles>(create);
  static ResourceProfiles? _defaultInstance;

  /// The resource for the profiles in this message.
  /// If this field is not set then no resource info is known.
  @$pb.TagNumber(1)
  $5.Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource($5.Resource v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.Resource ensureResource() => $_ensure(0);

  /// A list of ScopeProfiles that originate from a resource.
  @$pb.TagNumber(2)
  $pb.PbList<ScopeProfiles> get scopeProfiles => $_getList(1);

  /// The Schema URL, if known. This is the identifier of the Schema that the resource data
  /// is recorded in. Notably, the last part of the URL path is the version number of the
  /// schema: http[s]://server[:port]/path/<version>. To learn more about Schema URL see
  /// https://opentelemetry.io/docs/specs/otel/schemas/#schema-url
  /// This schema_url applies to the data in the "resource" field. It does not apply
  /// to the data in the "scope_profiles" field which have their own schema_url field.
  @$pb.TagNumber(3)
  $core.String get schemaUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set schemaUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaUrl() => $_clearField(3);
}

/// A collection of Profiles produced by an InstrumentationScope.
class ScopeProfiles extends $pb.GeneratedMessage {
  factory ScopeProfiles({
    $4.InstrumentationScope? scope,
    $core.Iterable<Profile>? profiles,
    $core.String? schemaUrl,
  }) {
    final $result = create();
    if (scope != null) {
      $result.scope = scope;
    }
    if (profiles != null) {
      $result.profiles.addAll(profiles);
    }
    if (schemaUrl != null) {
      $result.schemaUrl = schemaUrl;
    }
    return $result;
  }
  ScopeProfiles._() : super();
  factory ScopeProfiles.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScopeProfiles.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScopeProfiles', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..aOM<$4.InstrumentationScope>(1, _omitFieldNames ? '' : 'scope', subBuilder: $4.InstrumentationScope.create)
    ..pc<Profile>(2, _omitFieldNames ? '' : 'profiles', $pb.PbFieldType.PM, subBuilder: Profile.create)
    ..aOS(3, _omitFieldNames ? '' : 'schemaUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScopeProfiles clone() => ScopeProfiles()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScopeProfiles copyWith(void Function(ScopeProfiles) updates) => super.copyWith((message) => updates(message as ScopeProfiles)) as ScopeProfiles;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScopeProfiles create() => ScopeProfiles._();
  ScopeProfiles createEmptyInstance() => create();
  static $pb.PbList<ScopeProfiles> createRepeated() => $pb.PbList<ScopeProfiles>();
  @$core.pragma('dart2js:noInline')
  static ScopeProfiles getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScopeProfiles>(create);
  static ScopeProfiles? _defaultInstance;

  /// The instrumentation scope information for the profiles in this message.
  /// Semantically when InstrumentationScope isn't set, it is equivalent with
  /// an empty instrumentation scope name (unknown).
  @$pb.TagNumber(1)
  $4.InstrumentationScope get scope => $_getN(0);
  @$pb.TagNumber(1)
  set scope($4.InstrumentationScope v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.InstrumentationScope ensureScope() => $_ensure(0);

  /// A list of Profiles that originate from an instrumentation scope.
  @$pb.TagNumber(2)
  $pb.PbList<Profile> get profiles => $_getList(1);

  /// The Schema URL, if known. This is the identifier of the Schema that the profile data
  /// is recorded in. Notably, the last part of the URL path is the version number of the
  /// schema: http[s]://server[:port]/path/<version>. To learn more about Schema URL see
  /// https://opentelemetry.io/docs/specs/otel/schemas/#schema-url
  /// This schema_url applies to all profiles in the "profiles" field.
  @$pb.TagNumber(3)
  $core.String get schemaUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set schemaUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaUrl() => $_clearField(3);
}

///  Represents a complete profile, including sample types, samples,
///  mappings to binaries, locations, functions, string table, and additional metadata.
///  It modifies and annotates pprof Profile with OpenTelemetry specific fields.
///
///  Note that whilst fields in this message retain the name and field id from pprof in most cases
///  for ease of understanding data migration, it is not intended that pprof:Profile and
///  OpenTelemetry:Profile encoding be wire compatible.
class Profile extends $pb.GeneratedMessage {
  factory Profile({
    $core.Iterable<ValueType>? sampleType,
    $core.Iterable<Sample>? sample,
    $core.Iterable<Mapping>? mappingTable,
    $core.Iterable<Location>? locationTable,
    $core.Iterable<$core.int>? locationIndices,
    $core.Iterable<Function_>? functionTable,
    $core.Iterable<$4.KeyValue>? attributeTable,
    $core.Iterable<AttributeUnit>? attributeUnits,
    $core.Iterable<Link>? linkTable,
    $core.Iterable<$core.String>? stringTable,
    $fixnum.Int64? timeNanos,
    $fixnum.Int64? durationNanos,
    ValueType? periodType,
    $fixnum.Int64? period,
    $core.Iterable<$core.int>? commentStrindices,
    $core.int? defaultSampleTypeIndex,
    $core.List<$core.int>? profileId,
    $core.int? droppedAttributesCount,
    $core.String? originalPayloadFormat,
    $core.List<$core.int>? originalPayload,
    $core.Iterable<$core.int>? attributeIndices,
  }) {
    final $result = create();
    if (sampleType != null) {
      $result.sampleType.addAll(sampleType);
    }
    if (sample != null) {
      $result.sample.addAll(sample);
    }
    if (mappingTable != null) {
      $result.mappingTable.addAll(mappingTable);
    }
    if (locationTable != null) {
      $result.locationTable.addAll(locationTable);
    }
    if (locationIndices != null) {
      $result.locationIndices.addAll(locationIndices);
    }
    if (functionTable != null) {
      $result.functionTable.addAll(functionTable);
    }
    if (attributeTable != null) {
      $result.attributeTable.addAll(attributeTable);
    }
    if (attributeUnits != null) {
      $result.attributeUnits.addAll(attributeUnits);
    }
    if (linkTable != null) {
      $result.linkTable.addAll(linkTable);
    }
    if (stringTable != null) {
      $result.stringTable.addAll(stringTable);
    }
    if (timeNanos != null) {
      $result.timeNanos = timeNanos;
    }
    if (durationNanos != null) {
      $result.durationNanos = durationNanos;
    }
    if (periodType != null) {
      $result.periodType = periodType;
    }
    if (period != null) {
      $result.period = period;
    }
    if (commentStrindices != null) {
      $result.commentStrindices.addAll(commentStrindices);
    }
    if (defaultSampleTypeIndex != null) {
      $result.defaultSampleTypeIndex = defaultSampleTypeIndex;
    }
    if (profileId != null) {
      $result.profileId = profileId;
    }
    if (droppedAttributesCount != null) {
      $result.droppedAttributesCount = droppedAttributesCount;
    }
    if (originalPayloadFormat != null) {
      $result.originalPayloadFormat = originalPayloadFormat;
    }
    if (originalPayload != null) {
      $result.originalPayload = originalPayload;
    }
    if (attributeIndices != null) {
      $result.attributeIndices.addAll(attributeIndices);
    }
    return $result;
  }
  Profile._() : super();
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Profile', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..pc<ValueType>(1, _omitFieldNames ? '' : 'sampleType', $pb.PbFieldType.PM, subBuilder: ValueType.create)
    ..pc<Sample>(2, _omitFieldNames ? '' : 'sample', $pb.PbFieldType.PM, subBuilder: Sample.create)
    ..pc<Mapping>(3, _omitFieldNames ? '' : 'mappingTable', $pb.PbFieldType.PM, subBuilder: Mapping.create)
    ..pc<Location>(4, _omitFieldNames ? '' : 'locationTable', $pb.PbFieldType.PM, subBuilder: Location.create)
    ..p<$core.int>(5, _omitFieldNames ? '' : 'locationIndices', $pb.PbFieldType.K3)
    ..pc<Function_>(6, _omitFieldNames ? '' : 'functionTable', $pb.PbFieldType.PM, subBuilder: Function_.create)
    ..pc<$4.KeyValue>(7, _omitFieldNames ? '' : 'attributeTable', $pb.PbFieldType.PM, subBuilder: $4.KeyValue.create)
    ..pc<AttributeUnit>(8, _omitFieldNames ? '' : 'attributeUnits', $pb.PbFieldType.PM, subBuilder: AttributeUnit.create)
    ..pc<Link>(9, _omitFieldNames ? '' : 'linkTable', $pb.PbFieldType.PM, subBuilder: Link.create)
    ..pPS(10, _omitFieldNames ? '' : 'stringTable')
    ..aInt64(11, _omitFieldNames ? '' : 'timeNanos')
    ..aInt64(12, _omitFieldNames ? '' : 'durationNanos')
    ..aOM<ValueType>(13, _omitFieldNames ? '' : 'periodType', subBuilder: ValueType.create)
    ..aInt64(14, _omitFieldNames ? '' : 'period')
    ..p<$core.int>(15, _omitFieldNames ? '' : 'commentStrindices', $pb.PbFieldType.K3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'defaultSampleTypeIndex', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(17, _omitFieldNames ? '' : 'profileId', $pb.PbFieldType.OY)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'droppedAttributesCount', $pb.PbFieldType.OU3)
    ..aOS(20, _omitFieldNames ? '' : 'originalPayloadFormat')
    ..a<$core.List<$core.int>>(21, _omitFieldNames ? '' : 'originalPayload', $pb.PbFieldType.OY)
    ..p<$core.int>(22, _omitFieldNames ? '' : 'attributeIndices', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Profile clone() => Profile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile)) as Profile;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  /// A description of the samples associated with each Sample.value.
  /// For a cpu profile this might be:
  ///   [["cpu","nanoseconds"]] or [["wall","seconds"]] or [["syscall","count"]]
  /// For a heap profile, this might be:
  ///   [["allocations","count"], ["space","bytes"]],
  /// If one of the values represents the number of events represented
  /// by the sample, by convention it should be at index 0 and use
  /// sample_type.unit == "count".
  @$pb.TagNumber(1)
  $pb.PbList<ValueType> get sampleType => $_getList(0);

  /// The set of samples recorded in this profile.
  @$pb.TagNumber(2)
  $pb.PbList<Sample> get sample => $_getList(1);

  /// Mapping from address ranges to the image/binary/library mapped
  /// into that address range.  mapping[0] will be the main binary.
  /// If multiple binaries contribute to the Profile and no main
  /// binary can be identified, mapping[0] has no special meaning.
  @$pb.TagNumber(3)
  $pb.PbList<Mapping> get mappingTable => $_getList(2);

  /// Locations referenced by samples via location_indices.
  @$pb.TagNumber(4)
  $pb.PbList<Location> get locationTable => $_getList(3);

  /// Array of locations referenced by samples.
  @$pb.TagNumber(5)
  $pb.PbList<$core.int> get locationIndices => $_getList(4);

  /// Functions referenced by locations.
  @$pb.TagNumber(6)
  $pb.PbList<Function_> get functionTable => $_getList(5);

  /// Lookup table for attributes.
  @$pb.TagNumber(7)
  $pb.PbList<$4.KeyValue> get attributeTable => $_getList(6);

  /// Represents a mapping between Attribute Keys and Units.
  @$pb.TagNumber(8)
  $pb.PbList<AttributeUnit> get attributeUnits => $_getList(7);

  /// Lookup table for links.
  @$pb.TagNumber(9)
  $pb.PbList<Link> get linkTable => $_getList(8);

  /// A common table for strings referenced by various messages.
  /// string_table[0] must always be "".
  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get stringTable => $_getList(9);

  /// Time of collection (UTC) represented as nanoseconds past the epoch.
  @$pb.TagNumber(11)
  $fixnum.Int64 get timeNanos => $_getI64(10);
  @$pb.TagNumber(11)
  set timeNanos($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTimeNanos() => $_has(10);
  @$pb.TagNumber(11)
  void clearTimeNanos() => $_clearField(11);

  /// Duration of the profile, if a duration makes sense.
  @$pb.TagNumber(12)
  $fixnum.Int64 get durationNanos => $_getI64(11);
  @$pb.TagNumber(12)
  set durationNanos($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDurationNanos() => $_has(11);
  @$pb.TagNumber(12)
  void clearDurationNanos() => $_clearField(12);

  /// The kind of events between sampled occurrences.
  /// e.g [ "cpu","cycles" ] or [ "heap","bytes" ]
  @$pb.TagNumber(13)
  ValueType get periodType => $_getN(12);
  @$pb.TagNumber(13)
  set periodType(ValueType v) { $_setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasPeriodType() => $_has(12);
  @$pb.TagNumber(13)
  void clearPeriodType() => $_clearField(13);
  @$pb.TagNumber(13)
  ValueType ensurePeriodType() => $_ensure(12);

  /// The number of events between sampled occurrences.
  @$pb.TagNumber(14)
  $fixnum.Int64 get period => $_getI64(13);
  @$pb.TagNumber(14)
  set period($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPeriod() => $_has(13);
  @$pb.TagNumber(14)
  void clearPeriod() => $_clearField(14);

  /// Free-form text associated with the profile. The text is displayed as is
  /// to the user by the tools that read profiles (e.g. by pprof). This field
  /// should not be used to store any machine-readable information, it is only
  /// for human-friendly content. The profile must stay functional if this field
  /// is cleaned.
  @$pb.TagNumber(15)
  $pb.PbList<$core.int> get commentStrindices => $_getList(14);

  /// Index into the sample_type array to the default sample type.
  @$pb.TagNumber(16)
  $core.int get defaultSampleTypeIndex => $_getIZ(15);
  @$pb.TagNumber(16)
  set defaultSampleTypeIndex($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasDefaultSampleTypeIndex() => $_has(15);
  @$pb.TagNumber(16)
  void clearDefaultSampleTypeIndex() => $_clearField(16);

  ///  A globally unique identifier for a profile. The ID is a 16-byte array. An ID with
  ///  all zeroes is considered invalid.
  ///
  ///  This field is required.
  @$pb.TagNumber(17)
  $core.List<$core.int> get profileId => $_getN(16);
  @$pb.TagNumber(17)
  set profileId($core.List<$core.int> v) { $_setBytes(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasProfileId() => $_has(16);
  @$pb.TagNumber(17)
  void clearProfileId() => $_clearField(17);

  /// dropped_attributes_count is the number of attributes that were discarded. Attributes
  /// can be discarded because their keys are too long or because there are too many
  /// attributes. If this value is 0, then no attributes were dropped.
  @$pb.TagNumber(19)
  $core.int get droppedAttributesCount => $_getIZ(17);
  @$pb.TagNumber(19)
  set droppedAttributesCount($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(19)
  $core.bool hasDroppedAttributesCount() => $_has(17);
  @$pb.TagNumber(19)
  void clearDroppedAttributesCount() => $_clearField(19);

  /// Specifies format of the original payload. Common values are defined in semantic conventions. [required if original_payload is present]
  @$pb.TagNumber(20)
  $core.String get originalPayloadFormat => $_getSZ(18);
  @$pb.TagNumber(20)
  set originalPayloadFormat($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(20)
  $core.bool hasOriginalPayloadFormat() => $_has(18);
  @$pb.TagNumber(20)
  void clearOriginalPayloadFormat() => $_clearField(20);

  /// Original payload can be stored in this field. This can be useful for users who want to get the original payload.
  /// Formats such as JFR are highly extensible and can contain more information than what is defined in this spec.
  /// Inclusion of original payload should be configurable by the user. Default behavior should be to not include the original payload.
  /// If the original payload is in pprof format, it SHOULD not be included in this field.
  /// The field is optional, however if it is present then equivalent converted data should be populated in other fields
  /// of this message as far as is practicable.
  @$pb.TagNumber(21)
  $core.List<$core.int> get originalPayload => $_getN(19);
  @$pb.TagNumber(21)
  set originalPayload($core.List<$core.int> v) { $_setBytes(19, v); }
  @$pb.TagNumber(21)
  $core.bool hasOriginalPayload() => $_has(19);
  @$pb.TagNumber(21)
  void clearOriginalPayload() => $_clearField(21);

  ///  References to attributes in attribute_table. [optional]
  ///  It is a collection of key/value pairs. Note, global attributes
  ///  like server name can be set using the resource API. Examples of attributes:
  ///
  ///      "/http/user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36"
  ///      "/http/server_latency": 300
  ///      "abc.com/myattribute": true
  ///      "abc.com/score": 10.239
  ///
  ///  The OpenTelemetry API specification further restricts the allowed value types:
  ///  https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/common/README.md#attribute
  ///  Attribute keys MUST be unique (it is not allowed to have more than one
  ///  attribute with the same key).
  @$pb.TagNumber(22)
  $pb.PbList<$core.int> get attributeIndices => $_getList(20);
}

/// Represents a mapping between Attribute Keys and Units.
class AttributeUnit extends $pb.GeneratedMessage {
  factory AttributeUnit({
    $core.int? attributeKeyStrindex,
    $core.int? unitStrindex,
  }) {
    final $result = create();
    if (attributeKeyStrindex != null) {
      $result.attributeKeyStrindex = attributeKeyStrindex;
    }
    if (unitStrindex != null) {
      $result.unitStrindex = unitStrindex;
    }
    return $result;
  }
  AttributeUnit._() : super();
  factory AttributeUnit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttributeUnit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttributeUnit', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'attributeKeyStrindex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'unitStrindex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttributeUnit clone() => AttributeUnit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttributeUnit copyWith(void Function(AttributeUnit) updates) => super.copyWith((message) => updates(message as AttributeUnit)) as AttributeUnit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttributeUnit create() => AttributeUnit._();
  AttributeUnit createEmptyInstance() => create();
  static $pb.PbList<AttributeUnit> createRepeated() => $pb.PbList<AttributeUnit>();
  @$core.pragma('dart2js:noInline')
  static AttributeUnit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttributeUnit>(create);
  static AttributeUnit? _defaultInstance;

  /// Index into string table.
  @$pb.TagNumber(1)
  $core.int get attributeKeyStrindex => $_getIZ(0);
  @$pb.TagNumber(1)
  set attributeKeyStrindex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttributeKeyStrindex() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttributeKeyStrindex() => $_clearField(1);

  /// Index into string table.
  @$pb.TagNumber(2)
  $core.int get unitStrindex => $_getIZ(1);
  @$pb.TagNumber(2)
  set unitStrindex($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnitStrindex() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnitStrindex() => $_clearField(2);
}

/// A pointer from a profile Sample to a trace Span.
/// Connects a profile sample to a trace span, identified by unique trace and span IDs.
class Link extends $pb.GeneratedMessage {
  factory Link({
    $core.List<$core.int>? traceId,
    $core.List<$core.int>? spanId,
  }) {
    final $result = create();
    if (traceId != null) {
      $result.traceId = traceId;
    }
    if (spanId != null) {
      $result.spanId = spanId;
    }
    return $result;
  }
  Link._() : super();
  factory Link.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Link.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Link', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'traceId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'spanId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Link clone() => Link()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Link copyWith(void Function(Link) updates) => super.copyWith((message) => updates(message as Link)) as Link;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Link create() => Link._();
  Link createEmptyInstance() => create();
  static $pb.PbList<Link> createRepeated() => $pb.PbList<Link>();
  @$core.pragma('dart2js:noInline')
  static Link getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Link>(create);
  static Link? _defaultInstance;

  /// A unique identifier of a trace that this linked span is part of. The ID is a
  /// 16-byte array.
  @$pb.TagNumber(1)
  $core.List<$core.int> get traceId => $_getN(0);
  @$pb.TagNumber(1)
  set traceId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTraceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTraceId() => $_clearField(1);

  /// A unique identifier for the linked span. The ID is an 8-byte array.
  @$pb.TagNumber(2)
  $core.List<$core.int> get spanId => $_getN(1);
  @$pb.TagNumber(2)
  set spanId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpanId() => $_clearField(2);
}

/// ValueType describes the type and units of a value, with an optional aggregation temporality.
class ValueType extends $pb.GeneratedMessage {
  factory ValueType({
    $core.int? typeStrindex,
    $core.int? unitStrindex,
    AggregationTemporality? aggregationTemporality,
  }) {
    final $result = create();
    if (typeStrindex != null) {
      $result.typeStrindex = typeStrindex;
    }
    if (unitStrindex != null) {
      $result.unitStrindex = unitStrindex;
    }
    if (aggregationTemporality != null) {
      $result.aggregationTemporality = aggregationTemporality;
    }
    return $result;
  }
  ValueType._() : super();
  factory ValueType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValueType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValueType', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'typeStrindex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'unitStrindex', $pb.PbFieldType.O3)
    ..e<AggregationTemporality>(3, _omitFieldNames ? '' : 'aggregationTemporality', $pb.PbFieldType.OE, defaultOrMaker: AggregationTemporality.AGGREGATION_TEMPORALITY_UNSPECIFIED, valueOf: AggregationTemporality.valueOf, enumValues: AggregationTemporality.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValueType clone() => ValueType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValueType copyWith(void Function(ValueType) updates) => super.copyWith((message) => updates(message as ValueType)) as ValueType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValueType create() => ValueType._();
  ValueType createEmptyInstance() => create();
  static $pb.PbList<ValueType> createRepeated() => $pb.PbList<ValueType>();
  @$core.pragma('dart2js:noInline')
  static ValueType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValueType>(create);
  static ValueType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get typeStrindex => $_getIZ(0);
  @$pb.TagNumber(1)
  set typeStrindex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypeStrindex() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeStrindex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get unitStrindex => $_getIZ(1);
  @$pb.TagNumber(2)
  set unitStrindex($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnitStrindex() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnitStrindex() => $_clearField(2);

  @$pb.TagNumber(3)
  AggregationTemporality get aggregationTemporality => $_getN(2);
  @$pb.TagNumber(3)
  set aggregationTemporality(AggregationTemporality v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAggregationTemporality() => $_has(2);
  @$pb.TagNumber(3)
  void clearAggregationTemporality() => $_clearField(3);
}

/// Each Sample records values encountered in some program
/// context. The program context is typically a stack trace, perhaps
/// augmented with auxiliary information like the thread-id, some
/// indicator of a higher level request being handled etc.
class Sample extends $pb.GeneratedMessage {
  factory Sample({
    $core.int? locationsStartIndex,
    $core.int? locationsLength,
    $core.Iterable<$fixnum.Int64>? value,
    $core.Iterable<$core.int>? attributeIndices,
    $core.int? linkIndex,
    $core.Iterable<$fixnum.Int64>? timestampsUnixNano,
  }) {
    final $result = create();
    if (locationsStartIndex != null) {
      $result.locationsStartIndex = locationsStartIndex;
    }
    if (locationsLength != null) {
      $result.locationsLength = locationsLength;
    }
    if (value != null) {
      $result.value.addAll(value);
    }
    if (attributeIndices != null) {
      $result.attributeIndices.addAll(attributeIndices);
    }
    if (linkIndex != null) {
      $result.linkIndex = linkIndex;
    }
    if (timestampsUnixNano != null) {
      $result.timestampsUnixNano.addAll(timestampsUnixNano);
    }
    return $result;
  }
  Sample._() : super();
  factory Sample.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sample.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Sample', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'locationsStartIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'locationsLength', $pb.PbFieldType.O3)
    ..p<$fixnum.Int64>(3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.K6)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'attributeIndices', $pb.PbFieldType.K3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'timestampsUnixNano', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Sample clone() => Sample()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Sample copyWith(void Function(Sample) updates) => super.copyWith((message) => updates(message as Sample)) as Sample;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Sample create() => Sample._();
  Sample createEmptyInstance() => create();
  static $pb.PbList<Sample> createRepeated() => $pb.PbList<Sample>();
  @$core.pragma('dart2js:noInline')
  static Sample getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sample>(create);
  static Sample? _defaultInstance;

  /// locations_start_index along with locations_length refers to to a slice of locations in Profile.location_indices.
  @$pb.TagNumber(1)
  $core.int get locationsStartIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set locationsStartIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationsStartIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationsStartIndex() => $_clearField(1);

  /// locations_length along with locations_start_index refers to a slice of locations in Profile.location_indices.
  /// Supersedes location_index.
  @$pb.TagNumber(2)
  $core.int get locationsLength => $_getIZ(1);
  @$pb.TagNumber(2)
  set locationsLength($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocationsLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocationsLength() => $_clearField(2);

  /// The type and unit of each value is defined by the corresponding
  /// entry in Profile.sample_type. All samples must have the same
  /// number of values, the same as the length of Profile.sample_type.
  /// When aggregating multiple samples into a single sample, the
  /// result has a list of values that is the element-wise sum of the
  /// lists of the originals.
  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get value => $_getList(2);

  /// References to attributes in Profile.attribute_table. [optional]
  @$pb.TagNumber(4)
  $pb.PbList<$core.int> get attributeIndices => $_getList(3);

  /// Reference to link in Profile.link_table. [optional]
  @$pb.TagNumber(5)
  $core.int get linkIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set linkIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLinkIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearLinkIndex() => $_clearField(5);

  /// Timestamps associated with Sample represented in nanoseconds. These timestamps are expected
  /// to fall within the Profile's time range. [optional]
  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get timestampsUnixNano => $_getList(5);
}

/// Describes the mapping of a binary in memory, including its address range,
/// file offset, and metadata like build ID
class Mapping extends $pb.GeneratedMessage {
  factory Mapping({
    $fixnum.Int64? memoryStart,
    $fixnum.Int64? memoryLimit,
    $fixnum.Int64? fileOffset,
    $core.int? filenameStrindex,
    $core.Iterable<$core.int>? attributeIndices,
    $core.bool? hasFunctions,
    $core.bool? hasFilenames,
    $core.bool? hasLineNumbers,
    $core.bool? hasInlineFrames,
  }) {
    final $result = create();
    if (memoryStart != null) {
      $result.memoryStart = memoryStart;
    }
    if (memoryLimit != null) {
      $result.memoryLimit = memoryLimit;
    }
    if (fileOffset != null) {
      $result.fileOffset = fileOffset;
    }
    if (filenameStrindex != null) {
      $result.filenameStrindex = filenameStrindex;
    }
    if (attributeIndices != null) {
      $result.attributeIndices.addAll(attributeIndices);
    }
    if (hasFunctions != null) {
      $result.hasFunctions = hasFunctions;
    }
    if (hasFilenames != null) {
      $result.hasFilenames = hasFilenames;
    }
    if (hasLineNumbers != null) {
      $result.hasLineNumbers = hasLineNumbers;
    }
    if (hasInlineFrames != null) {
      $result.hasInlineFrames = hasInlineFrames;
    }
    return $result;
  }
  Mapping._() : super();
  factory Mapping.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mapping.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Mapping', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'memoryStart', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'memoryLimit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'fileOffset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'filenameStrindex', $pb.PbFieldType.O3)
    ..p<$core.int>(5, _omitFieldNames ? '' : 'attributeIndices', $pb.PbFieldType.K3)
    ..aOB(6, _omitFieldNames ? '' : 'hasFunctions')
    ..aOB(7, _omitFieldNames ? '' : 'hasFilenames')
    ..aOB(8, _omitFieldNames ? '' : 'hasLineNumbers')
    ..aOB(9, _omitFieldNames ? '' : 'hasInlineFrames')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Mapping clone() => Mapping()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Mapping copyWith(void Function(Mapping) updates) => super.copyWith((message) => updates(message as Mapping)) as Mapping;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mapping create() => Mapping._();
  Mapping createEmptyInstance() => create();
  static $pb.PbList<Mapping> createRepeated() => $pb.PbList<Mapping>();
  @$core.pragma('dart2js:noInline')
  static Mapping getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mapping>(create);
  static Mapping? _defaultInstance;

  /// Address at which the binary (or DLL) is loaded into memory.
  @$pb.TagNumber(1)
  $fixnum.Int64 get memoryStart => $_getI64(0);
  @$pb.TagNumber(1)
  set memoryStart($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemoryStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemoryStart() => $_clearField(1);

  /// The limit of the address range occupied by this mapping.
  @$pb.TagNumber(2)
  $fixnum.Int64 get memoryLimit => $_getI64(1);
  @$pb.TagNumber(2)
  set memoryLimit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemoryLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemoryLimit() => $_clearField(2);

  /// Offset in the binary that corresponds to the first mapped address.
  @$pb.TagNumber(3)
  $fixnum.Int64 get fileOffset => $_getI64(2);
  @$pb.TagNumber(3)
  set fileOffset($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileOffset() => $_clearField(3);

  /// The object this entry is loaded from.  This can be a filename on
  /// disk for the main binary and shared libraries, or virtual
  /// abstractions like "[vdso]".
  @$pb.TagNumber(4)
  $core.int get filenameStrindex => $_getIZ(3);
  @$pb.TagNumber(4)
  set filenameStrindex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFilenameStrindex() => $_has(3);
  @$pb.TagNumber(4)
  void clearFilenameStrindex() => $_clearField(4);

  /// References to attributes in Profile.attribute_table. [optional]
  @$pb.TagNumber(5)
  $pb.PbList<$core.int> get attributeIndices => $_getList(4);

  /// The following fields indicate the resolution of symbolic info.
  @$pb.TagNumber(6)
  $core.bool get hasFunctions => $_getBF(5);
  @$pb.TagNumber(6)
  set hasFunctions($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHasFunctions() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasFunctions() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get hasFilenames => $_getBF(6);
  @$pb.TagNumber(7)
  set hasFilenames($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHasFilenames() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasFilenames() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get hasLineNumbers => $_getBF(7);
  @$pb.TagNumber(8)
  set hasLineNumbers($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHasLineNumbers() => $_has(7);
  @$pb.TagNumber(8)
  void clearHasLineNumbers() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get hasInlineFrames => $_getBF(8);
  @$pb.TagNumber(9)
  set hasInlineFrames($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHasInlineFrames() => $_has(8);
  @$pb.TagNumber(9)
  void clearHasInlineFrames() => $_clearField(9);
}

/// Describes function and line table debug information.
class Location extends $pb.GeneratedMessage {
  factory Location({
    $core.int? mappingIndex,
    $fixnum.Int64? address,
    $core.Iterable<Line>? line,
    $core.bool? isFolded,
    $core.Iterable<$core.int>? attributeIndices,
  }) {
    final $result = create();
    if (mappingIndex != null) {
      $result.mappingIndex = mappingIndex;
    }
    if (address != null) {
      $result.address = address;
    }
    if (line != null) {
      $result.line.addAll(line);
    }
    if (isFolded != null) {
      $result.isFolded = isFolded;
    }
    if (attributeIndices != null) {
      $result.attributeIndices.addAll(attributeIndices);
    }
    return $result;
  }
  Location._() : super();
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Location', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'mappingIndex', $pb.PbFieldType.O3)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'address', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<Line>(3, _omitFieldNames ? '' : 'line', $pb.PbFieldType.PM, subBuilder: Line.create)
    ..aOB(4, _omitFieldNames ? '' : 'isFolded')
    ..p<$core.int>(5, _omitFieldNames ? '' : 'attributeIndices', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  /// Reference to mapping in Profile.mapping_table.
  /// It can be unset if the mapping is unknown or not applicable for
  /// this profile type.
  @$pb.TagNumber(1)
  $core.int get mappingIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set mappingIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMappingIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearMappingIndex() => $_clearField(1);

  /// The instruction address for this location, if available.  It
  /// should be within [Mapping.memory_start...Mapping.memory_limit]
  /// for the corresponding mapping. A non-leaf address may be in the
  /// middle of a call instruction. It is up to display tools to find
  /// the beginning of the instruction if necessary.
  @$pb.TagNumber(2)
  $fixnum.Int64 get address => $_getI64(1);
  @$pb.TagNumber(2)
  set address($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => $_clearField(2);

  ///  Multiple line indicates this location has inlined functions,
  ///  where the last entry represents the caller into which the
  ///  preceding entries were inlined.
  ///
  ///  E.g., if memcpy() is inlined into printf:
  ///     line[0].function_name == "memcpy"
  ///     line[1].function_name == "printf"
  @$pb.TagNumber(3)
  $pb.PbList<Line> get line => $_getList(2);

  /// Provides an indication that multiple symbols map to this location's
  /// address, for example due to identical code folding by the linker. In that
  /// case the line information above represents one of the multiple
  /// symbols. This field must be recomputed when the symbolization state of the
  /// profile changes.
  @$pb.TagNumber(4)
  $core.bool get isFolded => $_getBF(3);
  @$pb.TagNumber(4)
  set isFolded($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsFolded() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsFolded() => $_clearField(4);

  /// References to attributes in Profile.attribute_table. [optional]
  @$pb.TagNumber(5)
  $pb.PbList<$core.int> get attributeIndices => $_getList(4);
}

/// Details a specific line in a source code, linked to a function.
class Line extends $pb.GeneratedMessage {
  factory Line({
    $core.int? functionIndex,
    $fixnum.Int64? line,
    $fixnum.Int64? column,
  }) {
    final $result = create();
    if (functionIndex != null) {
      $result.functionIndex = functionIndex;
    }
    if (line != null) {
      $result.line = line;
    }
    if (column != null) {
      $result.column = column;
    }
    return $result;
  }
  Line._() : super();
  factory Line.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Line.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Line', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'functionIndex', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'line')
    ..aInt64(3, _omitFieldNames ? '' : 'column')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Line clone() => Line()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Line copyWith(void Function(Line) updates) => super.copyWith((message) => updates(message as Line)) as Line;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Line create() => Line._();
  Line createEmptyInstance() => create();
  static $pb.PbList<Line> createRepeated() => $pb.PbList<Line>();
  @$core.pragma('dart2js:noInline')
  static Line getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Line>(create);
  static Line? _defaultInstance;

  /// Reference to function in Profile.function_table.
  @$pb.TagNumber(1)
  $core.int get functionIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set functionIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFunctionIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunctionIndex() => $_clearField(1);

  /// Line number in source code. 0 means unset.
  @$pb.TagNumber(2)
  $fixnum.Int64 get line => $_getI64(1);
  @$pb.TagNumber(2)
  set line($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLine() => $_has(1);
  @$pb.TagNumber(2)
  void clearLine() => $_clearField(2);

  /// Column number in source code. 0 means unset.
  @$pb.TagNumber(3)
  $fixnum.Int64 get column => $_getI64(2);
  @$pb.TagNumber(3)
  set column($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColumn() => $_has(2);
  @$pb.TagNumber(3)
  void clearColumn() => $_clearField(3);
}

/// Describes a function, including its human-readable name, system name,
/// source file, and starting line number in the source.
class Function_ extends $pb.GeneratedMessage {
  factory Function_({
    $core.int? nameStrindex,
    $core.int? systemNameStrindex,
    $core.int? filenameStrindex,
    $fixnum.Int64? startLine,
  }) {
    final $result = create();
    if (nameStrindex != null) {
      $result.nameStrindex = nameStrindex;
    }
    if (systemNameStrindex != null) {
      $result.systemNameStrindex = systemNameStrindex;
    }
    if (filenameStrindex != null) {
      $result.filenameStrindex = filenameStrindex;
    }
    if (startLine != null) {
      $result.startLine = startLine;
    }
    return $result;
  }
  Function_._() : super();
  factory Function_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Function_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Function', package: const $pb.PackageName(_omitMessageNames ? '' : 'opentelemetry.proto.profiles.v1development'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nameStrindex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'systemNameStrindex', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'filenameStrindex', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'startLine')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Function_ clone() => Function_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Function_ copyWith(void Function(Function_) updates) => super.copyWith((message) => updates(message as Function_)) as Function_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Function_ create() => Function_._();
  Function_ createEmptyInstance() => create();
  static $pb.PbList<Function_> createRepeated() => $pb.PbList<Function_>();
  @$core.pragma('dart2js:noInline')
  static Function_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Function_>(create);
  static Function_? _defaultInstance;

  /// Function name. Empty string if not available.
  @$pb.TagNumber(1)
  $core.int get nameStrindex => $_getIZ(0);
  @$pb.TagNumber(1)
  set nameStrindex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNameStrindex() => $_has(0);
  @$pb.TagNumber(1)
  void clearNameStrindex() => $_clearField(1);

  /// Function name, as identified by the system. For instance,
  /// it can be a C++ mangled name. Empty string if not available.
  @$pb.TagNumber(2)
  $core.int get systemNameStrindex => $_getIZ(1);
  @$pb.TagNumber(2)
  set systemNameStrindex($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSystemNameStrindex() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemNameStrindex() => $_clearField(2);

  /// Source file containing the function. Empty string if not available.
  @$pb.TagNumber(3)
  $core.int get filenameStrindex => $_getIZ(2);
  @$pb.TagNumber(3)
  set filenameStrindex($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilenameStrindex() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilenameStrindex() => $_clearField(3);

  /// Line number in source file. 0 means unset.
  @$pb.TagNumber(4)
  $fixnum.Int64 get startLine => $_getI64(3);
  @$pb.TagNumber(4)
  set startLine($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartLine() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartLine() => $_clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
