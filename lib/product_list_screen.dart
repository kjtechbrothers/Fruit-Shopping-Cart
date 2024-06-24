
import 'package:flutter/material.dart';
class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName=['Mango','Orange','Grapes','Banana','Cherry','Peach','StrawBerry','Red Berry','Blue Berry','Mixed Fruit Basket'];
  List<String> productUnit=['KG','Dozen','KG','Dozen','KG','KG','KG','KG','KG','KG'];
  List<int> productPrice=[150,100,250,80,300,200,70,150,90,1500];
  List<String> productImage=[
    'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
    'https://image.shutterstock.com/image-photo/orange-fruit-slices-leaves-isolated-600w-1386912362.jpg' ,
    'https://image.shutterstock.com/image-photo/green-grape-leaves-isolated-on-600w-533487490.jpg' ,
    'https://media.istockphoto.com/id/1291262112/photo/banana.jpg?s=1024x1024&w=is&k=20&c=bncXB5lxxXAUESs2o7ere02ravpiacIVLNmvh7yaFoM=',
    'https://media.istockphoto.com/id/181099124/photo/a-pile-of-cherries-with-leaves-attached.jpg?s=1024x1024&w=is&k=20&c=F08t7VYEhGPrTTwschSXifH8mo7MpzuZ8LUswzyc4sE=' ,
    'https://media.istockphoto.com/id/1151868959/photo/single-whole-peach-fruit-with-leaf-and-slice-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=zLb--kmGvSTUkjgSwVXForXx1C3WRSjGN77rXm_y6XM=',
    'https://media.istockphoto.com/id/1412854156/photo/strawberries-isolated-strawberry-whole-and-a-half-on-white-background-strawberry-slice-with.jpg?s=1024x1024&w=is&k=20&c=bv9U6hNHbxbR9D_CdhmeBN9pmZDf3nc5tiFsoHPHTuk=',
    'https://media.istockphoto.com/id/1155111778/photo/raspberry-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=3BMzvRTNIFq-ik34XqaBe50ke1GzvEJZrFK9h-nD-OY=',
    'https://media.istockphoto.com/id/1248120812/photo/fresh-blueberries-isolated-on-white-background-top-vew.jpg?s=1024x1024&w=is&k=20&c=ENmoihw2_KubbrKUCNBsQKV0eSrtDc_9X_qkoOAxddg=',
    'https://media.istockphoto.com/id/481194973/photo/fruit-pile-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=9-fvhFO2sLPQ2mxMM1GN5wviUPj-XciFYw_X7zPeoHQ=' ,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:const Text('Fruit Shopping Cart',style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productName.length,
                  itemBuilder:(context , index){
                    return InkWell(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(content: Center(
                           child: Text(productName[index].toString(),style:
                             const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                             fontSize: 20),),
                         ),
                           duration:const Duration(seconds: 1),),
                        );
                      },
                      child: Card(
                        color: Colors.green,
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image(
                                      height: 100,
                                      width: 100,
                                      image: NetworkImage(productImage[index].toString())),
                                  const SizedBox(width: 20,),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(productName[index].toString(),
                                          style:const TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                        const SizedBox(height: 35,),
                                        Row(
                                          children: [
                                            Text(productUnit[index].toString(),style:const TextStyle(
                                              fontWeight: FontWeight.w500,fontSize: 18
                                            ),),
                                            const SizedBox(width: 10,),
                                            Text(r"$"+productPrice[index].toString(),style:const TextStyle(
                                                fontWeight: FontWeight.w500,fontSize: 18
                                            ),),


                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],

                              ),


                            ],
                          ),
                        ) ,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
