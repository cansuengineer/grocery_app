# Grocery App

A simple, responsive Flutter UI for a grocery shopping experience. The current focus is the Vegetables flow with a product list, category chips, and a bottom navigation bar.

## Features
- Responsive spacing using MediaQuery for paddings, gaps, and image sizes
- Category filtering UI built with Flutter's ChoiceChip
- Scrollable product list with tappable product cards
- SafeArea usage and consistent design tokens (colors, radii, shadows)
- Android, iOS, and macOS project scaffolding included

## Screens
- `VegetablesPage`: Header, search input, category chips, and a list of vegetables with images, price labels, and quick action icons
<img width="302" height="593" alt="grocery_app" src="https://github.com/user-attachments/assets/b4a21a82-a57a-4294-8772-a45a4a261558" />

  

## Tech Stack
- Flutter (Dart)
- Material Design widgets

## Getting Started
1. Prerequisites
   - Install Flutter and set up your environment: see Flutter docs
   - Ensure you have platform toolchains installed (Xcode for iOS/macOS, Android SDK for Android)

2. Fetch dependencies
```bash
flutter pub get
```

3. Run the app
```bash
# Launch on the first available device/emulator
flutter run

# Or target a specific device
flutter devices
flutter run -d <device_id>

# Web (if enabled)
flutter run -d chrome
```

## Project Structure
```
lib/
  main.dart            # App entry
  vegetables.dart      # VegetablesPage UI, chips, and product cards
assets/                # (Add images/fonts if needed)
```

## UI & Responsiveness
- Spacing and sizing are derived from `MediaQuery` to scale across screen sizes:
  - Horizontal paddings, small/medium gaps, input paddings
  - Product card padding and image dimensions
- Category chips use `ChoiceChip` with custom colors and rounded shapes.

## Customization
- Update colors, typography, and radii directly in `vegetables.dart`.
- Replace network images with local assets (add to `pubspec.yaml` under `assets:`).
- Extend navigation by wiring up `onTap` handlers on product cards and bottom navigation.

## Screenshots

Place the provided image at `assets/screenshots/vegetables_page.png` and it will render below.

```md
![Vegetables Page](assets/screenshots/vegetables_page.png)
```

Note: Ensure the image file is committed to the repo so platforms like GitHub can display it.

## Troubleshooting
- If builds fail after editing, run:
```bash
flutter clean && flutter pub get
```
- Ensure a simulator/emulator or a physical device is connected and authorized.

## License
This project is for learning/demo purposes. Add your preferred license if distributing.
