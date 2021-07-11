import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Home(),
    debugShowCheckedModeBanner: false,
    
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App Espaço"),
        backgroundColor: Colors.purple,

      ),
      body: Container(
        width: double.infinity, //largura equivalente ao 100% do css e html
        padding: EdgeInsets.all(16), //espaçamentos dos elementos em px e/ou dp
        decoration: BoxDecoration(
         border:Border.all(width: 2, color:Colors.purple)
        ),
        child: Column( //Esta é uma coluna
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //alinhamento do main com espaços iguais
            crossAxisAlignment: CrossAxisAlignment.center, //alinhamento do main centralizado
            children: <Widget> //filhos
            [
              Image.asset("imagens/astronauta.jpg"),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus felis arcu, consequat vitae urna ac, vehicula consequat est. Cras consequat aliquet libero eget suscipit. Ut finibus feugiat diam at porta. Fusce imperdiet eu massa et elementum. Curabitur fringilla, elit ac efficitur tempor, ipsum metus rutrum urna, semper tristique nunc quam nec neque. Maecenas molestie fermentum risus, vitae tristique libero finibus quis. Maecenas pretium dolor faucibus faucibus congue. Cras fermentum eros ac velit lobortis, sed lacinia libero sollicitudin. Proin dignissim luctus est, sed molestie augue facilisis vitae.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,

                ),
              ),
              RaisedButton(
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                  color:Colors.purple,
                onPressed: (){},
              )

            ]
        )
      ),
    );
  }
}