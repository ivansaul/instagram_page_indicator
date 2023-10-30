<div align="center">

<h1 style="border-bottom: none">
    <b><a href="#">Instagram Page Indicator</a></b>
</h1>

Simple Page Indicator like Instagram written for Flutter

[![Made-with-flutter](https://img.shields.io/badge/Made%20with-Flutter-orange)](https://flutter.dev/) 
[![Pub version](https://img.shields.io/pub/v/instagram_page_indicator.svg)](https://pub.dev/packages/instagram_page_indicator)
![GitHub repo size](https://img.shields.io/github/repo-size/ivansaul/instagram_page_indicator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Discord](https://img.shields.io/badge/-Discord-424549?style=social&logo=discord)](https://discord.gg/b72uAVBz6b)

</div>

---

## Demo

<div align="center">
<img src="https://github.com/ivansaul/instagram_page_indicator/blob/master/demo/demo.gif?raw=true">
</div>

## Usage

```dart
InstagramPageIndicator(
    itemCount: pages.length,
    controller: controller,
),
```

## Customization

You can customize direction, size, spacing, color and more...

```dart
InstagramPageIndicator(
    itemCount: pages.length,
    controller: controller,
    dotSize: 11,
    dotSelectedSize: 15,
    dotSpacing: 20,
    dotColor: Colors.grey.shade300,
    dotSelectedColor: Colors.blueAccent.shade100,
    visibleDotCount: 5,
    visibleDotThreshold: 2,
    orientation: Axis.horizontal,
    reverse: false,
),
```

## Credits
This project is based on [scrolling_page_indicator](https://pub.dev/packages/scrolling_page_indicator). The main focus of this project is adding new features and make it accessible to everyone.