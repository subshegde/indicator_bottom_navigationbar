# Indicator Bottom Navigation Bar

Demo video: 

https://github.com/user-attachments/assets/0fa46395-1970-4706-87f7-55a3a88fa0d7

**Overview**: 
-  The `IndicatorBottomNavigationbar` is a highly customizable Flutter widget designed to create a bottom navigation bar with a visually appealing animated indicator. This indicator moves and changes its appearance when a navigation item is selected, providing a modern and dynamic navigation experience. The widget allows for the customization of various aspects such as the selected/unselected item colors, indicator height and width, and the icon-label pair for each navigation item.

- This widget leverages Flutter's `BottomNavigationBar` but enhances its default functionality with custom styling and animations. It provides a reusable and flexible navigation bar that can be easily integrated into any Flutter app that requires a bottom navigation bar with a modern UI/UX.

**Key Features :**

*Customizable Item Colors :*
-  The widget allows the user to specify different colors for selected and unselected items. The selected items can have a custom color (default is blue), and unselected items can have another color (default is black with some transparency).

*Animated Indicator :*
- One of the standout features of this navigation bar is the animated indicator. When an item is selected, an animated line (or indicator) appears beneath the selected icon. The indicator smoothly animates in both color and size. It changes width based on selection, making the navigation experience dynamic.
- The height and width of the indicator are customizable, and the animation duration can be adjusted.

*Icon and Label Pairing :*
- The widget uses a custom IconLabel class to define the icons and their associated labels. This ensures flexibility in adding any icons and labels you need in the bottom navigation bar.
- The icon and label appear for each item, with the label always visible for both selected and unselected states.

*Flexible Design :*
- The background color of the navigation bar is also customizable, and default values are provided to ensure a clean, functional design.
- The widget is highly reusable and can be integrated into various projects with minimal adjustments.

*Smooth UI/UX Transitions :*
- The bottom navigation bar ensures a smooth transition when an item is selected. The indicator not only appears but animates, providing a professional touch to the app's navigation bar.

*Responsiveness :*
- The widget is designed to work seamlessly across different screen sizes, ensuring that the icons, labels, and indicator adjust properly on all devices.

*Callback on Tap :*
- The widget accepts an `onTap` callback function, which allows developers to execute custom logic whenever a navigation item is tapped. This can be used to navigate to different screens or perform other actions.

## About The Package

The `IndicatorBottomNavigationbar` widget was developed to enhance the default bottom navigation experience in Flutter apps by introducing a customizable animated indicator beneath the selected item. The idea is to create a visually appealing and smooth navigation experience while allowing developers the freedom to customize the appearance of the bottom navigation bar.

## Getting Started

To use the `indicator_bottom_navigationbar` package in your Flutter project, follow these steps:

### Prerequisites
Ensure you have the following installed on your system:
* [Flutter](https://flutter.dev/docs/get-started/install)
* [Dart](https://dart.dev/get-dart)

### Installation
1. Add the package dependency in your `pubspec.yaml` file:
    ```yaml
    dependencies:
      indicator_bottom_navigationbar:
    ```

2. Install the dependencies by running the following command:
    ```bash
    flutter pub get
    ```

3. Import the package into your Dart file:
    ```dart
    import 'package:indicator_bottom_navigationbar/indicator_bottom_navigationbar.dart';
    ```

## Usage

Here’s how to integrate the `IndicatorBottomNavigationbar` widget into your Flutter app:

## Demo Video
[![YouTube](https://img.shields.io/badge/-YouTube-black.svg?style=for-the-badge&logo=youtube&colorB=555)](https://youtu.be/GQJImcnQNuM?si=UtnxLdpp6uZqGa3R)


```dart
IndicatorBottomNavigationbar(
        currentIndex: currentIndex,
        onTap: (index){
          currentIndex = index;
          setState(() {});
        },
        iconLabels: iconLabels,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[700]!,
        backgroundColor: Colors.black,
        indicatorHeight: 2.5,
        indicatorWidth: 70,
      ),
```
## 🚀 About Me
I'm Subrahmanya S. Hegde, a mobile app developer with expertise in Flutter and React Native, passionate about building high-performance, cross-platform applications. With skills in Kotlin, Node.js, Firebase, and Supabase, I create end-to-end solutions that deliver seamless user experiences.

I hold an MCA degree from MIT Manipal and have a strong passion for exploring new technologies. I am also a strong advocate of using Git and GitHub for version control and collaboration.

Let’s build something great together! 
#### Happy Coding!


## Authors

- [@subshegde](https://www.github.com/subshegde)


## Feedback

If you have any feedback, please reach out to us at subrahmanya460@gmail.com

#### My Github
[![GitHub](https://img.shields.io/badge/-GitHub-black.svg?style=for-the-badge&logo=github&colorB=000000&colorA=333333)](https://github.com/subshegde)
