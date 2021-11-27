import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'ลลิษา มโนบาล',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'ปราณปรียา มโนบาล',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.yellow[500],
          ),
          const Text('1000000'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        '(เกิด 27 มีนาคม พ.ศ. 2540) ชื่อในการแสดงว่า ลิซ่า เป็นแร็ปเปอร์ นักร้อง และนักเต้นชาวไทยซึ่งทำงานหลักในประเทศเกาหลีใต้ เป็นสมาชิกของแบล็กพิงก์ เกิร์ลกรุปเกาหลีใต้สังกัดวายจีเอนเตอร์เทนเมนต์ '
            'ลิซ่าเปิดตัวเป็นศิลปินเดี่ยวกับซิงเกิลอัลบั้มชื่อ ลลิษา ในเดือนกันยายน พ.ศ. 2564 อัลบั้มเปิดตัวที่อันดับหนึ่งบนแกออนอัลบั้มชาร์ต และขายได้มากกว่า 7 แสนชุดในสัปดาห์แรก ทำให้เธอเป็นศิลปินหญิงเคป็อปคนแรกที่ทำได้'
            'มิวสิกวิดีโอเพลงชื่อเดียวกับอัลบั้ม ในยูทูบมีผู้ชมมากกว่า 73.6 ล้านครั้งในวันแรก ทำลายสถิติมิวสิกวิดีโอของศิลปินเดี่ยวที่มีผู้ชมมากที่สุดภายใน 24 ชั่วโมง '
            'ลิซ่าสามารถพูดได้หลายภาษา โดยเธอสามารถพูดภาษาไทย อังกฤษ เกาหลีได้คล่อง และภาษาญี่ปุ่นและจีนแบบพื้นฐานได้'
            'ลิซ่ากลายเป็นศิลปินเคป็อปผู้มีชื่อเสียงจากประเทศไทยและประเทศเกาหลีใต้ที่มียอดผู้ติดตามในอินสตาแกรมส่วนตัวมากที่สุด โดยมีผู้ติดตามกว่า 67 ล้านคน '
            ,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Lisa BlackPink',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lisa BlackPink'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/lisa.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}