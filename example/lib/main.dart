import 'package:flutter/material.dart';
import 'package:instagram_page_indicator/instagram_page_indicator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      40,
      (index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade300,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: SizedBox(
          height: 280,
          child: Center(
            child: Text(
              "Page $index",
              style: const TextStyle(color: Colors.blueAccent),
            ),
          ),
        ),
      ),
    );

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram Page Indicator'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              SizedBox(
                height: 240,
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              const SizedBox(height: 10),
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
            ],
          ),
        ),
      ),
    );
  }
}
