// SPDX License-Identifier:MIT
pragma solidity >=0.6.0 <0.9.0;
contract basic{
    // data tytpe
uint a=10;
bool b;
uint num;
string name="helloe world";
uint  public count;
function increment() external   returns(uint){
uint c=a+5;
bool b =true;
return count++;

}
function decrement() external returns(uint){
uint timestamp = block.timestamp;
address caller = msg.sender;
return count--;

}
// read and writing

function get() external view returns(uint){
    return num;
}

function set(uint num_) external{
    num =  num_;
}
function ifelsee(uint num)external view returns(uint) {
if(num>10){
    num++;
}
else{
    return num--;
}
}
function table(uint n) external view returns(string memory){
if(n>0){
    n*2;
}else if(n>=0){
    n+2;
   // require("table no 2");
}
else{
    return "there is no table";
}
}

function forr(uint i, uint j) external view returns(uint){
uint a;
uint b;
address sender;

for(uint i =0;i<10;i++){

address sender= msg.sender;

if(j >0){
j++;
}
}

uint h;
while( h<5) {
h*2;

}
return a*i;
}

mapping(address=>uint) public mymap;
mapping(address=>mapping(address=>bool))public nested;
function map(address _add) external view returns(uint){
return mymap[_add];
}

function seeeet(address _addr, uint i) external  returns(uint){
i = 10;
return mymap[_addr] =i;
}

function seeet(address a, uint b_) external{
 //nested[a][b_];

}

function get(address aa, uint i_, bool boo) external view returns(bool){
   // return nested[aa][i_] = boo;
}

uint[] public arr;
uint[] public arr1=[1,2,3];

function getet(uint ii) external view returns(uint){
return arr[ii];

}

function getArr() external returns(uint[] memory){
    return arr;
}
function pussh(uint ii) external {
    arr.push(ii);
}

function poop( ) external{
    arr.pop();
}
function lengthh() external view returns(uint ){
    return arr.length;
}

function deletee(uint index)external{
delete arr[index];

}
uint[] arr3;
function remove(uint index ) external {

require(index > arr3.length,"array not found");
for(uint i=0; i<arr3.length;i++){
arr[i] = arr[i+ 3];
}
arr.pop();
}

enum transaction{ pending, cancelled, accepted}
transaction public tx;
function ss()external{
    tx = transaction.cancelled;
}

function pend() external {
 tx=transaction.pending;

}

struct Todo{
    string text;
    bool completed;
}
 // Todo public a;
 Todo[] public todos;

function create(string calldata _text) external {
todos.push(Todo(_text,false));

todos.push(Todo({text:_text,completed:true}));

}

function returnmany()external pure returns(uint x, bool b){
    return (1,true);
}

function assignedmany() external pure returns(uint a, bool y,uint b){

return (1, true, 10);
}

// view and pure
uint public q=1;
function addd(uint x) external view returns(uint){
    return q+x;
}
function ad(uint i, uint j) external pure returns(uint){
    return i+j;
}

// error
function how(uint i ) external{
require(i>10,"greter than ten");


}

function assertt(uint i) external{

assert(i ==0);
}
function rec(uint i) external{

    if(i<=10){
        revert("i is ngreater than 10");
    }
}

address public owner;
uint x=10;
constructor() public{

 owner = msg.sender;

}

// modifier
modifier onlyowner(){
 require(msg.sender ==owner,"not owner");
 _;
}

modifier bbb(address addrr){
    require(addrr !=address(0), "b is not equal tozero address");
_;
}

function A(address newowner)external  onlyowner{
  owner = newowner;


}
uint totalsupply;
mapping(address=>uint)  public balances;
event Transfer(address from, address to , uint anount);
  function transfer(address from, address to , uint amount )external {
require(from !=address(0),"from is not the zero address");
require(to !=address(0),"to is not the zero address");
uint balance =balances[from];
totalsupply +=amount;
balances[from] +=amount;
balances[to] +=amount;
emit Transfer(from,to,amount);

}









}