// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goalsStreamHash() => r'45e1238ab3b491d4be56243c91db0d7f36dd73a6';

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
String _$goalNotifierHash() => r'28ea564c1161353f8d942f6201c629e5d564ee99';

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
