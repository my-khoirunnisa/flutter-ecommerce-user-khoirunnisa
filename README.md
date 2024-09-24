## **E-commerce App (Buyer/User)**

The E-Commerce Buyer Application is a dynamic mobile platform designed for customers to explore products from multiple stores, watch livestreams, and seamlessly make purchases. Built for mobile devices, the app enhances the shopping experience by allowing customers to engage with sellers in real-time and enjoy smooth order processing and tracking.

## **Key Features**

1. **Multi-Store Browsing:** Discover and explore products from multiple stores in one app, easily browse through different categories, and compare items across various sellers.
2. **Watch Livestreaming:** View live product demonstrations and promotions by sellers. Watch in-app livestreams to get a closer look at products and take advantage of exclusive deals.
3. **Interact During Livestreaming (Firestore):** Engage directly with sellers by commenting in real-time during livestreams, powered by Firestore. Ask questions, share feedback, and get immediate responses from sellers.
4. **Order Placement:** Easily place orders from your preferred stores, add products to your cart, and complete purchases with just a few taps.
5. **Payment via Virtual Account (Midtrans):** Securely complete payments through virtual accounts powered by Midtrans, ensuring fast and safe transactions.
6. **Order Tracking (RajaOngkir API):** Track your orders from dispatch to delivery using the RajaOngkir 3rd party API, providing real-time updates on your package status.

## **Pre-Installation (Laravel API endpoints)**

To install this app, you must to install the Laravel POS API project fist. Follow these steps:

1. Clone the repository: **`git clone https://github.com/my-khoirunnisa/laravel-ecommerce-backend-khoirunnisa.git`**
2. Navigate to the project directory: **`cd project-title`**
3. Install dependencies: **`composer install`**
4. Copy the .env.example: **`cp .env.example .env`**
5. Generate key: **`php artisan key:generate`**
6. Migrate: **`php artisan migrate`**
7. Run the project: **`php artisan serve`**

## **Installation (Flutter) & Usage**

After install the Laravel POS API project, install and use the POS app. Follow these steps:

1. Clone the repository: **`git clone https://github.com/my-khoirunnisa/flutter-ecommerce-user-khoirunnisa.git`**
2. Navigate to the project directory: **`cd project-title`**
3. Install dependencies: **`flutter pub get`**
4. Set the base-url in variable.dart file: **`static const String baseUrl = 'http://your_ip_address:8000';`**
5. Start or run the project: **`flutter run`**
6. Use the project as desired.

## **Authors and Acknowledgment**

E-Commerce Buyer/User App was created by **[Khoirunnisa'](https://github.com/my-khoirunnisa)**.

## **Contact**

If you have any questions or comments about this project, please contact **[Khoirunnisa'](work.khoirunnisa@gmail.com)**.

## **Conclusion**

The E-Commerce Buyer Application is a comprehensive solution designed to make online shopping easy, engaging, and efficient. With multi-store browsing, real-time livestreaming interactions, seamless payment options, and order tracking capabilities, this app offers a full-featured and enjoyable shopping experience for modern buyers.
