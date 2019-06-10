import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobile/pages/home/provider_confirmation/address_selection_page.dart';
import 'package:mobile/utils/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rxdart/rxdart.dart';

class ProviderConfirmationPage extends StatelessWidget {
  final BehaviorSubject _loading$ = BehaviorSubject.seeded(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors["backgroundColor"],
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildHeader(context),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                  color: colors["backgroundColor"],
                  child: Container(
                    decoration: BoxDecoration(
                      color: colors["backgroundColor2"],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0, -50),
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                height: 100,
                                child: ClipRRect(
                                  borderRadius:
                                      new BorderRadius.circular(150.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://randomuser.me/api/portraits/men/77.jpg",
                                    placeholder: (context, url) =>
                                        new SpinKitWave(
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                    errorWidget: (context, url, error) =>
                                        new Icon(Icons.error),
                                  ),
                                ),
                              )),
                        ),
                        Transform.translate(
                          offset: Offset(0, 30),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: _buildButton(context)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 65),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Center(
                                    child: Text("Fulano de tal",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: colors["primaryColor"],
                                            fontWeight: FontWeight.bold))),
                              ),
                              Center(
                                child: Text("Encanador",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                child: Container(
                                  height: 3,
                                  color: colors["backgroundColor"],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxHeight: 150),
                                  child: ListView(
                                    children: <Widget>[
                                      Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 20.0),
                                child: Container(
                                  height: 3,
                                  color: colors["backgroundColor"],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Faixa de preço",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Image.asset(
                                      "assets/icons/coins.png",
                                      scale: 3.5,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Entre ",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "15",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: colors["primaryColor"]),
                                    ),
                                    Text(
                                      " e ",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "120",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: colors["primaryColor"]),
                                    ),
                                    Text(
                                      " créditos.",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )
                              // Row(
                              //   mainAxisSize: MainAxisSize.max,
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: <Widget>[
                              //     Padding(
                              //       padding:
                              //           EdgeInsets.symmetric(horizontal: 20),
                              //       child: Container(
                              //         height: 5,
                              //         color: colors["backgroundColor"],
                              //       ),
                              //     )
                              //   ],
                              // ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.09,
      color: colors["primaryColor"],
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Row(
              children: <Widget>[
                Icon(Icons.arrow_back),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Voltar",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Container _buildButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: colors["primaryColor"]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // _submitForm();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 200),
                    alignment: Alignment.center,
                    child: AddressSelectionPage()));
          },
          child: Container(
            width: 200,
            height: 60,
            child: StreamBuilder(
                stream: _loading$.stream,
                builder: (context, snapshot) {
                  return Center(
                      child: !snapshot.hasData || !snapshot.data
                          ? Text(
                              "Selecionar endereço",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : SpinKitWave(
                              color: Colors.white,
                              size: 20,
                            ));
                }),
          ),
        ),
      ),
    );
  }
}
