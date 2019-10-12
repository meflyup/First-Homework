import 'dart:html';
import 'dart:math';

void main() {
  querySelector('#output').text = 'Hello,你准备好了吗';
  querySelector('#button').onClick.listen(OnClickButton);
}


void OnClickButton(MouseEvent event){
   int maxVale=int.parse((querySelector('#EnterValue')  as InputElement).value);  
   int random=Random().nextInt(maxVale);
   if(random>0){
      querySelector('#output').text = 'Hello '+random.toString()+' 请你作答';
    }
  }