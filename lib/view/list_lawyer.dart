import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../controller/auth_controller.dart';
import '../controller/con_list_layer.dart';
import '../widget/castum_card.dart';
class List_layer extends StatelessWidget {
   List_layer({Key? key}) : super(key: key);
final con_chat=Get.put(Chat_Screen_Controller(),permanent: true);
final auth_con=Get.put(AuthController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
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
                                      return Castum_Card(imge:   auth_con.user.value.photoUrl!,name: '${auth_con.user.value.name!}', stars: '4', city: 'cairo', text: 'lawyer_family', salary: '200',);
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
            ],
          ),
        ),
      ),
    );
  }
}
