// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `User`
  String get loginUs {
    return Intl.message(
      'User',
      name: 'loginUs',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginPass {
    return Intl.message(
      'Password',
      name: 'loginPass',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginInit {
    return Intl.message(
      'Login',
      name: 'loginInit',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get loginO {
    return Intl.message(
      'Or',
      name: 'loginO',
      desc: '',
      args: [],
    );
  }

  /// `Not registered?`
  String get loginNotR {
    return Intl.message(
      'Not registered?',
      name: 'loginNotR',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get loginResgis {
    return Intl.message(
      'Sign up',
      name: 'loginResgis',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get registerUs {
    return Intl.message(
      'User',
      name: 'registerUs',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get registerPass {
    return Intl.message(
      'Password',
      name: 'registerPass',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get registerCamp {
    return Intl.message(
      'This field is required',
      name: 'registerCamp',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get registerGen {
    return Intl.message(
      'Gender',
      name: 'registerGen',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get registerMas {
    return Intl.message(
      'Male',
      name: 'registerMas',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get registerFem {
    return Intl.message(
      'Female',
      name: 'registerFem',
      desc: '',
      args: [],
    );
  }

  /// `To register`
  String get registerButtom {
    return Intl.message(
      'To register',
      name: 'registerButtom',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get recoverCorrE {
    return Intl.message(
      'E-mail',
      name: 'recoverCorrE',
      desc: '',
      args: [],
    );
  }

  /// `Send mail`
  String get recoverEnvC {
    return Intl.message(
      'Send mail',
      name: 'recoverEnvC',
      desc: '',
      args: [],
    );
  }

  /// `Not registered?`
  String get recoverNoEstR {
    return Intl.message(
      'Not registered?',
      name: 'recoverNoEstR',
      desc: '',
      args: [],
    );
  }

  /// `Check in`
  String get recoverReg {
    return Intl.message(
      'Check in',
      name: 'recoverReg',
      desc: '',
      args: [],
    );
  }

  /// `Recipe name`
  String get createN_receta {
    return Intl.message(
      'Recipe name',
      name: 'createN_receta',
      desc: '',
      args: [],
    );
  }

  /// `Fill in this field`
  String get createLlenar {
    return Intl.message(
      'Fill in this field',
      name: 'createLlenar',
      desc: '',
      args: [],
    );
  }

  /// `one`
  String get createU {
    return Intl.message(
      'one',
      name: 'createU',
      desc: '',
      args: [],
    );
  }

  /// `two`
  String get createD {
    return Intl.message(
      'two',
      name: 'createD',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get createEliminar {
    return Intl.message(
      'Remove',
      name: 'createEliminar',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients steps`
  String get createP_ingrediente {
    return Intl.message(
      'Ingredients steps',
      name: 'createP_ingrediente',
      desc: '',
      args: [],
    );
  }

  /// `Steps`
  String get createPasos {
    return Intl.message(
      'Steps',
      name: 'createPasos',
      desc: '',
      args: [],
    );
  }

  /// `Empty list`
  String get createVacio {
    return Intl.message(
      'Empty list',
      name: 'createVacio',
      desc: '',
      args: [],
    );
  }

  /// `The name is empty`
  String get createN_vacio {
    return Intl.message(
      'The name is empty',
      name: 'createN_vacio',
      desc: '',
      args: [],
    );
  }

  /// `Editing ingredient`
  String get createEditar {
    return Intl.message(
      'Editing ingredient',
      name: 'createEditar',
      desc: '',
      args: [],
    );
  }

  /// `Adding ingredient`
  String get createAgregar {
    return Intl.message(
      'Adding ingredient',
      name: 'createAgregar',
      desc: '',
      args: [],
    );
  }

  /// `Ingredient`
  String get createIngrediente {
    return Intl.message(
      'Ingredient',
      name: 'createIngrediente',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get createCancelar {
    return Intl.message(
      'Cancel',
      name: 'createCancelar',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get createActualizar {
    return Intl.message(
      'Update',
      name: 'createActualizar',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get createGuardar {
    return Intl.message(
      'Save',
      name: 'createGuardar',
      desc: '',
      args: [],
    );
  }

  /// `Editing step`
  String get createEditando {
    return Intl.message(
      'Editing step',
      name: 'createEditando',
      desc: '',
      args: [],
    );
  }

  /// `Adding step`
  String get createAgregando_p {
    return Intl.message(
      'Adding step',
      name: 'createAgregando_p',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove ingredient?`
  String get createC_ingrediente {
    return Intl.message(
      'Are you sure you want to remove ingredient?',
      name: 'createC_ingrediente',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove step?`
  String get createC_paso {
    return Intl.message(
      'Are you sure you want to remove step?',
      name: 'createC_paso',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get createN {
    return Intl.message(
      'No',
      name: 'createN',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get createS {
    return Intl.message(
      'Yes',
      name: 'createS',
      desc: '',
      args: [],
    );
  }

  /// `The image is empty`
  String get createImagen {
    return Intl.message(
      'The image is empty',
      name: 'createImagen',
      desc: '',
      args: [],
    );
  }

  /// `Has no ingredients`
  String get createN_ingredientes {
    return Intl.message(
      'Has no ingredients',
      name: 'createN_ingredientes',
      desc: '',
      args: [],
    );
  }

  /// `Has no steps`
  String get createNo_pasos {
    return Intl.message(
      'Has no steps',
      name: 'createNo_pasos',
      desc: '',
      args: [],
    );
  }

  /// `this step is empty`
  String get createVacioP {
    return Intl.message(
      'this step is empty',
      name: 'createVacioP',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get menuLogin {
    return Intl.message(
      'Login',
      name: 'menuLogin',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get menuRegister {
    return Intl.message(
      'Register',
      name: 'menuRegister',
      desc: '',
      args: [],
    );
  }

  /// `CRUD`
  String get menuCRUD {
    return Intl.message(
      'CRUD',
      name: 'menuCRUD',
      desc: '',
      args: [],
    );
  }

  /// `Recover account`
  String get menuRecovery {
    return Intl.message(
      'Recover account',
      name: 'menuRecovery',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'PE'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}