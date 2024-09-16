# 🌟 Shop Flow

**Shop Flow** is a sleek and responsive Flutter app designed to provide users with a premium shopping experience. This app brings together stunning design, fast performance, and clean architecture to deliver a seamless product browsing journey. With smooth animations and a fully responsive layout, Shop Flow makes online shopping more intuitive and engaging.

https://github.com/user-attachments/assets/50912252-e30d-46e2-8737-a2592285f89f

---

## 🚀 Features

- **🛒 Product Grid View**: Easily browse through a catalog of products fetched from a reliable API, displaying essential product details like images, titles, and prices—complete with both old and new price displays.
- **🎨 Smooth Animations**: Enjoy polished, fluid animations powered by `tween` effects, enhancing the user experience as they navigate through the app.
- **🔄 State Management**: Built with `Cubit`, ensuring reliable, scalable, and maintainable state management throughout the application.
- **📱 Responsive Design**: With `flutter_screenutil`, Shop Flow looks pixel-perfect on devices of all sizes.
- **🚪 Onboarding Experience**: A smooth, interactive onboarding flow using `flutter_onboarding_slider` ensures new users feel welcomed and informed right from the start.
- **💧 Splash Screen**: Eye-catching animated splash screen, engaging users while the app loads with an inviting aesthetic.
- **🌐 Networking**: Robust networking with `Dio` and `Retrofit`, ensuring fast, efficient API communication.

---

## 🎯 Bonus Features

This app exceeds the core requirements by incorporating additional advanced features, such as:

- **🛠 MVVM Architecture**: Clean and scalable `Model-View-ViewModel` architecture, making the codebase more modular, testable, and maintainable.
- **🔗 Repository Pattern**: A dedicated `repository layer` abstracts the data sources, ensuring clean separation between business logic and data handling.
- **💉 Dependency Injection**: Leveraged `get_it` for automatic dependency injection, making the code more flexible and easier to test.
- **✨ Tween Animations**: Smooth transitions and enhanced user interaction with additional `tween animations`, adding a level of visual sophistication.

---

## ⚙️ Continuous Integration and Continuous Deployment (CI/CD)

Shop Flow uses a robust CI/CD pipeline to streamline the process of building, testing, and distributing the app. This includes:

- **Fastlane Integration**: Automated Firebase App Distribution via `Fastlane` to distribute the app to testers.
- **GitHub Actions Workflow**: Automatically builds the app on every push to the `main` branch, distributes it to Firebase, and creates a release on GitHub.

---

## 📦 Technologies & Packages

Shop Flow is built on a robust and modern tech stack using the following powerful Flutter packages:

- **`flutter_bloc`**: Centralized state management with Bloc/Cubit for a consistent data flow.
- **`freezed`**: Code generation for immutable classes and unions.
- **`dio`**: Lightning-fast HTTP client with easy API integration.
- **`retrofit`**: Clean API calls using type-safe HTTP services.
- **`flutter_screenutil`**: Adapt your app to different screen sizes.
- **`animated_splash_screen`**: Beautifully animated splash screens.
- **`cached_network_image`**: Caches images for performance efficiency.
- **`google_fonts`**: Access to beautiful fonts from Google Fonts for custom typography.

For a full list of dependencies, check the [pubspec.yaml](https://github.com/OmarAmeer96/Shop-Flow/blob/main/pubspec.yaml).

---

## 🛠 Installation

Follow these steps to get **Shop Flow** up and running on your local machine:
1. **Clone the repository**:
   
```bash
   git clone https://github.com/OmarAmeer96/Shop-Flow.git
   cd Shop-Flow
```

3. **Install dependencies**:
   
```bash
   flutter pub get
```

3. **Run the app**: 
   
```bash
   flutter run
```

---

## 📸 Screenshots

Here are some snapshots of Shop Flow's clean design and intuitive interface:

### App Icon
<img src="https://github.com/user-attachments/assets/756ab096-f28a-42a4-b06a-8ebafceec08a" width="250">

### Default Splash Screen
<img src="https://github.com/user-attachments/assets/05deff1d-b9cc-46d9-b16a-f4f3b38811ce" width="250">

### Animated Splash Screen
<img src="https://github.com/user-attachments/assets/71a2e279-ba3e-452d-ab30-4158a2ff4d81" width="250">

### Onboarding Screens
<img src="https://github.com/user-attachments/assets/205288d3-18c6-49b3-bc47-feb08eb70f20" width="250">
<img src="https://github.com/user-attachments/assets/12ffec49-1319-4de8-8dc2-8d2abf6b6d4f" width="250">
<img src="https://github.com/user-attachments/assets/3ac36447-97ea-452e-b568-f63a97b8da23" width="250">

### Products Loading
<img src="https://github.com/user-attachments/assets/4b147331-854a-416c-9f2b-86c557722d85" width="250">
<img src="https://github.com/user-attachments/assets/2a727870-d960-4192-85dd-7c6c00c0fac7" width="250">

### Products Fetched
<img src="https://github.com/user-attachments/assets/2afb08e6-4ac4-4eca-850e-0ad2e00f3296" width="250">

---

## 💡 Contribution

Contributions are always welcome! Whether it's an issue, a bug fix, or a new feature suggestion, feel free to open an issue or submit a pull request. Together, we can make Shop Flow even better! 🎉

---

## ❤️ Credits

This project was built with passion and dedication by [Omar Ameer](https://github.com/OmarAmeer96). Every line of code was written with the goal of creating a smooth, intuitive shopping experience.
