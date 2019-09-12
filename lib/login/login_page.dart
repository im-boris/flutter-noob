import 'package:flutter/material.dart';
import 'package:teste_login/cadastro/cadastro_page.dart';

class LoginPage extends StatefulWidget {

  static String tag = 'login-page';

  @override
  _LoginPageState createState() => _LoginPageState();

}


class _LoginPageState extends State<LoginPage> {

  Widget espacamento (double espaco){

    return new Padding(

      padding: EdgeInsets.all(espaco)

    );
  }

  bool controle = false;

  void _onChanged1 (bool valorClicado){

    setState(() {
      controle = valorClicado;
      if(valorClicado == true){
        print('CADASTRAR');
      } else {
        print('ENTRAR');
      }
    });

  }

  void _botaoEntrar () {

    print('Botao Entrar Pressionado');

  }

   void _botaoCadastrar () {

    print('Botao Cadastrar Pressionado');

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
                                              onChanged : _onChanged1,
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

  
     
  Container criaImagemBackGround () {

    return new Container(
            height: 220,
            decoration: BoxDecoration(              
              image: DecorationImage(
                image: new NetworkImage('https://i-love-png.com/images/marvel-vs-capcom-infinite-wallpaper-20_13784.png'), //http://www.coxinhanerd.com.br/wp-content/uploads/2016/03/DICADELIVRO-LIVRO-DE-MARCAR-FILMES.png  colocar isso no fundo geral
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.plus)
              ),
            ),
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



  @override
  Widget build(BuildContext context) {


    final botaoEntrar = Container(
      width: 350,
      child : FlatButton(

            color: Colors.lightBlue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            highlightColor: Colors.blueGrey,
            padding: EdgeInsets.all(30.0),
            onPressed: () {
              _botaoEntrar();
            },
            child: Text("ENTRAR"),
      )

    );  

    final botaoCadastrar = Container(
      width: 350,
      child : FlatButton(

            color: Colors.lightBlue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            highlightColor: Colors.blueGrey,
            padding: EdgeInsets.all(30.0),
            onPressed: () {
              _botaoCadastrar();
            },
            child: Text("CADASTRAR"),
      )

    );  


    
    final labelUsuario = Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(10.0),
        child : Text('USUÁRIO', style: TextStyle(color: Colors.amberAccent,fontSize: 17))
        
    ); 

    final labelSenha = Container(

        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(10.0),
        child : Text('SENHA', style: TextStyle(color: Colors.amberAccent,fontSize: 17))
        
    ); 


    final campoUsuario = Container(
      height: 50,
      width: 250,
      child : TextField (
        cursorColor: Colors.purpleAccent,
        style: TextStyle(fontSize: 20, color: Colors.white),
        decoration: InputDecoration(
          hintText: "usuário",
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
          prefixIcon: const Icon(
            Icons.adb,
            color: Colors.yellowAccent,
          )
        ),
      ),

    );
    

    final campoSenha = Container(
        height: 50,
        width: 250,
        child : TextField (
            cursorColor: Colors.purpleAccent,
            style: TextStyle(fontSize: 20, color: Colors.white),
            obscureText: true,
            decoration: InputDecoration(
              hintText: "senha",
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
              prefixIcon: const Icon(
                Icons.security,
                color: Colors.purpleAccent,
              )
            ),
        )
    );

    if (!controle) {
        return Scaffold(
                backgroundColor: Colors.black,
                resizeToAvoidBottomPadding: false,
                body: Container(
                            child: Column(
                              children: <Widget>[
                                espacamento(10.0),
                                criaImagemBackGround(),
                                //separador(300,0.4,Colors.white),
                                espacamento(20.0),
                                //labelUsuario,
                                campoUsuario,
                                espacamento(20.0),
                                //labelSenha,
                                campoSenha,
                                espacamento(20.0),
                                separador(300,0.4,Colors.white),
                                espacamento(13.0),
                                opcaoInicial(),
                                espacamento(12.0),
                                separador(350,3,Colors.white),
                                botaoEntrar
                              ],
                            ),
                ),
              );  
    } else {
        return new CadastroPage();
    }

  }
}