import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Model/data/map_servces.dart';

class MapScreen extends StatefulWidget {

  @override
  State<MapScreen> createState() => _mapState();
}


class _mapState extends State<MapScreen> {
  Completer <GoogleMapController> _mapcontroller = Completer();
  static Position? position;
  static final CameraPosition _myCurrentLocationCameraPosition=CameraPosition(
      target: LatLng(position!.latitude,position!.longitude),
      bearing: 0.0,
    tilt: 0.0,
    zoom: 17,
  );
  var MyMarkers =HashSet  <Marker>();
  BitmapDescriptor? customMarker;
  launchURL(String url)async{
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
Future<void>getMyCurrentLocation() async{
    await LocationHelper.getPosition();
    position=await Geolocator.getLastKnownPosition().whenComplete(()  {setState(() {

    });});
}
  @override
  initState(){
    super.initState();
    getMyCurrentLocation();
  }
  Widget buildMap(){
    return GoogleMap(
      mapType: MapType.normal,
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
      initialCameraPosition: _myCurrentLocationCameraPosition,
      onMapCreated: (GoogleMapController controller){
        _mapcontroller.complete(controller);

        setState(() {
          MyMarkers.add(
            Marker(
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),

              markerId: MarkerId("1")
              ,position: LatLng(30.11800, 31.31654),
              infoWindow: InfoWindow(
                  title: "Ability Center for Studies and Training",
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.vertical(top: Radius.circular(30.0),)
                          ,),

                        builder: (builder){
                          return Container(
                            height: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          SizedBox(width: 10.0,),
                                          Text("27,Ibn al-Hakam,Helmeyet al-Zaytoun,Cairo Governorate",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {
                                    const url='https://www.abilitycenter.org/2020-executive-summary/';
                                    launchURL(url);
                                  },
                                      child:Row(
                                        children: [
                                          Icon(Icons.language_outlined),
                                          SizedBox(width: 10.0,),
                                          Text("WebSite"),
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.phone),
                                          SizedBox(width: 10.0,),
                                          Text("ContactUs"),
                                        ],
                                      ) ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
              ),
            ),


          );
          MyMarkers.add(
            Marker(
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),

              markerId: MarkerId("2")
              ,position: LatLng(30.01382, 31.22913),
              infoWindow: InfoWindow(
                  title: "The Deaf Unit",
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.vertical(top: Radius.circular(30.0),)
                          ,),

                        builder: (builder){
                          return Container(
                            height: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          SizedBox(width: 10.0,),
                                          Text("Location")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.language_outlined),
                                          SizedBox(width: 10.0,),
                                          Text("WebSite")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.phone),
                                          SizedBox(width: 10.0,),
                                          Text("ContactUs")
                                        ],
                                      ) ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
              ),
            ),


          );
          MyMarkers.add(
            Marker(
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
              markerId: MarkerId("3")
              ,position: LatLng(30.03422, 31.22728),
              infoWindow: InfoWindow(
                  title: "National Association for the Deaf",

                  onTap: () {

                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.vertical(top: Radius.circular(30.0),)
                          ,),

                        builder: (builder){
                          return Container(
                            height: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          SizedBox(width: 10.0,),
                                          Text("Qism El-Gedida,El-Khoukha and El-Kannaya,Qism El-Qadima,Cairo Governorate")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {
                                    const url='https://www.abilitycenter.org/2020-executive-summary/';
                                    launchURL(url);},
                                      child:Row(
                                        children: [
                                          Icon(Icons.language_outlined),
                                          SizedBox(width: 10.0,),
                                          Text("WebSite")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.phone),
                                          SizedBox(width: 10.0,),
                                          Text("ContactUs")
                                        ],
                                      ) ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
              ),
            ),


          );
          MyMarkers.add(
            Marker(
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
              markerId: MarkerId("4")
              ,position: LatLng(30.06912, 31.24413),
              infoWindow: InfoWindow(
                  title: "Arab Foundation for People with Hearing Impairment",

                  onTap: () {

                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.vertical(top: Radius.circular(30.0),)
                          ,),

                        builder: (builder){
                          return Container(
                            height: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          SizedBox(width: 10.0,),
                                          Text("Location")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.language_outlined),
                                          SizedBox(width: 10.0,),
                                          Text("WebSite")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.phone),
                                          SizedBox(width: 10.0,),
                                          Text("ContactUs")
                                        ],
                                      ) ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
              ),
            ),


          );
          MyMarkers.add(
            Marker(
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
              markerId: MarkerId("5")
              ,position: LatLng(31.31064, 29.86635),
              infoWindow: InfoWindow(
                  title: "The Brotherhood Association of the Deaf in Alexandria",

                  onTap: () {

                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.vertical(top: Radius.circular(30.0),)
                          ,),

                        builder: (builder){
                          return Container(
                            height: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          SizedBox(width: 10.0,),
                                          Text("Location")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.language_outlined),
                                          SizedBox(width: 10.0,),
                                          Text("WebSite")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.phone),
                                          SizedBox(width: 10.0,),
                                          Text("ContactUs")
                                        ],
                                      ) ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
              ),
            ),


          );
          MyMarkers.add(
            Marker(
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
              markerId: MarkerId("6")
              ,position: LatLng(31.23482, 29.90380),
              infoWindow: InfoWindow(
                  title: "Goethe Language Center",

                  onTap: () {

                    showModalBottomSheet(

                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.vertical(top: Radius.circular(30.0),)
                          ,),

                        builder: (builder){

                          return Container(
                            height: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          SizedBox(width: 10.0,),
                                          Text("Location")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.language_outlined),
                                          SizedBox(width: 10.0,),
                                          Text("WebSite")
                                        ],
                                      ) ),
                                  MaterialButton(onPressed: () {},
                                      child:Row(
                                        children: [
                                          Icon(Icons.phone),
                                          SizedBox(width: 10.0,),
                                          Text("ContactUs")
                                        ],
                                      ) ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
              ),
            ),


          );


        });

      },
      markers: MyMarkers,

    );

  }
  Future<void> _goToMyCurrentLocation() async{
    final GoogleMapController controller = await _mapcontroller.future;
  controller.animateCamera(CameraUpdate.newCameraPosition(_myCurrentLocationCameraPosition));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(
            213, 144, 66,1),
        title: Center(child: Text("Map",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),),
      body:
Stack(
   children: [
     position != null ? buildMap(): Center(child: Container(child: CircularProgressIndicator(backgroundColor:Color.fromRGBO(
         213, 144, 66,1) ,),),)
   ],
), //stack
      floatingActionButton: Container(margin:  EdgeInsets.fromLTRB(0, 0, 8, 30),child: FloatingActionButton(backgroundColor:Color.fromRGBO(
          213, 144, 66,1),

        onPressed:  _goToMyCurrentLocation ,child: Icon(Icons.place,color: Colors.white,),),),
    );
  }
}

