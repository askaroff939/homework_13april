extension ExtString on String {
  String capitalizefirst() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String capitalize() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.capitalizefirst()).join(' ');
  String camelCase() {
    if (isEmpty) {
      return '';
    }
    final separatedWords =
    this.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\s_]+'));
    var newString = '';

    for (final word in separatedWords) {
      newString += word[0].toUpperCase() + word.substring(1).toLowerCase();
    }

    return newString[0].toLowerCase() + newString.substring(1);
  }
  bool hasMatch(String? value, String pattern) => (value == null) ? false : RegExp(pattern).hasMatch(value);
  bool isAlphabetOnly() => hasMatch(this, r'^[a-zA-Z]+$');
  bool isAudioFileName() {final ext = this.toLowerCase();
  return
    ext.endsWith(".mp3") ||
        ext.endsWith(".wav") ||
        ext.endsWith(".wma") ||
        ext.endsWith(".amr") ||
        ext.endsWith(".ogg");
  }
  bool isNull(String value) => this == null;
  bool isBool() {if (isNull(this)) {return false;} return (this == 'true' || this == 'false');}
  bool isEmail() => hasMatch(this, r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  bool isPalindrom() {
    final cleanString = this.toLowerCase().replaceAll(RegExp(r"\s+"), '').replaceAll(RegExp(r"[^0-9a-zA-Z]+"), "");
    for (var i = 0; i < cleanString.length; i++) {
      if (cleanString[i] != cleanString[cleanString.length - i - 1]) {
        return false;
      }
    }
    return true;
  }
  bool isURL() => hasMatch(this,r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$");
  bool isPhoneNumber() {
    if (this.length > 16 || this.length < 9) return false;
    return hasMatch(this, r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
  }
  bool isHexadecimal() => hasMatch(this, r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
}