pragma circom 2.0.0;

template Multiplier2 () {  

   signal input a;
   signal input b;

   signal X;
   signal Y;

   signal output Q;

   component andGat = AND();
   component notGat = NOT();
   component orGat = OR();

   andGat.a <== a;
   andGat.b <== b;
   X <== andGat.out;

   notGat.in <== b;
   Y <== notGat.out;

   orGat.a <== X;
   orGat.b <== Y;
   Q <== orGat.out;

}

template OR(){
   signal input a;
   signal input b;
   signal output out;
   out <== a+b-a*b;
}

template NOT(){
   signal input in;
   signal output out;
   out <== 1+in-2*in;
}

template AND(){
   signal input a;
   signal input b;
   signal output out;
   out <== a*b;
}



component main = Multiplier2();