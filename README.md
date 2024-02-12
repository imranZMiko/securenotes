# Secure Notes Flutter Project

This Flutter project is designed to provide a secure platform for taking and storing notes. It follows industry best practices for security and user experience. Below are instructions for running the app and details about the libraries used.

## Running the App

To run this Flutter app, ensure you have Flutter installed on your system. If not, you can follow the official installation guide at [Flutter.dev](https://flutter.dev/docs/get-started/install).

After installing Flutter, clone this repository to your local machine and navigate to the project directory.

```bash
git clone https://github.com/imranZMiko/securenotes.git
cd securenotes
```

Install the required dependencies by running:

```bash
flutter pub get
```

Before running the app, you need to install and run `json-server` for storing data. Install `json-server` globally using npm:

```bash
npm install -g json-server
```

Next, create a `db.json` file in a directory of your choice. This file will act as your database. 

Run `json-server` and point it to your `db.json` file:

```bash
json-server --watch path/to/db.json
```

Now, you can run the Flutter app by executing:

```bash
flutter run
```

## Libraries Used

This project utilizes several libraries to enhance functionality and user experience:

- **cupertino_icons**: Provides icons for the iOS platform.

- **google_fonts**: Allows the use of custom fonts from the Google Fonts library.

- **get**: State management library for Flutter applications, offering simplicity and performance.

- **intl**: Internationalization and localization library for Flutter, enabling multi-language support.

- **firebase_core**: Firebase Core SDK, required for Firebase services integration.

- **firebase_auth**: Firebase Authentication SDK for Flutter, facilitating user authentication.

- **flutter_secure_storage**: Securely stores sensitive data, such as authentication tokens, locally on the device.

- **flutter_local_notifications**: Allows the app to display local notifications to the user.

These libraries were carefully selected to ensure security, performance, and a smooth user experience for the Secure Notes Flutter project.