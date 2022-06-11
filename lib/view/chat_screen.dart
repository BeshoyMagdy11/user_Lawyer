import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/auth_controller.dart';
import '../controller/con_list_layer.dart';
import 'chat_room/chat_room.dart';

class Chat_Screen extends StatelessWidget {
  Chat_Screen({Key? key}) : super(key: key);
  final con_chat = Get.put(Chat_Screen_Controller(), permanent: true);
  // ignore: non_constant_identifier_names
  final auth_con = Get.put(AuthController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Material(
          elevation: 5,
          child: Container(
              margin: EdgeInsets.only(top: context.mediaQueryPadding.top),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black38))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chats",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              )),
        ),
        Expanded(
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: con_chat.chatsStream(auth_con.user.value.email!),
              builder: (context, snapshot1) {
                if (snapshot1.connectionState == ConnectionState.active) {
                  var listDocsChats = snapshot1.data!.docs;
                  print(snapshot1.data);
                  return ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: listDocsChats.length,
                      itemBuilder: (context, index) {
                        return StreamBuilder<
                            DocumentSnapshot<Map<String, dynamic>>>(
                            stream: con_chat
                                .friendStream(listDocsChats[index]["connection"]),
                            builder: (context, snapshot2) {
                              if (snapshot1.connectionState ==
                                  ConnectionState.active) {
                                var data = snapshot2.data?.data();
                                return ListTile(
                                  onTap: () {
                                    Get.to(Chat_room_vieww());
                                  },
                                  leading: CircleAvatar(
                                    radius: 20,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        child: Image.network(
                                          auth_con.user.value.photoUrl!,
                                          height: 200,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  title: Text('${auth_con.user.value.name!}'),
                                  subtitle: Text('"${data?["status"]}'),
                                  trailing: listDocsChats[index]['total_unread'] ==
                                      0
                                      ? SizedBox()
                                      : Chip(
                                      label: Text(
                                          "${listDocsChats[index]['total_unread']}")),
                                );
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                    color: Color(0xffDA9F5C)),
                              );
                            });
                      });
                }
                return Center(
                  child: CircularProgressIndicator(color: Color(0xffDA9F5C)),
                );
              },
            )),
      ]),
    );
  }
}
/*
ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: mychat.length,
                itemBuilder: (context, index) => mychat[index])
*/