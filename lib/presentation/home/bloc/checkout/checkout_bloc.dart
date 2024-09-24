import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/core/core.dart';
import 'package:flutter_ecommerce_user/data/models/response/list_product_response_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/models/order_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc()
      : super(const _Loaded([], 0, 0, 0, '', 0, '', 'bank_transfer')) {
    on<_AddItem>((event, emit) {
      var currentState = state as _Loaded;
      List<OrderItemModel> newCheckout = [...currentState.products];
      emit(const _Loading());
      if (newCheckout.any((element) => element.product == event.product)) {
        var index = newCheckout
            .indexWhere((element) => element.product == event.product);
        newCheckout[index].quantity++;
      } else {
        newCheckout.add(OrderItemModel(product: event.product, quantity: 1));
      }

      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice +=
            (element.quantity * element.product.price!.toDouble).toInt();
      }

      emit(_Loaded(
        newCheckout,
        totalPrice,
        totalQuantity,
        currentState.addressId,
        currentState.shippingService,
        currentState.shippingCost,
        currentState.paymentVaName,
        currentState.paymentMethod,
      ));
    });

    on<_RemoveItem>((event, emit) {
      var currentState = state as _Loaded;
      List<OrderItemModel> newCheckout = [...currentState.products];
      emit(const _Loading());
      if (newCheckout.any((element) => element.product == event.product)) {
        var index = newCheckout
            .indexWhere((element) => element.product == event.product);
        if (newCheckout[index].quantity == 1) {
          newCheckout.removeAt(index);
        } else {
          newCheckout[index].quantity--;
        }
      }

      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice +=
            (element.quantity * element.product.price!.toDouble).toInt();
      }

      emit(_Loaded(
        newCheckout,
        totalPrice,
        totalQuantity,
        currentState.addressId,
        currentState.shippingService,
        currentState.shippingCost,
        currentState.paymentVaName,
        currentState.paymentMethod,
      ));
    });

    on<_ResetItemAdded>((event, emit) {
      var currentState = state as _Loaded;
      List<OrderItemModel> newCheckout = [];
      emit(const _Loading());
      int totalQuantity = 0;
      int totalPrice = 0;
      emit(_Loaded(
        newCheckout,
        totalPrice,
        totalQuantity,
        currentState.addressId,
        currentState.shippingService,
        currentState.shippingCost,
        currentState.paymentVaName,
        currentState.paymentMethod,
      ));
    });

    on<_AddShippingService>((event, emit) {
      var currentState = state as _Loaded;
      emit(const _Loading());
      emit(_Loaded(
        currentState.products,
        currentState.totalPrice,
        currentState.totalQuantity,
        currentState.addressId,
        event.shippingService,
        event.shippingCost,
        currentState.paymentVaName,
        currentState.paymentMethod,
      ));
    });

    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Loaded([], 0, 0, 0, '', 0, '', 'bank_transfer'));
    });

    on<_RemoveProduct>((event, emit) {
      var currentState = state as _Loaded;
      List<OrderItemModel> newCheckout = [...currentState.products];
      emit(const _Loading());
      newCheckout
          .removeWhere((element) => element.product.id == event.productId);

      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice +=
            (element.quantity * element.product.price!.toDouble).toInt();
      }

      emit(_Loaded(
        newCheckout,
        totalPrice,
        totalQuantity,
        currentState.addressId,
        currentState.shippingService,
        currentState.shippingCost,
        currentState.paymentVaName,
        currentState.paymentMethod,
      ));
    });

    on<_AddAdressId>((event, emit) {
      var currentState = state as _Loaded;
      emit(const _Loading());
      emit(_Loaded(
        currentState.products,
        currentState.totalPrice,
        currentState.totalQuantity,
        event.addressId,
        currentState.shippingService,
        currentState.shippingCost,
        currentState.paymentVaName,
        currentState.paymentMethod,
      ));
    });

    on<_AddPaymentVaName>((event, emit) {
      var currentState = state as _Loaded;
      emit(const _Loading());
      emit(_Loaded(
        currentState.products,
        currentState.totalPrice,
        currentState.totalQuantity,
        currentState.addressId,
        currentState.shippingService,
        currentState.shippingCost,
        event.paymentVaName,
        currentState.paymentMethod,
      ));
    });
  }
}
