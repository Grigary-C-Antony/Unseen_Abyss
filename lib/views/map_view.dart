import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_maps/model/gsheetmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// ignore: camel_case_types
class Maper_View extends StatefulWidget {
  @override
  _Maper_ViewState createState() => _Maper_ViewState();
}

// ignore: camel_case_types
class _Maper_ViewState extends State<Maper_View> {
  List gshetMarker = [];
  List<Marker> allMarker = [];
  // GoogleMapController _controller;

  getlocationfromSheet() async {
    var raw = await http.get(
        "https://script.google.com/macros/s/AKfycbxDPzsgvKfkSpAO4m0WN8S-JkWcAiYOuknPJ4qpg0OipyfvADwrSMAA/exec");
    var jsonmarker = convert.jsonDecode(raw.body);

    gshetMarker = jsonmarker.map((json) => MarkerModel.fromJson(json)).toList();

    jsonmarker.forEach((element) {
      allMarker.add(Marker(
          markerId: MarkerId(element["marker_id"]),
          position: LatLng(element["y"], element["x"]),
          draggable: false));

      //   print(element["x"]);
    });
    print("finished");
  }

  @override
  void initState() {
    super.initState();
    getlocationfromSheet();
    // print(allMarker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                getlocationfromSheet();
                print(allMarker);
              });
            },
          ),
        ],
        title: Text("maps"),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(20.5937, 78.9629),
              ),
              markers: Set.from(allMarker),
              //   onMapCreated: mapCreated,
            ),
          ),
        ],
      ),
    );
  }
}
