import 'package:flutter/material.dart';
import 'package:teste_login/login/login_page.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  bool controle = true;

  @override
  Widget build(BuildContext context) {

      if (!controle) {
         return LoginPage();
      } else {
        return Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomPadding: false,
          body:  Container(
                  child: Column(
                      children: <Widget>[
                          espacamento(10.0),
                          testeAvatar(),
                          espacamento(15.0),
                          criarCampoInput(45, 250, 20, Colors.white, false, 'nome', Icon(Icons.person_outline, color: Colors.redAccent)),
                          espacamento(10.0),
                          criarCampoInput(45, 250, 20, Colors.white, false, 'email', Icon(Icons.alternate_email, color: Colors.blueAccent)),
                          espacamento(10.0),
                          criarCampoInput(45, 250, 20, Colors.white, false, 'usuário', Icon(Icons.adb, color: Colors.yellowAccent)),
                          espacamento(10.0),
                          criarCampoInput(45, 250, 20, Colors.white, true, 'senha', Icon(Icons.security, color: Colors.purpleAccent)),
                          espacamento(15.0),
                          separador(300, 0.4, Colors.white),
                          espacamento(13.0),
                          opcaoInicial(),
                          espacamento(12.0),
                          separador(350, 3, Colors.white),
                          criarBotao(350, Text('CADASTRAR'), _botaoCadastrar)
                          //botaoEntrar
                      ],
                  ),
          )
        );
      }
  }

  CircleAvatar testeAvatar () {
    return CircleAvatar(
      maxRadius: 70,
      backgroundImage: NetworkImage('https://i.pinimg.com/originals/f1/b1/35/f1b135f7ffeb204787eba119df4b9c17.jpg'),
    );
  }

  SizedBox separador (double tamLinha, double pixel, Color cor) {

    return new SizedBox (
          child: Container(
          decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: cor, width: pixel)
                      ),
          ),
          
          child:  SizedBox(width: tamLinha),
        ),
    );

  }
  void _botaoCadastrar(){

    print('botao CADASTRAR pressionado');

  }

  Container criarBotao (double larguraBotao, Text objTextBotao, VoidCallback funcao) {

    return Container (

      width: larguraBotao,
      child : FlatButton(
            color: Colors.lightBlue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            highlightColor: Colors.blueGrey,
            padding: EdgeInsets.all(30.0),
            onPressed: funcao,
            child: objTextBotao,
      )

    );
  }
  Container criarLabel (String texto, double espacamento, Color cor, double tamanhoFonte) {

    return new Container (

        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(espacamento), // 10.0   // amber // 17
        child : Text(texto, style: TextStyle(color: cor,fontSize: tamanhoFonte))

    );

  }
// 50 250 20 white true/false senha Icons.security Colors.redAccent
  Container criarCampoInput (double alturaCampo, double larguraCampo, double tamanhoFont, Color corTexto, bool modoSenha, String textoHint, Icon icone) {
    return Container(
          height: alturaCampo,
          width: larguraCampo,
          child : TextField (
              cursorColor: Colors.purpleAccent,
              style: TextStyle(fontSize: tamanhoFont, color: corTexto),
              obscureText: modoSenha,
              decoration: InputDecoration(
                hintText: textoHint,
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.white,fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(33.0),
                ),
                prefixIcon: icone
              ),
          )

    );
  }

  Widget espacamento (double espaco){
    return new Padding(
      padding: EdgeInsets.all(espaco)
    );
  }
  Widget opcaoInicial (){

    return new Container(
              //padding: new EdgeInsets.all(15.0),
                child: Row(
                children: <Widget>[
                    //espacamento(26.0),
                    Padding(
                      padding: EdgeInsets.only(left: 57)
                    ),
                    Column(
                      children: <Widget>[
                        Text('ENTRAR', style: TextStyle(color: Colors.greenAccent,fontSize: 15))
                      ],
                    ),
                    espacamento(12.0),
                    Column(
                      children: <Widget>[
                          Transform.scale (
                                      scale: 2.3,
                                      child : new Switch(value: controle, 
                                              activeColor: Colors.orange[300],
                                              // inactiveThumbColor: Colors.red[200],
                                              inactiveTrackColor: Colors.white,
                                              onChanged : (valor){
                                                setState(() {
                                                   controle = valor; 
                                                });
                                              },
                                              activeThumbImage: new NetworkImage('https://static.thenounproject.com/png/1973938-200.png'),
                                              inactiveThumbImage: new NetworkImage('https://dejpknyizje2n.cloudfront.net/categories/teaser/navy-anchor-stickers.png')
                                            
                                      )
                          ),
                      ],
                    ),
                    espacamento(12.0),
                    Column(
                      children: <Widget>[
                        Text('CADASTRAR', style: TextStyle(color: Colors.greenAccent,fontSize: 15))
                      ],
                    )
 
                  ],
                ),
              
      );

  }
  
}