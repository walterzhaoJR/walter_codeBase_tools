#include "my_string.h"

using namespace my_string;

int main()
{
  String str1;//test for default construct
  String str2((char*)"walter");//test for dafault construct
  //String str3(str2);//test fro copy construct
  str1 = str2;
  cout << "my str1:" << str1 << endl;
  cout << "finish" << endl;

  return 0;
}
