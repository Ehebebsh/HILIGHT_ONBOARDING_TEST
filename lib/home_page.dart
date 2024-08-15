import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey add = GlobalKey();
  final GlobalKey item = GlobalKey();
  final GlobalKey search = GlobalKey();
  final GlobalKey logout = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ShowCaseWidget.of(context).startShowCase([search, logout, item, add]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ex) 일기장", style: TextStyle(color: Colors.white)),
        centerTitle: false,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Showcase(
              key: search,
              description: 'ex)원하시는 일기를 찾으시려면 검색해주세요',
              overlayOpacity: 0.5,
              targetShapeBorder: const CircleBorder(),
              targetPadding: const EdgeInsets.all(8),
              child: const Icon(Icons.search, color: Colors.white),
            ),
          ),
          IconButton(
            // 로그아웃 버튼
            onPressed: () {},
            icon: Showcase(
              key: logout,
              description: 'ex) 로그아웃 하려면 눌러주세요',
              overlayOpacity: 0.5,
              targetShapeBorder: const CircleBorder(),
              targetPadding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Showcase(
        key: add,
        description: 'ex) 일기장을 추가해주세요',
        overlayOpacity: 0.5,
        targetShapeBorder: const CircleBorder(),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => index == 0
            ? Showcase(
          key: item,
          description: 'ex) 일기장 내용을 확인해 주세요',
          overlayOpacity: 0.5,
          child: listItem(index),
        )
            : listItem(index),
      ),
    );
  }

  listItem(int index) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.apps,
          color: Colors.white,
        ),
      ),
      title: Text("제목"),
      subtitle: Text("내용내용내용내용내용"),
      trailing: const Text("2023.12.13"),
    );
  }
}
