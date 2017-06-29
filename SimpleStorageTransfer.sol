contract SimpleStorageTransfer {

    uint public storedData1;
    uint public storedData2;

    event Change(string message, uint val1,uint val2);

    function SimpleStorage(uint initVal1,uint initVal2) {
        Change("initialized", initVal1,initVal2);
        storedData1= initVal1;
         storedData2= initVal2;
    }
   

    function set(uint x,uint y) {
        Change("set", x,y);
        storedData1 = x;
        storedData2 = y;
    }

    function getA() constant returns (uint retVal) {
        return storedData1;
    }
    function getB() constant returns (uint retVal) {
        return storedData2;
    }
    function transfer(uint src, uint dest,uint unit)  {
       Change("transfer", src,dest);
      if( src==1 && storedData1>= unit)
      {
        storedData1=storedData1-unit;
        storedData2=storedData2+unit;
      
      }
      else if(storedData2>=unit)
      {
        storedData2=storedData2-unit;
        storedData1=storedData1+unit;
      }
       
    }
}
