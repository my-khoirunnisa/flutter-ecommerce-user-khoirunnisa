part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  const factory CheckoutEvent.addItem(Product product) = _AddItem;
  const factory CheckoutEvent.removeItem(Product product) = _RemoveItem;
  const factory CheckoutEvent.resetItemAdded() = _ResetItemAdded;
  const factory CheckoutEvent.addShippingService(String shippingService, int shippingCost) = _AddShippingService;
  const factory CheckoutEvent.addAdressId(int addressId) = _AddAdressId; 
  const factory CheckoutEvent.removeProduct(int productId) = _RemoveProduct;
  const factory CheckoutEvent.addPaymentVaName(String paymentVaName) = _AddPaymentVaName;
}