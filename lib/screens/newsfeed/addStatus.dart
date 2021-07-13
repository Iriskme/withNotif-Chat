
import 'package:akyat_bukid/screens/newsfeed/dropdownButton.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';


class AddStatus extends StatefulWidget{
  @override
  AddStatusState createState() => AddStatusState();
}

class AddStatusState extends State<AddStatus> {
  TextEditingController writingTextController = TextEditingController();
  final FocusNode _nodeText1 = FocusNode();
  FocusNode writingTextFocus = FocusNode();
  bool _isLoading = false;
  //File _postImageFile;


  KeyboardActionsConfig _buildConfig(BuildContext context){
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.white,
      nextFocus: true,
      actions: [
        KeyboardActionsItem(
          displayArrows: false,
          focusNode: _nodeText1,
        ),
        KeyboardActionsItem(
          focusNode: writingTextFocus,
          toolbarButtons: [
            (node) {
              return GestureDetector(
                onTap: () {
                  print('Select Image');
                  //_getImageandCrop();
                },
                child:  Container (
                  color: Colors.grey,
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget> [
                      Icon(Icons.add_photo_alternate_rounded, size: 28),
                      Text (
                        "Add Image",
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ),
              );
            }
          ]
        )
      ]
    );
  }

  int _value = 1;

  @override
  
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold ( 

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),

      body: Stack(
        children: <Widget> [
          KeyboardActions(
            config: _buildConfig(context),
            child: Column(
              children: <Widget> [
                
                Container(
                  width: size.width,
                  height: size.height - MediaQuery.of(context).viewInsets.bottom - 80,
                  child: Padding( 
                    padding: const EdgeInsets.only(right: 14.0, left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0), 
                        ),
                          
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                child: Image.asset('assets/images/Logo2.png'),
                              )
                            ),
                            Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              width: 270,
                              height: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                                    child: TextFormField(
                                      autofocus: true,
                                      focusNode: writingTextFocus,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Input your status here',
                                        hintMaxLines: 4
                                      ),
                                      controller: writingTextController,
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,
                                    ),
                                  ),
                                ]
                              )
                            ),
                            )],
                        ),
                        
                      // _postImageFile != null ? Image.file(_postImageFile,fit: Box.fill);
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 15, 15, 14), 
                          child:Container(
                          margin: EdgeInsets.only(left:5.0),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: DropdownMenu()
                        )  
                      
                        )
                      ]
                    ),
                  ),
                ) 
              ],
            ),
          ),

          //Utils.loadingCircle(_isLoading),

            
        ]
      )    
    );
  }

  // Future<void> _getImageAndCrop() async {
  //   File imageFileFromGallery = await ImagePicker.pickImage(source: ImageSource.gallery);
  //   if (imageFileFromGallery != null) {
  //     File cropImageFile = await Utils.cropImageFile(imageFileFromGallery);
  //     if (cropImageFile != null) {
  //       setState(() {
  //         _postImageFile = cropImageFile;
  //       });
  //     }
  //   }
  // }
}