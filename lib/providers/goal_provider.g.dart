// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goalsStreamHash() => r'ab7b960fdd4516547873b142aaf3a06afdebb0dd';

/// See also [goalsStream].
@ProviderFor(goalsStream)
final goalsStreamProvider = AutoDisposeStreamProvider<List<Goal>>.internal(
  goalsStream,
  name: r'goalsStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$goalsStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoalsStreamRef = AutoDisposeStreamProviderRef<List<Goal>>;
String _$goalNotifierHash() => r'bf85b09252f4033576df9f8279ee97f8b9f40af2';

/// See also [GoalNotifier].
@ProviderFor(GoalNotifier)
final goalNotifierProvider =
    AutoDisposeNotifierProvider<GoalNotifier, void>.internal(
      GoalNotifier.new,
      name: r'goalNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$goalNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$GoalNotifier = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
