

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController textController = TextEditingController();
  final ImagePicker _imagePicker=ImagePicker();
  dynamic _pickImage;
  PickedFile? placeImage;
     
    Widget   ImagePlaceWidget() {
    if(placeImage !=null){
      return Container(
        width: 200,
        height: 200,
        child: Image.file(File(placeImage!.path)),
      );
    }else{
    if(_imagePicker !=null){
      return Container(
         width: 200,
        height: 200,
      child:  Image.network(
        '',
        )
      );
    }else{
      return Container(
         width: 200,
        height: 200,
        child: Image.asset('assets/image/res.jpeg'),
      );
    }
    }
    
  }

  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 33,
          ),
          Text('Nereyi aramak istersin?'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextFormField(
              cursorRadius: Radius.circular(22),
              controller: textController,
              cursorColor: Colors.orange,
              decoration: InputDecoration(
                  hintText: 'Ber şeyleri anlat', fillColor: Colors.pink),
            ),
          ),
          SizedBox(height: 13,),
          Padding(
            padding: EdgeInsets.only(bottom: size.height * .24),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                       _onImageButtonPressed(ImageSource.gallery,context: context);
                    },
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.cyan),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.photo),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  InkWell(
                    onTap: () {
                      _onImageButtonPressed(ImageSource.camera,context: context);
                    },
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.camera),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  
                ],
              ),
            
            ),
          ),
            ImagePlaceWidget(),
        ],
      ),
    );
  }
   void _onImageButtonPressed(ImageSource source,{BuildContext? context})async{
     try {
       final pickedFile= await _pickImage.getImage(source: source);
       setState(() {
         placeImage=pickedFile;
         if(placeImage!=null);
       });
     } catch (e) {
        setState(() {
          _pickImage=e;
        });
     }
   }
}
