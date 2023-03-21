import 'package:cached_network_image/cached_network_image.dart';
import 'package:day14/Screen/Home/home_ui.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/Rectangle1.png",
          fit: BoxFit.fill,
          width: 500,
          height: 180,
        ),
        Image.asset(
          "assets/images/Rectangle2.png",
          fit: BoxFit.fill,
          width: 500,
          height: 360,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: Container(
                child: Image.asset(
                  "assets/images/Rectangle3.png",
                  fit: BoxFit.fill,
                  width: 500,
                  height: 170,
                  // width: double.infinity,
                ),
              )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 290,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email :',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      width: 350,
                                      height: 45,
                                      padding: EdgeInsets.all(1),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.blue),
                                            //<-- SEE HERE
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password :',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      width: 350,
                                      height: 45,
                                      padding: EdgeInsets.all(1),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.blue),
                                            //<-- SEE HERE
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              width: 200,
                              height: 20,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 200,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Card(
                                              child: CachedNetworkImage(
                                                placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                                imageUrl:
                                                'data:image/png;base64,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',
                                              ),
                                            ))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Card(
                                              child: CachedNetworkImage(
                                                placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                                imageUrl:
                                                'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAN4AAADjCAMAAADdXVr2AAABZVBMVEX////nQjY2plNChPL3ugk4f/A0fvK/1v/2twDmPjKjxP7lOi0pokqewf7/vAAwpE+Ls/7/6ukgoUXmPC//9/b4wgDlNSbmLx//7ez/5OLmNziJsvn3vA8op0w1qEdDgfs1qT9FsGAlpVXr+O6U0KLJ6ND3mJP+19XpLh39xsP2ioTwT0T7paD/3dvyYVf2joj/67f/88//4ZX//fV/qfjj7v/8zEtmmPRUkvjN3//4+/97xYzQ6tbi9Oa2379twIGk2bBBh+R/wo7uZ17yWE33sKz2fnf8sq7zZ178wL37zMrycmrqZS7viiP0qBb8xzrugCb90mP/+uroUDPsdSrxlx71rRP/56jpVzLwkyDudQD92ICzzf7/99f+7r/70XP91mDc6P+prhd/rETluBfCsytUqE6hrzl5q0XAsyzXtiCarztauXIujLg6m5U3o2pAito8lLM6nYg/jc47l6g4oH1+vblyLj7sAAAL+klEQVR4nO2c63/ayBWGhbgYRQTFYI/s2jgmgI0B28k6XjsGA00INqbdNGm7aRtn23S3absl3d7//mokMELoMqM5Gkn57fvJX7g8nDPnvDNzZEHgodX9g9be8OiomcBqHr1o7F2N9le5fHagWr1pDQdqXUVILkpSwpAkFWWE1Ho98aLROthcC/tL+tLqwd5Y0sDkGZWNJBmpKjpqvNyPFePmy2FTAys6g1kh0aAx2gz7a5No9WqYUFHRJWaOjM3hVbQX5P5e0wfaAuLeftgQDrppINVtpREiqmrjJmyUJe03ZFVmRJtJVlEjSjFcbTXZ42YhbLYisg4PxioCZdMlIXUYfpKuaYEjbADUKqqDUahwG8dBBG4uCRWvQoNbbdShqomzEGp9vnA6YAgRXDsG6wPeUpsHfOlaiB+cJkkdc3SkB81AC4qdivU9TnAbY5U3HBZKcHEyrXpQfc5DUr0RONzmAIUDh4WaAQewFUpe3kmqB9kEN65DDJ0h9CKwc4sRCmnVmSVLASXocT1sNF1SPQgTs3YUemLOVD8GpzuUIpCYM6ExMN0o3IpplXwEWmBa0Vh2c8kDQL6GGjbOkuQhGN04MkXFpDrQSdPaEde9D6mA8NYGkaSTr2HomhFqCHNJiQ0QukE06YowqRnNzJRkGLrraNIVQTJTGEaxIyQkCSZ2x9GkS8DQXUXPqyTg6G6i5jN1QdXMzWjSISCzkojUDmgqqNgJ4yi2BKiaKbSiWFYkCeiiIYCyIskyQkjVhPQRLB/vUASiWwPNTDyuUi++aBxfjUY3+/s3o9HV3rBZrxOPLc3eBuqS6BrMR2to9ebxy0Obo4PNm9YYkd9dQ9VMuH4uIbV5fODqDw+vrhHR4TBYzRQ2QegkWR20Dgk+bmM0Rp4xBFt3gnAEkJpFtblH/oU2WgP36RFAuha7kZbrY9qJm5sXLteGgHSrzKmJ1GM/6+Rw7AQoIbiLddaqiVDL7wnr4bXtWTgk3YgteEhmul+8sZlJgOt3WkNnWngy2mM9G7+yTpQArjttg87gV6T6EKA3bQwX8geUjqXloQTQfOKBPP+NIdedtg3yX1cApzLWxrNfWVIh6W58B08ugo6WXhk9AjZ2wsDvDh18XmHzSJWLKAFK57spBDHvddAY+26g9mr6C56khjsSTCifwZNQlIbynZVN/MQPHdB1RtB6m13/GT2fJMFcZwSu9VRq/ee0fEDXiMHrcTal8X1FSQd2RBC0XqWwtlO/oQkgIjltiIKeZFOG1n9BzlcP/ykYQr2e4WkJSsqnhveECKXe3NHhBP0lESAKfrQZSl+Y8LQA/oqArzgI+0uTazu1oPVfe/OBnRoHryfZRbzU9tdeCRoPo2notRVPC6C7hQGcyAtcJ0twmO+3bnwoJm4F6+1y8DDf159Hagpf2uKltredErR4FPZXptAbe7qUs8eux8WMYdnnpsFna2Hk+DR0wTE3jQS189j1GNUV4cSFLmXnsWVeTwqC6LE73rKFQbH67yo2Pd2SoNkFCxOv4OFTCC8teOw4dXQbv2nLN7cw8Sqblr2QI9+dhVHj1PPc24JJ21OPLcE8QMBLJwRLbxpA3cKgOLlNwqU35fsKH0rHqiu4ObLlBNUsDPyTj4HKs+stBvB38Sos1lMWT76wvy+dnDdDtsq+C/sL0+kbSrxvGD/v9qmhBw+2dD2waGum+ybd89T9ZZ3ijyNr6nO8E0a8rUyajzL38Mf9ngov+yUjnbCVTvJR+gx/3Cu64H0RG7xkEn8csWcx8FiXHke8zKnnTn0Jj3Xp8cRbEYT3VHSpV6x0wgNueOn7VI4TB+8PccJ7Stv22CsLT7xz2raXfRwjvGTmghbvfazwTmm7+ptY4T0TXtPQpVLMfYEr3gqladlmpuOJl75Hicfe9rjibVFuZpkNNV+8pwIVHUBX54p3Rhe9mOElP3O8c0q81/HCS/6IF+Pk/BFvQfHqexre5+xaPn+8L6nw1tl3DE+54tHt91Ls+70zrm39He/tLE+8M9rDCOZTXOGMH51mqb0mkix4b2OF94D2nJPdlXFMTm07+56utLB3Bp5492gvZ9nPknji3Qp02/VU9gkr3jnXg0Da+z3m2sIT7wPt3Ad7beGJd0p9t8580nnOjS6ZFrxHca3hY118/PD0y3XauRbWKzB+yYnv92gv15mnku5nuOHpkx+E45xT5f9YYeQ7y2ClM9SiDTu+W6erLdnUt4/6jHjCh5XbWzxIdHu7Qqpnz56t3NJuhDP6WBLF9XP+u4+PlDIrnv/fhS6v0xf4RW+IT5Pyf3okimKhExoflaHDV+tYpL4l/zdMJyrt0PCoDjK07ZAusg17fvujTieKJdbi4ltUuZm5NV5EtPjy30/hRDHXD4nulGrtYceJZftkqZXuz3d0mkLCu0dVOo3KIhB0vmzqo5mu0A0Hj87Pnc9e5jULn/9eNNOJSjjho8vN9NbsdR62M//XBbjQwnefKjcNz6LLrTVk83+x0mnFMww8qtScehZdLr4s/524TCfmqvzpVuhy83z+SufjsuXEnKYn/95HdwY1a+q6nHxZ/lt7OlHp8aajNJympeeUnXOjYhO+Gmc8ypulzIXptba102RU7OLHl452t3C+8Gqbzj510E7K8XXWlKe/eI7apKUDJbfEnKYnz+ZHVzbnhnOqE0txsRoVO/HcOdDBJY1HNExa3BUtOmin1TfhRrdFGby5I5tqofXZGRW75fecE90z2tM1fLuwqHlxsTcqduK0/C4o4ZJLuWna1DoZFVs+Lucu1MMUS7kp3DkXR6Niq9Jl8HS31Ae/y7k53fXhoz4KOm3rF3j5pF54pp2sWanZUR8VXzlgvlNqOGtPn+pd1sOohMF3kaS/cjFt9Ux642lU7PkCzU8fF0rGU6XL6ud80GG+4OqLn0GDhb2QSZWSLzxRKQXVH8583ZY5vVvVX/hEJaD+7ovOvrBg+Q2f1t8DOHy58HeR+/DC8R39hk/znxPoAnPqo2YmLYcsVil+8bQFCHs8QbvDm8m+K0zVLfjmEwuQ+3e/V/DGvICjyv7jJ+ZEqAB2J58e+gzeB9c37jCET6ugPYgW2BULyu7fffF5BE8Q2r6riwFYZZ0Z7Ez0X3jnBz+lxSN4gnDiuzkYypX6jHDT5aHs/IM6gJ7BY6suU8Cq3yZRu4PD2v0nLZ9r2Zyqx5SeBmDbxxqs9MuFxcK2+y+6WZ2Mo2ExfwxjeuqAhUmXLoSddim3VLV3fvgpVYMg+iTm9MRScqUeMWGnag3c7F12/k2eoE5bBat6DM3P/N0KpUnfczNx2e0pheXAzbT7H1I+p33eskowfDiGhcKk2nVYiZVOv1dyQdO181/CBUhSVwwxNXc7xEK51672a7WOrlqt26/2yqWCF5qukki0AGdjOiTqQ/LpjIqSy2FOQ9rfCnmG7BJYNPLUxGLvDpAisWjEqamLxVvDy9OikVbNmS4Buh+gcoqrRSNwYxbVoJcfo9wWYNr2XNpd4OWFUdoCdErQNN3CM/Q8YnyOC9DuyoRA0SqfjhbN+F+OPjSJGJ+tRcvY3OYRKlrtQcQWzboAM9RFc66TyPHlLBaNzq1En2+xQ/hpCWZVylFbf2aLlj53PnInjF/k6gvuEJlpZrLSCdHrD7hDfMIVJgNBJwjtiPV3EQfw08OHDDVzQVHzZ1g7u/8DosOnS5EroDnIgeAO2PELkEDvoyLXIArg43q9CC3AQh+aDheYqCRoMKMKHYrTrQAV3KBJFBIUfkphrm7oFRS+qJhVmYQawKAmhObqlsJrEYUAE3OmSi+kEqoEMfxko5oYRgALEw6jzYaq3DM0V+L52EulzTVDlUKb8yODnQk3QIVjXs5Vc7gRB4cr835akB9geHA6YLApqqVliHBYeCIlIDZ/8z/QqlTFAEKoZWU/tH8uYlGtRzTlQMFWaof3f29shEfCgAiVQqEX8oqz0yUAoZLT4hZBNkOX/YnnnJErGsGYVriq1KplakQ8uiT2+p2o1BJ3aYg9Bc9UeULicSU8k+U4eBZZXdb6bS1VpyNWigVKMWawMFgtHjGzVeWy0+1Xn7cnk/IMrjyZ9J5X+91a0Ln4fyFo+wSnJAJiAAAAAElFTkSuQmCC',
                                              ),
                                            ))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Card(
                                              child: CachedNetworkImage(
                                                placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                                imageUrl:
                                                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/768px-2021_Facebook_icon.svg.png?20220821121039',
                                              ),
                                            ))),
                                    SizedBox(
                                      width: 10,
                                    ),

                                    // ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 470,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 70,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 50,
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  ' New Here? Register',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w100,
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.blue[600],
                                          ),
                                          child: OutlinedButton(
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 60,
                                              width: 120,
                                              child: Text(
                                                "Login",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 25),
                                              ),
                                            ),
                                            style: OutlinedButton.styleFrom(
                                              primary: Colors.white,
                                              side: BorderSide(
                                                color: Colors.white,
                                                width: 1,
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => homePage()),
                                              );
                                            },
                                          ),
                                        )),

                                    // ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
