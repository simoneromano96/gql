// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:end_to_end_test/graphql/schema.schema.gql.dart' as _i1;
import 'package:end_to_end_test/graphql/serializers.gql.dart' as _i2;

part 'review_with_date.var.gql.g.dart';

abstract class GReviewWithDateVars
    implements Built<GReviewWithDateVars, GReviewWithDateVarsBuilder> {
  GReviewWithDateVars._();

  factory GReviewWithDateVars(
      [Function(GReviewWithDateVarsBuilder b) updates]) = _$GReviewWithDateVars;

  @nullable
  _i1.GEpisode get episode;
  _i1.GReviewInput get review;
  @nullable
  DateTime get createdAt;
  static Serializer<GReviewWithDateVars> get serializer =>
      _$gReviewWithDateVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i2.serializers.serializeWith(GReviewWithDateVars.serializer, this);
  static GReviewWithDateVars fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GReviewWithDateVars.serializer, json);
}
