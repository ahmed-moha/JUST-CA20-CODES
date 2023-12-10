import 'package:ca_208/components/abwaan_model.dart';
import 'package:ca_208/components/lesson_eleven_detial_screen.dart';
import 'package:flutter/material.dart';

class LessonEleven extends StatelessWidget {
  LessonEleven({super.key});

  List<AbwaanModel> abwaano = [
    AbwaanModel(
        id: "1",
        name: "Raage ugaas",
        description:
            "Raage Ugaas Warfaa wuxuu ahaa hogaamiye, gabayaa, halabuur, dagaalyahan Soomaaliyeed kaasi oo noolaa wakhti lagu qiyaaso bilawgii Qarnigii 18aad. 	Raage Ugaas wuxuu ku dhashay ceelka Sasabane, meel u dhow magaalada Dhagaxbuur, Gobolka Soomaali Galbeed.",
        image: "assets/raage.jpeg"),
    AbwaanModel(
        id: "2",
        name: "Sayid Maxamed Cabdile Xasan",
        description:
            "Sayid Maxamed wuxuu ka mid yahay abwaannada waaweyn ee taariikhda Soomaalida meel ka galay. Taasna waxaa u aqoonsan dadkiisa iyo dadyowga 	kale markay u sugnaatay inuu ahaa geesi waddani ah, gabyaa aftahan ah, buuni cilmi leh, siyaasi xirribbo badan. Intaaba waxaa marag u ah gabayadiisii 	jaad walba leh, waxaana garan kara qofkii murtidiisa dhuuxa marka laga eego xagga suugaanta, siyaasadda, wadaninnimada iyo aftahannimada ku jirta.",
        image: "assets/sayid.jpeg"),
    AbwaanModel(
        id: "3",
        name: "Abwan Sangub",
        description:
            "Waa abwaan soomaaliyeed oo leh halabuur dhinacyo badan leh. Taariikh-Faneedka Abwaan Maxamuud C/laahi Ciise “Sangub” Maxamuud Cabdilaahi 	Ciise (Sangub), wuxuu ka mid yahay abwaanada ugu horeeya hal-abuurka Soomaalida, waana nin dad badani ku xusuustaan kaalinta uu ka qaatay 	Kobcinta Suugaanta Soomaaliyeed, hase yeeshee, waxaa dhici karta in dad badan oo maanta nooli aanay isu aqoon Sangub iyo Fankiisa. Bal aanu isku 	dayno in aynu Wax ka sheegno, taariikh-faneedka Sangub: Maxamuud Cabdillaahi Ciise (Sangub), wuxuu ku dhashay baadiyaha magaalada dhagaxbuur 	dhulka Is-maamulka deegaanka Soomaalida Itoobiya, sannadkii 1944, halkaas oo uu ku barbaaray. Sangub markii da’diisu shan jir gaartay ayuu ku 	bilaabmay u hilowga fanku. Dhalinyaranimadiisii, wuxuu ku soo caan baxay ciyaaraha dhaqanka, gaar ahaan ciyaarta “Dhaantada” oo ah mid markuu 	gacanta u qaado aan cidina uga daba dabadii yeerin.",
        image: "assets/sangub.jpeg"),
    AbwaanModel(
        id: "4",
        name: "Qamaan bulxan",
        description:
            "Qamaan wuxuu dhashay 1857dii—Gugii Gobeysane la baxay. Sidaan dhawr nin oo qoyska ah ka dheegtay, kana qiyaas qaatay ragii ay wada gabyeen 	da’aadooda. Wuxuu ku dhashay tuulada la dhaho Tayin, oo ka mid ah Ceelasha Goglo Seereeya, Qoraxay; Qabridahare ayay 55 Km ka xigtaa Koonfur-	bari..",
        image: "assets/qamaan.jpeg")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Abwaan App"),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: abwaano.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailScreen(abwan: abwaano[index]),
                        ),
                      );
                    },
                    leading: SizedBox(
                      width: 100,
                      height: 100,
                      child: Hero(
                        tag:abwaano[index].id! ,
                        child: Image.asset(
                          abwaano[index].image ?? "",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(abwaano[index].name ?? ""),
                    subtitle: Text(
                      abwaano[index].description ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
            ),
          ),

          // ElevatedButton(
          //   onPressed: () async {
          //     print("Ahmed");
          //     // print("cali");
          //     await Future.delayed(const Duration(seconds: 2), () {
          //       print("Cali");
          //     });
          //     print("Hassan");
          //   },
          //   child: const Text("Click Me"),
          // ),
        ],
      ),
    );
  }
}
