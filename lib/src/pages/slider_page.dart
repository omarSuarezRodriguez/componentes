import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}


class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 300.0;

  bool _bloquearCheck = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }


  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label:  'Tamaño de la imagen',
      // divisions: ,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      // Operador ternario
      onChanged: (_bloquearCheck) ? null : (valor) {
        print(valor);
        setState(() {
            _valorSlider = valor;
        });
      } ,

    );

  }


  Widget _checkBox() {

    // return Checkbox(
    //   activeColor: Colors.red,
    //   value: _bloquearCheck,
    //   onChanged: (valor) {
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),

      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );

  }


  Widget _crearSwitch() {

    return SwitchListTile(
      title: Text('Bloquear Slider'),

      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );

  }



  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://e.rpp-noticias.io/normal/2019/10/06/112111_848991.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

}
