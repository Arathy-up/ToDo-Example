import 'package:flutter/material.dart';
class ToDoAppEg extends StatefulWidget {
  @override
  _ToDoAppEgState createState() => _ToDoAppEgState();
}

class _ToDoAppEgState extends State<ToDoAppEg> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();

  var book=[];
  var author=[];
  var price=[];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: t1,
            decoration: InputDecoration(
              hintText: "Enter the book Name",
              prefixIcon: Icon(Icons.book),
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(25)
              ),

            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            controller: t2,
            decoration: InputDecoration(
              hintText: "Enter the Author Name",
              prefixIcon: Icon(Icons.person),
              border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
              ),

            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            controller: t3,
            decoration: InputDecoration(
              hintText: "Enter the Price",
              prefixIcon: Icon(Icons.monetization_on),
              border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
              ),

            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            var bookvar=t1.text;
            var authorvar=t2.text;
            var pricevar=t3.text;
            setState(() {
              book.add(bookvar);
              author.add(authorvar);
              price.add(pricevar);

            });

          },
          child: Text("Submit"),),
          ListView.builder(
            shrinkWrap: true,
            itemCount: book.length==null? 0: book.length,
              itemBuilder: (context,index){
            return Card(
              elevation: 2.0,
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text("Book:"+book[index]),
                subtitle: Text("Author:"+author[index]+"\n"+"Price:"+price[index]),
                trailing: GestureDetector(
                  onTap: (){
                    setState(() {
                      book.removeAt(index);
                      author.removeAt(index);
                      price.removeAt(index);
                    });
                  },
                    child: Icon(Icons.delete)),
              ),
            );
          }),
        ],
      ),
    );
  }
}
