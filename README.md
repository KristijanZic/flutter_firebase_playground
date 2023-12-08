# flutter_firebase_playground

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Make sure to have Node JS or install it with homebrew:

```sh
brew install node
```

First install firebase cli with npm:

```sh
npm install -g firebase-tools
```

Login into firebase

```sh
firebase login
```

Activate Firebase Fire CLI globally:

```sh
dart pub global activate flutterfire_cli
```

Install xcodeproj dependency:

- using gem:

    ```sh
    sudo gem install xcodeproj
    ```

Configure the flutter fire project by executing this command from the flutter project directory:

```sh
flutterfire configure --project=flutter-firebase-playground-0
```

### Toubleshooting

If the app is not compiling for the macos or ios platform throwing dependency or unbuilt extensions error, try executing `pod update` in the respective macos or ios directory and then running the app.
