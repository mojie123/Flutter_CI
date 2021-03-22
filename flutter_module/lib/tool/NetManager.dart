
import 'package:dio/dio.dart';

class NetManager{
  factory NetManager()=> _getInstance();
  static NetManager get instance=> _getInstance();
  static NetManager _instance;
  String headers;

  NetManager._initStatic(){
    //初始化
  }
  static NetManager _getInstance(){
    if(_instance == null){
      _instance = new NetManager._initStatic();
    }
    return _instance;

  }
  void login(String account,String password) async{
    print('账号 $account ,密码 $password');
//    channel = mobile;
//    "device_tokens" = "";
//    password = "VmFfz25PNlha9ZsggiIA9yKnlLBJzQL6RKWVOkrzjs3sZnKd/4Zn7f+8+dVXe21+2gNQwiss2osi+seA1/GegVoBJOu5gDK39kla9kfTK2ZBK/pwpS6zPXknSanQJtaOywhHrGHakDiQPSbdNHd7kIqUE5kP162mllyFaJ4LGX4=";
//    username = 13726264464;
//    channel = mobile;
//    "device_tokens" = "";
//    password = "CcqcEycGgwHGHxwJ0D+NTY+nZbBrpP+bw1AqJimgF4NspkIDh48aM65njkkDwJQSwX630EUknuxNtoj0fuo91O8+MpOuOkOuLgnecCMpzPkCeMslYfl0duBaeQN5Be+S7bLWW5PFsBNAQI88p1hgtBPMbmO4AZHYciVR1x3VJUM=";
//    username = 13726264464;
    Response response;
    Dio dio = Dio();

// 请求参数也可以通过对象传递，上面的代码等同于：
    response = await dio.post("http://39.108.83.56/oauth2-zt/notoken/jcmh/app/oauth/login",
        data: {"channel": "mobile","username":"13726264464","device_tokens":"", "password": "RQujQL715fko7Xmbr3d2Z5VJWZzwF+x9BChj5RwB/iA1zR6lUmPd0NPfcEBC0aLTthtQ1pJLGr/dscGWYpj76WjensTPM5aycQX8XbC5V1ElR1i0/Djha2z2bQ42XgHVOKw4QixYZYBa6cF4THd8ORVKtgFJhhHQAjHVTJmDBec="});
    print(response.data.toString());

    return ;
  }
}