import 'package:catelogapp/widgets/add_to_cart.dart';
import 'package:catelogapp/widgets/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:velocity_x/velocity_x.dart";

import '../Models/catelog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: context.canvasColor,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.mH8,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(
                catalog: catalog,
              ).wh(120, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Column(
              children: [
                Hero(
                  tag: Key(catalog.id.toString()),
                  child: catalog.Image,
                ).h32(context),
                Expanded(
                  child: VxArc(
                    height: 20,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      color: context.cardColor,
                      width: context.screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          children: [
                            Text(catalog.name,
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    color: context.accentColor,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontSize: 32)),
                            Text(catalog.dec,
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    color: context.accentColor,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontSize: 13)),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                  "Et accusam et nonumy sit aliquyam ipsum magna gubergren. Sit vero sea et vero sed eos. Est ipsum magna eos eos nonumy est, labore nonumy et tempor stet dolor consetetur eos, diam dolore et no sit no, sit labore sadipscing takimata et sed. Est amet sed dolore amet dolor.",
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily,
                                      fontSize: 13)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
