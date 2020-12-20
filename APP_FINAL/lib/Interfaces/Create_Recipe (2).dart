import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:interfaces/generated/l10n.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: AddRecipePage(),
      title: 'Flutter Intl Example',

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

class AddRecipePage extends StatefulWidget {
    _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String name = "", description = "";
  List<String> ingredientsList = [], stepsList = [];
  File photoFile;
  final nIngredientControler = TextEditingController();
  final nPasoController = TextEditingController();
  File imageFile;
  bool editing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Form(
        key: formKey,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.cyan[300],
                      Colors.cyan[800]
                    ],
                  )
              ),
              child: Image.asset(
                "assets/logo3.png",
                height: 200,
              ),
            ),
            SizedBox(
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: Colors.white),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.save),
                    onPressed: () {
                      _save(context);
                    },
                  )
                ],
              ),
              height: kToolbarHeight + 25,
            ),
            Center(
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 260, bottom: 20),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: ListView(children: <Widget>[
                    TextFormField(
                      initialValue: name,
                      decoration:
                      InputDecoration(labelText: S.of(context).createN_receta),
                      onSaved: (value) {
                        this.name = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return S.of(context).createLlenar;
                        }
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(S.of(context).createIngrediente),
                      trailing: FloatingActionButton(
                        heroTag: S.of(context).createU,
                        child: Icon(Icons.add),
                        onPressed: () {
                          _ingredientDialog(context);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    getIngredientsList(),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(S.of(context).createPasos),
                      trailing: FloatingActionButton(
                        heroTag: S.of(context).createD,
                        child: Icon(Icons.add),
                        onPressed: () {
                          _stepDialog(context);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    getStepsList(),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(

                    ),

                    RaisedButton(
                      color: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      textColor: Colors.white,
                      onPressed: (){
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(S.of(context).createEliminar),
                          ]
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getStepsList() {
    if (stepsList.length == 0) {
      return Text(
        S.of(context).createVacio,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey),
      );
    } else {
      return Column(
        children: List.generate(stepsList.length, (index) {
          final ingredient = stepsList[index];

        }),
      );
    }
  }

  Widget getIngredientsList() {
    if (ingredientsList.length == 0) {
      return Text(
        S.of(context).createVacio,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey),
      );
    } else {
      return Column(
        children: List.generate(ingredientsList.length, (index) {
          final ingredient = ingredientsList[index];

        }),
      );
    }
  }

  void _ingredientDialog(BuildContext context, {String ingredient, int index}) {
    final textController = TextEditingController(text: ingredient);
    final editing = ingredient != null;
    final onSave = () {
      final text = textController.text;
      if (text.isEmpty) {
        _showSnackBar(S.of(context).createN_vacio, backColor: Colors.orange);
      } else {
        setState(() {
          if (editing) {
            ingredientsList[index] = text;
          } else {
            ingredientsList.add(text);
          }
          Navigator.pop(context);
        });
      }
    };

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
                editing ? S.of(context).createEditar : S.of(context).createAgregar),
            content: TextField(
              controller: textController,
              decoration: InputDecoration(labelText: S.of(context).createIngrediente),
              onEditingComplete: onSave,
            ),
            actions: <Widget>[
              FlatButton(
                child: Text(S.of(context).createCancelar),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text(editing ? S.of(context).createActualizar : S.of(context).createGuardar),
                onPressed: onSave,
              ),
            ],
          );
        });
  }

  void _stepDialog(BuildContext context, {String step, int index}) {
    final textController = TextEditingController(text: step);
    final editing = step != null;
    final onSave = () {
      final text = textController.text;
      if (text.isEmpty) {
        _showSnackBar(S.of(context).createVacioP, backColor: Colors.orange);
      } else {
        setState(() {
          if (editing) {
            stepsList[index] = text;
          } else {
            stepsList.add(text);
          }
          Navigator.pop(context);
        });
      }
    };

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(editing ? S.of(context).createEditando : S.of(context).createAgregando_p),
            content: TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: S.of(context).createPasos,
              ),
              textInputAction: TextInputAction.newline,
              maxLines: 6,
              //onEditingComplete: onSave,
            ),
            actions: <Widget>[
              FlatButton(
                child: Text(S.of(context).createCancelar),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text(editing ? S.of(context).createActualizar : S.of(context).createGuardar),
                onPressed: onSave,
              ),
            ],
          );
        });
  }

  void _showSnackBar(String message, {Color backColor = Colors.black}) {
    scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backColor,
      ),
    );
  }

  void _onIngredientEdit(int index) {
    final ingredient = ingredientsList[index];
    _ingredientDialog(context, ingredient: ingredient, index: index);
  }

  void _onIngredientDelete(int index) {
    questionDialog(context, S.of(context).createC_ingrediente, () {
      setState(() {
        ingredientsList.removeAt(index);
      });
    });
  }

  void _onStepEdit(int index) {
    final step = stepsList[index];
    _stepDialog(context, step: step, index: index);
  }

  void _onStepDelete(int index) {
    questionDialog(context, S.of(context).createC_paso, () {
      setState(() {
        stepsList.removeAt(index);
      });
    });
  }

  void questionDialog(BuildContext context, String message, VoidCallback onOk) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text(S.of(context).createN),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text(S.of(context).createS),
                onPressed: () {
                  Navigator.pop(context);
                  onOk();
                },
              ),
            ],
          );
        });
  }

  void _save(BuildContext context) async {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      if (imageFile == null) {
        _showSnackBar(S.of(context).createImagen);
        return;
      }
      if (ingredientsList.length == 0) {
        _showSnackBar(S.of(context).createN_ingredientes);
        return;
      }
      if (stepsList.length == 0) {
        _showSnackBar(S.of(context).createNo_pasos);
        return;
      }
      }
    }
  }


