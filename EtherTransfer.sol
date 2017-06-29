contract EtherTransfer{
  
address x;
address myAddress;

mapping (address => uint) balances;


function EtherTransfer(address receiver,uint bal)
{
 x=receiver;
 myAddress=this;
 balances[myAddress]=bal;
 balances[x]=0;
}
function moneyTransfer(uint money) returns(bool sufficient){
  
if (balances[myAddress] >= money) 
{
  balances[x]=balances[x]+money;
  balances[myAddress]= balances[myAddress]-money;
  return true;
}
return false;

}
function getBalace() constant returns(uint)
{
  
  return balances[myAddress];
  
}
function getBalaceReceiver() constant returns(uint)
{
  
  return balances[x];
  
}
    
}
