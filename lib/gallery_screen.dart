import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int counter = 0; // النص الأولي 0

  // قائمة الصور
  final List<String> images = [
    'https://i2.wp.com/imgs.photo/%D8%AE%D9%84%D9%81%D9%8A%D8%A7%D8%AA-%D9%85%D9%86%D8%A7%D8%B8%D8%B1-%D8%B7%D8%A8%D9%8A%D8%B9%D9%8A%D8%A9-%D8%AC%D9%85%D9%8A%D9%84%D8%A9.webp', // صورة افتراضية
    'https://nature-image.weebly.com/uploads/1/4/2/6/142697203/609bd79e5542b9e78d19f3bb6b8f4334.jpg', // صورة افتراضية
    'https://play-lh.googleusercontent.com/1jvj1HabYY0HqrRcY8bTbjSiaYWB9i4flokTItVT2jToL7V68uSwxlwoLIiJJPs2kdE', // صورة افتراضية
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnTpWN3Jddmo-3cOtMx7mtD7D_Gqn-FG47gg&usqp=CAU', // صورة افتراضية
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('معرض الصور'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // شبكة الصور
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عدد الصور في كل صف
                crossAxisSpacing: 10, // المسافة بين الأعمدة
                mainAxisSpacing: 10, // المسافة بين الصفوف
              ),
              itemCount: images.length, // عدد الصور
              itemBuilder: (context, index) {
                return Image.network(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          // النص والزر
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'القيمة: $counter',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++; // زيادة القيمة بمقدار 1
                    });
                  },
                  child: Text('زيادة'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
