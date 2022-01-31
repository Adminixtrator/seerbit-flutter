<p align="center">
<img width="500" valign="top" src="https://res.cloudinary.com/dpejkbof5/image/upload/v1620323718/Seerbit_logo_png_ddcor4.png" data-canonical-src="https://res.cloudinary.com/dpejkbof5/image/upload/v1620323718/Seerbit_logo_png_ddcor4.png" style="max-width:100%; ">
</p>

# Seerbit Flutter SDK

Seerbit Flutter SDK can be used to integrate the SeerBit payment gateway into your flutter application. 

## Requirements 
Register for a merchant account on [Seerbit Merchant Dashboard](https://dashboard.seerbitapi.com) to get started. 

```
    Dart sdk: ">=2.12.0-0 <3.0.0"
    Flutter: ">=1.22.2"
    Android: minSdkVersion 17 and add support for androidx (see AndroidX Migration to migrate an existing app)
    iOS: --ios-language swift, Xcode version >= 12
```

```bash
flutter pub get seerbit_flutter
```

## API Documentation 
   https://doc.seerbit.com

## Support 
If you have any problems, questions or suggestions, create an issue here or send your inquiry to care@seerbit.com

## Implementation
You should already have your API keys. If not, go to [dashboard.seerbitapi.com](https://dashboard.seerbitapi.com).
```dart
import 'package:flutter/material.dart';
import 'package:seerbit_flutter/seerbit_flutter.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => SeerbitMethod.startPayment(
              context,
              PayloadModel(
                  currency: 'NGN',
                  email: "dummyemail@mail.com",
                  description: "A pair of new shoes",
                  fullName: "Jane Doe",
                  country: "NG",
                  transRef: DateTime.now().toString(),
                  amount: "100",
                  callbackUrl: "your callback url",
                  publicKey: "YOUR PUBLIC KEY",
                  closeOnSuccess: false,
                  closePrompt: false,
                  setAmountByCustomer: false,
                  pocketRef: "",
                  vendorId: "",
                  customization: CustomizationModel(
                  borderColor: "#000000",
                  backgroundColor: "#004C64",
                  buttonColor: "#0084A0",
                  paymentMethod: [PayChannel.card,PayChannel.account, PayChannel.transfer],
                  confetti: false,
                  logo: "logo_url || base64",
    )
                  ),
              onSuccess: (response) {},
              onCancel: (_) {}),
            ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
        child: Text(
          'Checkout',
          style: TextStyle(color: Colors.white),
        ));
  }
}

```
```OnSuccess``` you will recieve a Map containing the response from the payment request.


During the payment process you can simply end the process by calling 
```dart
    SeerbitMethod.endPayment(context);
```
This ends the payment and removes the checkout view from the screen.
## Contributors
<span>
<a href="https://github.com/onuohasilver">
  <img src="https://github.com/onuohasilver.png?size=50">
</a>
</span>
