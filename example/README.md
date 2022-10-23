# example

This is an example app that uses **sa_flutter_flavor**  to allow the running of different *flavors* of an app with an accompanying visual indicator. This example uses **Riverpod** to create an appProvider that can be used to access the selected *flavor* and its associated attributes.

This means that to access **ANY** flavor attribute anywhere in the app simply reference the **appProvider** functionality.


## Running the different flavors
You can simple run

```
flutter run -t lib/main_dev.dart
```

or

```
flutter run -t lib/main_test.dart
```

or

```
flutter run -t lib/main.dart
```

to run the **DEV**, **TEST** or **PROD**  flavor. Or, in my opinion the better way, would be to add a config for each flavor in you projects **launch.json**, see below for simple examples (these are taken from the configurations section).

- first is the default *prod* flavor
- second is the *dev* flavor
- third is the *test* flavor

```
{
    "name": "example",
    "request": "launch",
    "type": "dart"
},
{
    "name": "example - DEV",
    "request": "launch",
    "program": "lib/main_dev.dart",
    "type": "dart",
},  
{
    "name": "example - TEST",
    "request": "launch",
    "program": "lib/main_test.dart",
    "type": "dart",
},  
```


