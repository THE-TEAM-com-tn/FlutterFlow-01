import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? arText = '',
  }) =>
      [enText, frText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginPage
  {
    'z1uvpeps': {
      'en': 'Back to home',
      'ar': 'العودة إلى المنزل',
      'fr': 'De retour à la maison',
    },
    'kimnzqyq': {
      'en': 'Login into your account',
      'ar': 'تسجيل الدخول إلى حسابك',
      'fr': 'Connectez-vous à votre compte',
    },
    '28fyes4y': {
      'en': 'Welcome back! Please login to your account',
      'ar': 'مرحبًا بعودتك! يرجى تسجيل الدخول إلى حسابك',
      'fr': 'Content de te revoir! Veuillez vous connecter à votre compte',
    },
    '0s54qkg6': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    '8ygek6dx': {
      'en': '',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'h0x19a4h': {
      'en': 'Enter your email',
      'ar': 'أدخل بريدك الإلكتروني',
      'fr': 'Entrer votre Email',
    },
    'ko3oxwek': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    'sr6bvehr': {
      'en': '',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    'cjfleytj': {
      'en': '••••••••',
      'ar': '••••••••',
      'fr': '••••••••',
    },
    'xdrnifwk': {
      'en': 'Email is required.',
      'ar': 'البريد الالكتروني مطلوب.',
      'fr': 'Un e-mail est requis.',
    },
    'g4nnpa6p': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '0gdppg2s': {
      'en': 'Password is required.',
      'ar': 'كلمة المرور مطلوبة.',
      'fr': 'Mot de passe requis.',
    },
    'w764y7yv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'tqaajmpv': {
      'en': 'Remember me',
      'ar': 'تذكرنى',
      'fr': 'Souviens-toi de moi',
    },
    'zv00igl1': {
      'en': 'Forget password?',
      'ar': 'هل نسيت كلمة المرور؟',
      'fr': 'Mot de passe oublié?',
    },
    'ye8hbult': {
      'en': 'Log in',
      'ar': 'تسجيل الدخول',
      'fr': 'Se connecter',
    },
    'odyt0csk': {
      'en': 'or Sign up with',
      'ar': 'أو قم بالتسجيل باستخدام',
      'fr': 'ou Inscrivez-vous avec',
    },
    'w51qdvjs': {
      'en': 'Google',
      'ar': 'جوجل',
      'fr': 'Google',
    },
    'gw95xy1p': {
      'en': 'Not Registered yet ?  ',
      'ar': 'لم يتم تسجيلة بعد ؟',
      'fr': 'Pas encore inscrit ?',
    },
    'ifvhrz94': {
      'en': 'Create an account',
      'ar': 'إنشاء حساب',
      'fr': 'Créer un compte',
    },
    'lpdb3tc3': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // to_be_deleted_01
  {
    'g9aqmnxl': {
      'en': 'Works : ',
      'ar': 'يعمل :',
      'fr': 'Travaux :',
    },
    '6z5kgnld': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // RegisterPage
  {
    'ua2spu11': {
      'en': 'Back to home',
      'ar': 'العودة إلى المنزل',
      'fr': 'De retour à la maison',
    },
    'qimd7k5c': {
      'en': 'Create an account',
      'ar': 'إنشاء حساب',
      'fr': 'Créer un compte',
    },
    'fornutan': {
      'en': 'Welcome to the team! Please create your account',
      'ar': 'مرحبا بكم في الفريق! يرجى إنشاء حسابك',
      'fr': 'Bienvenue dans l\'équipe! Merci de créer votre compte',
    },
    'br1fvqi2': {
      'en': 'Firstname',
      'ar': 'الاسم الأول',
      'fr': 'Prénom',
    },
    'm72qpn5r': {
      'en': '',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'ysuuzq83': {
      'en': 'firstname',
      'ar': 'الاسم الأول',
      'fr': 'prénom',
    },
    'w3qs2idk': {
      'en': 'mouhib',
      'ar': 'موهيب',
      'fr': 'mouhib',
    },
    '15fqyofa': {
      'en': 'Lastname',
      'ar': 'اسم العائلة',
      'fr': 'Nom de famille',
    },
    '5tc9hhpj': {
      'en': '',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    '8p9a6s8g': {
      'en': 'lastname',
      'ar': 'اسم العائلة',
      'fr': 'nom de famille',
    },
    '1pow0za5': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'hrxylpey': {
      'en': '',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'njp9uozc': {
      'en': 'Enter your email',
      'ar': 'أدخل بريدك الإلكتروني',
      'fr': 'Entrer votre Email',
    },
    'h32dc4vd': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    '7c59nhuc': {
      'en': '',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    'f032jd13': {
      'en': '••••••••',
      'ar': '••••••••',
      'fr': '••••••••',
    },
    '7k2u7wsx': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
      'fr': 'Confirmez le mot de passe',
    },
    'rsd14946': {
      'en': '',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    'gqu4xb2j': {
      'en': '••••••••',
      'ar': '••••••••',
      'fr': '••••••••',
    },
    'wnnbqrmc': {
      'en': 'Email is required.',
      'ar': 'البريد الالكتروني مطلوب.',
      'fr': 'Un e-mail est requis.',
    },
    'xgiew8bn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'z6rvhb18': {
      'en': 'Password is required.',
      'ar': 'كلمة المرور مطلوبة.',
      'fr': 'Mot de passe requis.',
    },
    'dm2ruiv8': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'nqeck9ae': {
      'en': 'Register',
      'ar': 'يسجل',
      'fr': 'Registre',
    },
    'jvw8nw59': {
      'en': 'Already have an account?  ',
      'ar': 'هل لديك حساب؟',
      'fr': 'Vous avez déjà un compte?',
    },
    'j6spk7f9': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
      'fr': 'Se connecter',
    },
    'ler6xodd': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ForgetPasswordPage
  {
    'y6d0r2nn': {
      'en': 'Back to home',
      'ar': 'العودة إلى المنزل',
      'fr': 'De retour à la maison',
    },
    'o3uvh6bb': {
      'en': 'Forget password',
      'ar': 'نسيت كلمة المرور',
      'fr': 'Mot de passe oublié',
    },
    'ney0u5m6': {
      'en': 'We send a code to your email to verify your account',
      'ar': 'نرسل رمزًا إلى بريدك الإلكتروني للتحقق من حسابك',
      'fr': 'Nous envoyons un code à votre e-mail pour vérifier votre compte',
    },
    'fop5iud6': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'tpbre6ev': {
      'en': '',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    '4thmuh3j': {
      'en': 'Enter your email',
      'ar': 'أدخل بريدك الإلكتروني',
      'fr': 'Entrer votre Email',
    },
    '2qfm2con': {
      'en': 'Email is required.',
      'ar': 'البريد الالكتروني مطلوب.',
      'fr': 'Un e-mail est requis.',
    },
    'yb89lzmr': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'dyw1c3o1': {
      'en': 'Password is required.',
      'ar': 'كلمة المرور مطلوبة.',
      'fr': 'Mot de passe requis.',
    },
    'onpmdspf': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'o17mw3r8': {
      'en': 'Verify Account',
      'ar': 'التحقق من الحساب',
      'fr': 'vérifier le compte',
    },
    'mc855yvb': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // SideNav22
  {
    'w15u8mlh': {
      'en': 'The Team',
      'ar': 'الفريق',
      'fr': 'L\'équipe',
    },
    '1ptg52hn': {
      'en': 'Andrew T.',
      'ar': 'أندرو ت.',
      'fr': 'Andrew T.',
    },
    'x8d8nu3m': {
      'en': 'admin@gmail.com',
      'ar': 'admin@gmail.com',
      'fr': 'admin@gmail.com',
    },
    'ywwz65f4': {
      'en': 'Platform Navigation',
      'ar': 'التنقل في المنصة',
      'fr': 'Navigation sur la plateforme',
    },
    '26agikzk': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
      'fr': 'Tableau de bord',
    },
    'rh0bxbgy': {
      'en': 'Chats',
      'ar': 'الدردشات',
      'fr': 'Discussions',
    },
    'odhrc3px': {
      'en': 'Projects',
      'ar': 'المشاريع',
      'fr': 'Projets',
    },
    'l69z3hgr': {
      'en': 'Settings',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    '4uffw182': {
      'en': 'Notifications',
      'ar': 'إشعارات',
      'fr': 'Notifications',
    },
    '2596ou15': {
      'en': '12',
      'ar': '12',
      'fr': '12',
    },
    'jjj1l6b8': {
      'en': 'Billing',
      'ar': 'الفواتير',
      'fr': 'Facturation',
    },
    'ewij6608': {
      'en': 'Explore',
      'ar': 'يستكشف',
      'fr': 'Explorer',
    },
    'okk4b4m7': {
      'en': 'Light Mode',
      'ar': 'وضع الضوء',
      'fr': 'Mode lumière',
    },
    'z4iv99c1': {
      'en': 'Dark Mode',
      'ar': 'الوضع المظلم',
      'fr': 'Mode sombre',
    },
  },
  // Miscellaneous
  {
    'a94jux34': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'jydxxrex': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'y4ovbhs3': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '2899ikv1': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'y55f0qrq': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'xpnr6dd7': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '5ista6fc': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'rz7vv5do': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'oa6t62cd': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'etac82rb': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'd9vb3pab': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '0cmarmtt': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'd2qezuuk': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'v0hz1pq5': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'ab2vdn2w': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'inf9qtcd': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '4jt803q8': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'idmuarfx': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'thn8gz76': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'wx4grnqr': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '0rxo8fi4': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'wz5uhqut': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'kzi4gk76': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '4arps6xd': {
      'en': '',
      'ar': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
