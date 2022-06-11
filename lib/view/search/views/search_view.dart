import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controller/auth_controller.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView {
  final authC = Get.put(AuthController(),permanent: true);
  final con_ser = Get.put(SearchController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Color(0xffDA9F5C),
          title: Text('Search'),
          centerTitle: true,

          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                onChanged: (value) => con_ser.searchFriend(
                  value,
                  authC.user.value.email!,
                ),
                controller: con_ser.searchC,
                cursorColor: Color(0xffDA9F5C),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  hintText: "Search new friend here..",
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  suffixIcon: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      color: Color(0xffDA9F5C)
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(140),
      ),
      body: Obx(
        () => con_ser.tempSearch.length == 0
            ? Center(
                child: Container(
                  width: Get.width * 0.7,
                  height: Get.width * 0.7,
                  child: Lottie.asset("assets/lottie/empty.json"),
                ),
              )
            : ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: con_ser.tempSearch.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black26,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child:
                      con_ser.tempSearch[index]["photoUrl"] == "noimage"
                              ? Image.asset(
                                  "assets/logo/noimage.png",
                                  fit: BoxFit.cover,
                                )
                              : Image.network(
                        con_ser.tempSearch[index]["photoUrl"],
                                  fit: BoxFit.cover,
                                ),
                    ),
                  ),
                  title: Text(
                    "${con_ser.tempSearch[index]["name"]}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "${con_ser.tempSearch[index]["email"]}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () => authC.addNewConnection(
                      con_ser.tempSearch[index]["email"],
                    ),
                    child: Chip(
                      label: Text("Message"),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
