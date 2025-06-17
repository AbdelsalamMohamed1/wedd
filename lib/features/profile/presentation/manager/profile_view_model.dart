class ProfileViewModel {
  static hide(String data){
    int num=data.length;
    String secure = data.replaceRange(0, num, '*' * num); // here n=4
    return secure;
  }
}