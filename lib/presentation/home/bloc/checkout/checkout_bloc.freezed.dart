// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CheckoutEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$AddItemImpl implements _AddItem {
  const _$AddItemImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CheckoutEvent.addItem(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return addItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return addItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements CheckoutEvent {
  const factory _AddItem(final Product product) = _$AddItemImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$RemoveItemImpl implements _RemoveItem {
  const _$RemoveItemImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CheckoutEvent.removeItem(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return removeItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return removeItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements CheckoutEvent {
  const factory _RemoveItem(final Product product) = _$RemoveItemImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetItemAddedImplCopyWith<$Res> {
  factory _$$ResetItemAddedImplCopyWith(_$ResetItemAddedImpl value,
          $Res Function(_$ResetItemAddedImpl) then) =
      __$$ResetItemAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetItemAddedImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$ResetItemAddedImpl>
    implements _$$ResetItemAddedImplCopyWith<$Res> {
  __$$ResetItemAddedImplCopyWithImpl(
      _$ResetItemAddedImpl _value, $Res Function(_$ResetItemAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetItemAddedImpl implements _ResetItemAdded {
  const _$ResetItemAddedImpl();

  @override
  String toString() {
    return 'CheckoutEvent.resetItemAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetItemAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return resetItemAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return resetItemAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (resetItemAdded != null) {
      return resetItemAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return resetItemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return resetItemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (resetItemAdded != null) {
      return resetItemAdded(this);
    }
    return orElse();
  }
}

abstract class _ResetItemAdded implements CheckoutEvent {
  const factory _ResetItemAdded() = _$ResetItemAddedImpl;
}

/// @nodoc
abstract class _$$AddShippingServiceImplCopyWith<$Res> {
  factory _$$AddShippingServiceImplCopyWith(_$AddShippingServiceImpl value,
          $Res Function(_$AddShippingServiceImpl) then) =
      __$$AddShippingServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String shippingService, int shippingCost});
}

/// @nodoc
class __$$AddShippingServiceImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddShippingServiceImpl>
    implements _$$AddShippingServiceImplCopyWith<$Res> {
  __$$AddShippingServiceImplCopyWithImpl(_$AddShippingServiceImpl _value,
      $Res Function(_$AddShippingServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingService = null,
    Object? shippingCost = null,
  }) {
    return _then(_$AddShippingServiceImpl(
      null == shippingService
          ? _value.shippingService
          : shippingService // ignore: cast_nullable_to_non_nullable
              as String,
      null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddShippingServiceImpl implements _AddShippingService {
  const _$AddShippingServiceImpl(this.shippingService, this.shippingCost);

  @override
  final String shippingService;
  @override
  final int shippingCost;

  @override
  String toString() {
    return 'CheckoutEvent.addShippingService(shippingService: $shippingService, shippingCost: $shippingCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShippingServiceImpl &&
            (identical(other.shippingService, shippingService) ||
                other.shippingService == shippingService) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shippingService, shippingCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShippingServiceImplCopyWith<_$AddShippingServiceImpl> get copyWith =>
      __$$AddShippingServiceImplCopyWithImpl<_$AddShippingServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return addShippingService(shippingService, shippingCost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return addShippingService?.call(shippingService, shippingCost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addShippingService != null) {
      return addShippingService(shippingService, shippingCost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return addShippingService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return addShippingService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addShippingService != null) {
      return addShippingService(this);
    }
    return orElse();
  }
}

abstract class _AddShippingService implements CheckoutEvent {
  const factory _AddShippingService(
          final String shippingService, final int shippingCost) =
      _$AddShippingServiceImpl;

  String get shippingService;
  int get shippingCost;
  @JsonKey(ignore: true)
  _$$AddShippingServiceImplCopyWith<_$AddShippingServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAdressIdImplCopyWith<$Res> {
  factory _$$AddAdressIdImplCopyWith(
          _$AddAdressIdImpl value, $Res Function(_$AddAdressIdImpl) then) =
      __$$AddAdressIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int addressId});
}

/// @nodoc
class __$$AddAdressIdImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddAdressIdImpl>
    implements _$$AddAdressIdImplCopyWith<$Res> {
  __$$AddAdressIdImplCopyWithImpl(
      _$AddAdressIdImpl _value, $Res Function(_$AddAdressIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
  }) {
    return _then(_$AddAdressIdImpl(
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddAdressIdImpl implements _AddAdressId {
  const _$AddAdressIdImpl(this.addressId);

  @override
  final int addressId;

  @override
  String toString() {
    return 'CheckoutEvent.addAdressId(addressId: $addressId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAdressIdImpl &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAdressIdImplCopyWith<_$AddAdressIdImpl> get copyWith =>
      __$$AddAdressIdImplCopyWithImpl<_$AddAdressIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return addAdressId(addressId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return addAdressId?.call(addressId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addAdressId != null) {
      return addAdressId(addressId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return addAdressId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return addAdressId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addAdressId != null) {
      return addAdressId(this);
    }
    return orElse();
  }
}

abstract class _AddAdressId implements CheckoutEvent {
  const factory _AddAdressId(final int addressId) = _$AddAdressIdImpl;

  int get addressId;
  @JsonKey(ignore: true)
  _$$AddAdressIdImplCopyWith<_$AddAdressIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductImplCopyWith<$Res> {
  factory _$$RemoveProductImplCopyWith(
          _$RemoveProductImpl value, $Res Function(_$RemoveProductImpl) then) =
      __$$RemoveProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$RemoveProductImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveProductImpl>
    implements _$$RemoveProductImplCopyWith<$Res> {
  __$$RemoveProductImplCopyWithImpl(
      _$RemoveProductImpl _value, $Res Function(_$RemoveProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$RemoveProductImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveProductImpl implements _RemoveProduct {
  const _$RemoveProductImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'CheckoutEvent.removeProduct(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductImplCopyWith<_$RemoveProductImpl> get copyWith =>
      __$$RemoveProductImplCopyWithImpl<_$RemoveProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return removeProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return removeProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return removeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return removeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(this);
    }
    return orElse();
  }
}

abstract class _RemoveProduct implements CheckoutEvent {
  const factory _RemoveProduct(final int productId) = _$RemoveProductImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$RemoveProductImplCopyWith<_$RemoveProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPaymentVaNameImplCopyWith<$Res> {
  factory _$$AddPaymentVaNameImplCopyWith(_$AddPaymentVaNameImpl value,
          $Res Function(_$AddPaymentVaNameImpl) then) =
      __$$AddPaymentVaNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentVaName});
}

/// @nodoc
class __$$AddPaymentVaNameImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddPaymentVaNameImpl>
    implements _$$AddPaymentVaNameImplCopyWith<$Res> {
  __$$AddPaymentVaNameImplCopyWithImpl(_$AddPaymentVaNameImpl _value,
      $Res Function(_$AddPaymentVaNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentVaName = null,
  }) {
    return _then(_$AddPaymentVaNameImpl(
      null == paymentVaName
          ? _value.paymentVaName
          : paymentVaName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPaymentVaNameImpl implements _AddPaymentVaName {
  const _$AddPaymentVaNameImpl(this.paymentVaName);

  @override
  final String paymentVaName;

  @override
  String toString() {
    return 'CheckoutEvent.addPaymentVaName(paymentVaName: $paymentVaName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPaymentVaNameImpl &&
            (identical(other.paymentVaName, paymentVaName) ||
                other.paymentVaName == paymentVaName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentVaName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPaymentVaNameImplCopyWith<_$AddPaymentVaNameImpl> get copyWith =>
      __$$AddPaymentVaNameImplCopyWithImpl<_$AddPaymentVaNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function() resetItemAdded,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(int addressId) addAdressId,
    required TResult Function(int productId) removeProduct,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return addPaymentVaName(paymentVaName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function()? resetItemAdded,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(int addressId)? addAdressId,
    TResult? Function(int productId)? removeProduct,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return addPaymentVaName?.call(paymentVaName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function()? resetItemAdded,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(int addressId)? addAdressId,
    TResult Function(int productId)? removeProduct,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addPaymentVaName != null) {
      return addPaymentVaName(paymentVaName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItemAdded value) resetItemAdded,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddAdressId value) addAdressId,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return addPaymentVaName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItemAdded value)? resetItemAdded,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddAdressId value)? addAdressId,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return addPaymentVaName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItemAdded value)? resetItemAdded,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddAdressId value)? addAdressId,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addPaymentVaName != null) {
      return addPaymentVaName(this);
    }
    return orElse();
  }
}

abstract class _AddPaymentVaName implements CheckoutEvent {
  const factory _AddPaymentVaName(final String paymentVaName) =
      _$AddPaymentVaNameImpl;

  String get paymentVaName;
  @JsonKey(ignore: true)
  _$$AddPaymentVaNameImplCopyWith<_$AddPaymentVaNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CheckoutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CheckoutState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OrderItemModel> products,
      int totalPrice,
      int totalQuantity,
      int addressId,
      String shippingService,
      int shippingCost,
      String paymentVaName,
      String paymentMethod});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalPrice = null,
    Object? totalQuantity = null,
    Object? addressId = null,
    Object? shippingService = null,
    Object? shippingCost = null,
    Object? paymentVaName = null,
    Object? paymentMethod = null,
  }) {
    return _then(_$LoadedImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      null == shippingService
          ? _value.shippingService
          : shippingService // ignore: cast_nullable_to_non_nullable
              as String,
      null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int,
      null == paymentVaName
          ? _value.paymentVaName
          : paymentVaName // ignore: cast_nullable_to_non_nullable
              as String,
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      final List<OrderItemModel> products,
      this.totalPrice,
      this.totalQuantity,
      this.addressId,
      this.shippingService,
      this.shippingCost,
      this.paymentVaName,
      this.paymentMethod)
      : _products = products;

  final List<OrderItemModel> _products;
  @override
  List<OrderItemModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int totalPrice;
  @override
  final int totalQuantity;
  @override
  final int addressId;
  @override
  final String shippingService;
  @override
  final int shippingCost;
  @override
  final String paymentVaName;
  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'CheckoutState.loaded(products: $products, totalPrice: $totalPrice, totalQuantity: $totalQuantity, addressId: $addressId, shippingService: $shippingService, shippingCost: $shippingCost, paymentVaName: $paymentVaName, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.shippingService, shippingService) ||
                other.shippingService == shippingService) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.paymentVaName, paymentVaName) ||
                other.paymentVaName == paymentVaName) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      totalPrice,
      totalQuantity,
      addressId,
      shippingService,
      shippingCost,
      paymentVaName,
      paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(products, totalPrice, totalQuantity, addressId,
        shippingService, shippingCost, paymentVaName, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(products, totalPrice, totalQuantity, addressId,
        shippingService, shippingCost, paymentVaName, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products, totalPrice, totalQuantity, addressId,
          shippingService, shippingCost, paymentVaName, paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CheckoutState {
  const factory _Loaded(
      final List<OrderItemModel> products,
      final int totalPrice,
      final int totalQuantity,
      final int addressId,
      final String shippingService,
      final int shippingCost,
      final String paymentVaName,
      final String paymentMethod) = _$LoadedImpl;

  List<OrderItemModel> get products;
  int get totalPrice;
  int get totalQuantity;
  int get addressId;
  String get shippingService;
  int get shippingCost;
  String get paymentVaName;
  String get paymentMethod;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckoutState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalPrice,
            int totalQuantity,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CheckoutState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
