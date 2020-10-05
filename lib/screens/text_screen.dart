import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextScreen extends StatefulWidget {
  TextScreen({Key key}) : super(key: key);

  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  final FlutterTts fluttersTts = FlutterTts();
  TextEditingController textEditingControllerText = TextEditingController();
  TextEditingController textEditingControllerIdioma = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future speak(String text, String idioma) async {
      await fluttersTts.setLanguage(idioma);
      await fluttersTts.setPitch(1);
      await fluttersTts.speak(text);
    }

    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Title(
              color: Color(0xFF42A5F5),
              child: Text("Escribe el mensaje que quieras reproducir:"),
            ),
            TextFormField(
              controller: textEditingControllerText,
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Title(
              color: Color(0xFF42A5F5),
              child: Text(
                  "Idioma en el que quieras reproducir el mensaje (es-es):"),
            ),
            TextFormField(
              controller: textEditingControllerIdioma,
            ),
            RaisedButton(
              child: Text("Presiona para reproducir mensaje"),
              onPressed: () => speak(textEditingControllerText.text,
                  textEditingControllerIdioma.text),
            ),
          ],
        ));
  }
}
