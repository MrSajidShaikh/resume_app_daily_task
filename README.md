# List

List is collection of multiple values which can have multiple datatype.
List is an ordered collection of values, which contains index values to access it's inner attributes.
List have indexes like arrays.

Declaration of list.
 Syntax :  List variableName = [Values];

## Example

```bash

  void main() {
  
    List name = ["Sajid", "X", "Y", "Z"];

    print(name[0]);
}
```



## Length of list.

  ```bash
  void main() {
    List name = ["Ankit", "A", "B", "C"];
  
    print(name.length);
}

```
### To Add Element.
   
  void main() {
    List name = ["Sajid", "X", "Y", "Z"];
  
    print(name[0]);
  
    name.add(50);
  
    print(name);
}
```bash

### To add multiple values
   
void main() {
    List name = ["Sajid", "X", "Y", "Z"];
  
    print(name[0]);
  
    name.addAll(['Akhil', 40, 90]);
  
    print(name);
}

```

### To insrt value

```bash
   
void main() {
    List name = ["Sajid", "X", "Y", "Z"];

    print(name[0]);

    name.insert(2, 50);

    print(name);
}
```

### To insert multiple values

```bash
void main() {
    List name = ["Sajid", "X", "Y", "Z"];
  
    print(name[0]);
  
    name.insertAll(2, [1, 2, 3, 4]);
  
    print(name);
}
```

### To know index of any value
```bash
   
void main() {
    List name = ["Sajid", "X", "Y", "Z"];
  
    print(name[0]);
  
    int i = name.indexOf("Ravi");
  
    print(i);
}
```

### To remove value
```bash

  void main() {
    List name = ["Sajid", "X", "Y", "Z"];
  
    print(name[0]);
  
    name.remove("Y");
  
    print(name);
}
```

### To remove value with help of index

```bash

  void main() {
    List name = ["Sajid", "X", "Y", "Z"];
  
    print(name[0]);
  
    name.removeAt(3);
  
    print(name);
}
```

### To Reverse list
```bash
    
void main() {
    List name = ["Sajid", "X", "Y", "Z"];
  
    print(name[0]);
  
    print(name.reversed.toList());
}
````

### To Show Datatype

```bash

void main() {
    List name = ["Sajid", "X", "Y", "Z"];
  
    print(name[0]);
  
    print(name.runtimeType);
}

```

# Generics

Generics will be used to fix the datatype in the list.
fix any one data type in the collection data types.
it can be applied to either data types, value or both.
Example : List number = [10,20,30,40,50];

### Example

```bash
  
import 'dart:io';

  void main() {
    List <String> name = [];

    print("Enter number of Name : ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      print("Enter Name : ");
      String val = stdin.readLineSync()!;
      name.add(val);
    }

    print(name);
  }

```

# Map

Map is collection of values. Map is store data in key value pair. which can have different datatype.
Map can be created using '{}'.

Syntax :
```bash
  Map mapName = {
  key1 : value1, 
  key2 : value2, 
  ... 
  keyN : valueN, 
  };
```

### Example.
```bash

   void main() {
    Map emp = {
      'name': "Sajid",
      'age': 23,
      'per': 89.23,
      'salary': 24000,
    };
    
    emp.forEach((key, value) {
      print("${key} : ${value}");
    });
  }

```

### List of Map.
```bash


  void main() {
 
  List myData = [
    {
      'name': "Ravi",
      'age': 20,
      'per': 89.23,
      'salary': 15000,
    },
    {
      'name': "Dipesh",
      'age': 19,
      'per': 90.23,
      'salary': 17000,
    },
    {
      'name': "Sahil",
      'age': 18,
      'per': 98.23,
      'salary': 50000,
    }
  ];

  myData.forEach((e) {
    e.forEach((key, val) {
      print("${key} : ${val}");
    });
    print("");
  });
}

```

# Status Bar

### In Build Context (Globally) :

```bash

  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

```

 ### In AppBar :

```bash


  appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        toolbarHeight: 80,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.green
        )
      ),
```

#

<h3 align="center"> 1. EntryPage </h3>

###

<h1 align="left"></h1>

###
<div align="center">
<img src = "https://github.com/mrsajidshaikh/resume_app_daily_task/assets/149478269/1e94b5d3-1bf6-4add-ac61-184c3df192f5" width = 22% height = 35%>


#

<h3 align="center"> 2. LogInPage </h3>

###

<div align="center">
<img src = "https://github.com/mrsajidshaikh/resume_app_daily_task/assets/149478269/e5337b8f-f91e-461d-b397-4dfa2a260e08" width = 22% height = 35%>


<h1 align="left"></h1>

###


<h3 align="center"> 3. App </h3>

###

<div align="center">
<video src = "https://github.com/mrsajidshaikh/resume_app_daily_task/assets/149478269/7a6d5aaf-8637-45b5-b039-cae693ee2a7b">

###
