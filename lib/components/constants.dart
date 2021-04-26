import 'package:flutter/material.dart';

var kCartProducts = [
  {
    "name": "Lehenga",
    "picture": "images/lehenga1.jpeg",
    "price": 3500,
    "quantity": 2,
    "size": "M",
    "color": "Red",
  },
];

var kOrderProducts = [
  {
    "name": "Lehenga 1",
    "picture": "images/lehenga1.jpeg",
    "price": 3500,
    "size": "M",
    "color": "Red",
  },
];

var kMyOrderProducts = [
  {
    "name": "Lehenga 1",
    "picture": "images/lehenga1.jpeg",
    "price": 3500,
    "size": "M",
    "color": "Red",
  },
];

var kCategoryList = [
  {
    "name": "Bridal Wears",
    "picture": "images/bridalcat.jpg",
  },
  {
    "name": "Casual Wears",
    "picture": "images/casualcat.jpeg",
  },
  {
    "name": "Party Wears",
    "picture": "images/partycat4.jpeg",
  },
  {
    "name": "Kids Wear",
    "picture": "images/kidscat2.jpg",
  },
  {
    "name": "Daily Wears",
    "picture": "images/dailycat2.jpg",
  },
  {
    "name": "Sarees",
    "picture": "images/sareecat.jpg",
  },
  {
    "name": "Churidars",
    "picture": "images/churidarcat.jpg",
  },
  {
    "name": "Anarkali",
    "picture": "images/anarkalicat.jpg",
  },
  {
    "name": "Lehenga",
    "picture": "images/lehengacat.jpg",
  },
  {
    "name": "Kurta",
    "picture": "images/kurtacat.jpg",
  },
];
var kProductList = [
  {
    "name": "Lehengaa",
    "picture": "images/lehenga1.jpeg",
    "old_price": 7000,
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
    "material": "Silk",
  },
  {
    "name": "Lehenga 2",
    "picture": "images/carousel1.jpg",
    "old_price": 7000,
    "price": 3500,
    "discount": 20,
    "material": "Silk",
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Bridal 1",
    "picture": "images/bridalcategory.jpeg",
    "old_price": 7000,
    "material": "Silk",
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Bridal 2",
    "picture": "images/bridal2.jpeg",
    "old_price": 7000,
    "material": "Silk",
    "discount": 50,
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Lehenga 1",
    "picture": "images/lehenga1.jpeg",
    "old_price": 7000,
    "material": "Silk",
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Lehenga 2",
    "picture": "images/lehenga2.jpeg",
    "old_price": 7000,
    "material": "Silk",
    "discount": 50,
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Bridal 1",
    "picture": "images/bridal1.jpeg",
    "old_price": 7000,
    "material": "Silk",
    "discount": 50,
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Bridal 2",
    "picture": "images/bridal2.jpeg",
    "old_price": 7000,
    "material": "Silk",
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Lehenga 1",
    "picture": "images/lehenga1.jpeg",
    "old_price": 7000,
    "material": "Silk",
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Lehenga 2",
    "picture": "images/lehenga2.jpeg",
    "old_price": 7000,
    "discount": 50,
    "material": "Silk",
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Bridal 1",
    "picture": "images/bridal1.jpeg",
    "old_price": 7000,
    "price": 3500,
    "material": "Silk",
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
  {
    "name": "Bridal 2",
    "picture": "images/bridal2.jpeg",
    "old_price": 7000,
    "discount": 50,
    "material": "Silk",
    "price": 3500,
    "discrip":
        "gjjdbjhffcjbbjjshgvb vivhbgvijhbfvjsbdijsdbdkv sodjgvskjdgbvisjdbgjgbgi jsigjid sjgbij sijgis jbgijsbdigjsigbisjdgi jsbidgjb isjgisjdgijsd ig saigjdh isjdgi jsbdgi jsijgb sijdgbi sjdbgi sjgijsbigjb sidjgbi sjbgijs bidjgisjdfgiusijdgisjdbigjsdf",
  },
];

const kSearchInputDecoration = InputDecoration(
  isDense: true,
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.search,
    color: Colors.grey,
  ),
  hintText: "Search for your Designs",
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  contentPadding: EdgeInsets.only(
    top: 20.0,
    left: 10.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kDefaultBorderRadius = BorderRadius.all(
  Radius.circular(20.0),
);

const kOurThemeColor = Color(0xFF626ABB);

var kHomeAppBar = AppBar(
  elevation: 0.5,
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
  centerTitle: true,
  backgroundColor: Color(0xFFFFFFFF),
  title: Text(
    "Allure Designs",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 30.0,
      fontFamily: "Sacramento",
      letterSpacing: 1.0,
    ),
  ),
  actions: [
    IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
  ],
);

const kAppBarTitleStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 23.0,
  fontFamily: "Raleway",
  letterSpacing: 1.0,
);

const kAppBarIconTheme = IconThemeData(
  color: Colors.black,
);
