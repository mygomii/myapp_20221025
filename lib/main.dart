import 'package:flutter/material.dart';

void main() => runApp(const ListViewApp2());
// void main() => runApp(const ListViewApp());
// void main() => runApp(const ContainerApp3());
// void main() => runApp(const ContainerApp4());
// void main() => runApp(const ContainerApp2());
// void main() => runApp(const ContainerApp());
// void main() => runApp(const MyApp());

class ListViewApp2 extends StatelessWidget {
  const ListViewApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text("스나이퍼팩토리앱"),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              ListTile(
                title: const Text("mygomii", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text("SniperFactory member"),
                leading: ClipOval(
                  child: Image.network('https://picsum.photos/200/200', fit: BoxFit.cover),
                ),
                trailing: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("수업인증", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      margin: EdgeInsets.only(right: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Image.network("https://picsum.photos/400/100", fit: BoxFit.cover),
                    ),
                    Container(
                      width: 140,
                      height: 140,
                      margin: EdgeInsets.only(right: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network("https://picsum.photos/500/100", fit: BoxFit.cover),
                    ),
                    Container(
                      width: 140,
                      height: 140,
                      margin: EdgeInsets.only(right: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Image.network("https://picsum.photos/600/100", fit: BoxFit.cover),
                    ),
                    Container(
                      width: 140,
                      height: 140,
                      margin: EdgeInsets.only(right: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Image.network("https://picsum.photos/700/100", fit: BoxFit.cover),
                    ),
                    Container(
                      width: 140,
                      height: 140,
                      margin: EdgeInsets.only(right: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Image.network("https://picsum.photos/200/100", fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("설정찾기", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(children: const [
                    ListTile(
                        title: Text("테마변경"),
                        leading: Icon(
                          Icons.sunny,
                          color: Colors.white,
                        )),
                    ListTile(title: Text("즐겨찾는 과정"), leading: Icon(Icons.heart_broken_rounded)),
                    ListTile(title: Text("과정 일정 관리"), leading: Icon(Icons.calendar_month)),
                    ListTile(title: Text("홈화면 설정"), leading: Icon(Icons.home)),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(children: const [
                    ListTile(
                        title: Text("결제관리"),
                        leading: Icon(
                          Icons.play_arrow_sharp,
                          color: Colors.red,
                        )),
                    ListTile(title: Text("장바구니"), leading: Icon(Icons.shopping_bag, color: Colors.purple,)),
                    ListTile(title: Text("결제이력"), leading: Icon(Icons.newspaper, color: Colors.green,)),
                  ]),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.desktop_mac), label: "강의"),
              BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: "즐겨찾기"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "검색"),
              BottomNavigationBarItem(icon: Icon(Icons.newspaper_rounded), label: "커뮤니티"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "나의 정보"),
            ],
          )),
    );
  }
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text("A"),
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerApp4 extends StatelessWidget {
  const ContainerApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          foregroundColor: Colors.white,
          title: Text("컨테이너 실습3"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [Colors.deepOrange, Colors.orangeAccent]),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(150), bottomRight: Radius.circular(150))),
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: CircleAvatar(
                radius: 48,
                backgroundColor: Colors.orange.shade200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerApp3 extends StatelessWidget {
  const ContainerApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          foregroundColor: Colors.white,
          title: Text("컨테이너 실습3"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  // 1번
                  Container(
                    width: 240,
                    height: 240,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.purple])),
                  ),
                  // 2번
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 240,
                      height: 240,
                      decoration:
                          BoxDecoration(gradient: LinearGradient(colors: [Colors.red, Colors.orange]), borderRadius: BorderRadius.only(topLeft: Radius.circular(150), bottomRight: Radius.circular(150))),
                      child: Center(
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: Colors.orange.shade200,
                        ),
                      ),
                    ),
                  ),
                  // 3번
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: [Colors.red, Colors.orange])),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48),
                              child: Image.network('https://picsum.photos/200/200', fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      const Text("sniperfactory_official")
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerApp2 extends StatelessWidget {
  const ContainerApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          foregroundColor: Colors.white12,
          title: Text("컨테이너 실습"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30), // Image border
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(48), // Image radius
                    child: Image.network('https://picsum.photos/200', fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.deepOrangeAccent), color: Colors.grey.shade200),
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage('https://picsum.photos/300'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          foregroundColor: Colors.white,
          title: Text("재밌는 앱"),
        ),
        body: Center(
            child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              // border: Border.all(width: 1, color: Colors.deepOrangeAccent),
              color: Colors.grey.shade200,
              boxShadow: [BoxShadow(color: Colors.black54, spreadRadius: 10, blurRadius: 2)],
              gradient: LinearGradient(colors: [Colors.black, Colors.white12])),
          child: Center(child: Text("재밌게 가봅시다!")),
        )),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.deepPurple,
          centerTitle: false,
          title: Text("오늘은 화요일..."),
          elevation: 0,
        ),
        body: Center(
          child: Text("수업준비완료11d"),
        ),
      ),
    );
  }
}
