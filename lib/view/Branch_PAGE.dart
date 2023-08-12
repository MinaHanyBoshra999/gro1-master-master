import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/Branches_WIDGET.dart';
import 'Branch_PAGE.dart';


class BranchPage extends StatelessWidget {
  const BranchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff241468),
        title: const Text('تطبيق خاص بالبائع',style: TextStyle(
          fontFamily: 'Alexandria'

        ),),
        centerTitle: true,
      ),
      body: Padding(

        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('اختار الفرع',style: TextStyle(fontFamily: 'Alexandria',color:Colors.blue,fontSize: 22),),
              ],
            ),
            SizedBox(height: 20,),
            BranchWidget(
              cref3: FirebaseFirestore.instance.collection('users'),
              CrefBranchFried: FirebaseFirestore.instance
                  .collection('HosaryShopItems')
                  .doc('FriedItems')
                  .collection('FriedItemsList') ,
              CrefBranchRaw:  FirebaseFirestore.instance
                  .collection('HosaryShopItems')
                  .doc('RawItems')
                  .collection('RawItemsList'),
              CrefstreamBranchSauces: FirebaseFirestore.instance
                  .collection('HosaryShopItems')
                  .doc('SauceItems')
                  .collection('SauceItemsList'),
              deleteRef: FirebaseFirestore.instance.collection('HosaryOrders'),
              streamBranch: FirebaseFirestore.instance
                  .collection('HosaryShopItems')
                  .snapshots(),
              branchName: 'Hosary',
              cref2: FirebaseFirestore.instance.collection('HosaryShopItems'),
              name: 'Orders',
              name2: 'shop',
              streamBranchOrders: FirebaseFirestore.instance
                  .collection('HosaryOrders')
                  .snapshots(),
              streamBranchRaw: FirebaseFirestore.instance
                  .collection('HosaryShopItems')
                  .doc('RawItems')
                  .collection('RawItemsList')
                  .snapshots(),
              streamBranchFried: FirebaseFirestore.instance
                  .collection('HosaryShopItems')
                  .doc('FriedItems')
                  .collection('FriedItemsList')
                  .snapshots(),
              streamBranchSauces: FirebaseFirestore.instance
                  .collection('HosaryShopItems')
                  .doc('SauceItems')
                  .collection('SauceItemsList')
                  .snapshots(),
            ),
            const SizedBox(
              height: 10,
            ),
            BranchWidget(
              cref3: FirebaseFirestore.instance.collection('users'),
              CrefstreamBranchSauces:FirebaseFirestore.instance
                  .collection('MohandseenShopItems')
                  .doc('SaucesItems')
                  .collection('SauceItemsList') ,
              CrefBranchRaw:FirebaseFirestore.instance
                  .collection('MohandseenShopItems')
                  .doc('RawItems')
                  .collection('RawItemsList') ,
              CrefBranchFried: FirebaseFirestore.instance
                  .collection('MohandseenShopItems')
                  .doc('FriedItems')
                  .collection('FriedItemsList') ,
              deleteRef:FirebaseFirestore.instance.collection('MohandseenOrders') ,
              streamBranch: FirebaseFirestore.instance
                  .collection('MohandseenShopItems')
                  .snapshots(),
              branchName: 'Mohandseen',
              cref2:
                  FirebaseFirestore.instance.collection('MohandseenShopItems'),
              name: 'Orders',
              name2: 'shop',
              streamBranchOrders: FirebaseFirestore.instance
                  .collection('MohandseenOrders')
                  .snapshots(),
              streamBranchRaw: FirebaseFirestore.instance
                  .collection('MohandseenShopItems')
                  .doc('RawItems')
                  .collection('RawItemsList')
                  .snapshots(),
              streamBranchFried: FirebaseFirestore.instance
                  .collection('MohandseenShopItems')
                  .doc('FriedItems')
                  .collection('FriedItemsList')
                  .snapshots(),
              streamBranchSauces: FirebaseFirestore.instance
                  .collection('MohandseenShopItems')
                  .doc('SaucesItems')
                  .collection('SauceItemsList')
                  .snapshots(),
            ),
          ],
        ),
      ),
    );
  }
}
