import 'package:flutter/material.dart';

class CamposCheckBox extends StatefulWidget {
  const CamposCheckBox({Key? key}) : super(key: key);

  @override
  _CamposCheckBoxState createState() => _CamposCheckBoxState();
}

class _CamposCheckBoxState extends State<CamposCheckBox> {
  //variaveis booleanas recebem true or false
  bool _selecionarValor = false;
  bool _valorCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Trabalhando com Checkbox"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              CheckboxListTile(
                  title: Text("Selecione a opção desejada: "),
                  value: _selecionarValor,
                  onChanged: (_valorCheck) {
                    setState(() {
                      if (_selecionarValor) {
                        _selecionarValor = false;
                      } else {
                        _selecionarValor = true;
                      }
                    });

                    print("Valor Selecionado = " + _selecionarValor.toString());
                  })
            ],
          ),
        ));
  }
}
