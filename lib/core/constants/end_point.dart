class EndPointConstant {
  //Factory constructor, use the factory keyword when you need the constructor to not create a new object each time.
  factory EndPointConstant() => _instance;

  //Internal constructor
  EndPointConstant._internal();
  static final EndPointConstant _instance = EndPointConstant._internal();

  late String loginGoogleUrl,
      loginAppleUrl,
      signUpUrl,
      passwordResetUrl,
      otpVerificationUrl,
      otpSendUrl,
      refreshTokenUrl,
      verifyTokenUrl;

  late Map<String, dynamic> baseHeader;

  Future<void> init() async {
    _collectionOfApi(baseUrl: 'url', apiVersion: 'api/v1');
  }

  void _collectionOfApi({required String baseUrl, required String apiVersion}) {
    signUpUrl = '$baseUrl/$apiVersion/auth/register/';
    loginGoogleUrl = '$baseUrl/$apiVersion/users/google/login/';
    loginAppleUrl = '$baseUrl/$apiVersion/users/apple/login/';
    passwordResetUrl = '$baseUrl/$apiVersion/auth/password-reset/';
    otpVerificationUrl = '$baseUrl/$apiVersion/users/otp/verify/';
    otpSendUrl = '$baseUrl/$apiVersion/users/otp/send/';
    refreshTokenUrl = '$baseUrl/$apiVersion/users/token/refresh/';
    verifyTokenUrl = '$baseUrl/$apiVersion/users/token/verify/';
  }
}
