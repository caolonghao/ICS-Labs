#include<cstdio>
#include<iomanip>
#include<iostream>
using namespace std;
int minusOne(void)
{
    return ~0;
}
int implication(int x, int y) {
    return !x|y;
}
int lowbit(int x)
{
    return x&(~x+1);
}
int rotateLeft(int x, int n) {
  return (x<<n) | (x>>32 + ~n + 1) & ~(~0 << n);
}
int conditiona(int x, int y, int z) {
  return   ( (!x + ~0)&y ) + ( ~(!x + ~0)&z );
}
int bang(int x) {
  x=(x>>16)|x;
  x=(x>>8)|x;
  x=(x>>4)|x;
  x=(x>>2)|x;
  x=(x>>1)|x;
  return ~x&1;
}
int oneMoreThan(int x, int y) {
  return !((x+1)^y);
}
int fitsBits(int x, int n) {
  int num=32 + ~n +1;
  return ! ( (x<<num>>num)^x );
}
int multFiveEighths(int x) {
  x=(x<<2)+x;
  x+=(x>>31)&7;
  return x>>3;
}
int satMul2(int x) {
  int a=x<<1;
  int mi=0x80000000;
  int tmax=0x7fffffff;
  int b=(a^x)&mi;
  b>>=31;
  return (~b&a)+(b& ( tmax + ( (x>>31)&1 ) ));
}
unsigned float_abs(unsigned uf) {
  unsigned a=(1<<31);
  unsigned b=a-1;
  return 0;
}
float change(unsigned *a)
{
    float *b=(float*)a;
  return *b;
}

int ilog2(int x) {
  int ans=0;
  int a=x>>16;
  int b=!!a;
  ans+=16&(b<<4);
  x>>=(b<<4);

  a=x>>8;
  b=!!a;
  ans+=8&(b<<3);
  x>>=(b<<3);

  a=x>>4;
  b=!!a;
  ans+=4&(b<<2);
  x>>=(b<<2);

  a=x>>2;
  b=!!a;
  ans+=2&(b<<1);
  x>>=(b<<1);

  a=x>>1;
  b=!!a;
  ans+=1&b;
  return ans;
}

int modThree(int x) {
    int judge;
    int tmp;
    int test=x>>31;
    int a=(1<<16)+~0;
    int ans;
    int bias;
    //change x into abs_x
    x=(test&(~x+1))+(~test&(x));
    tmp=x&a;
    tmp=( (x>>16)&a )+tmp;
    tmp+=(tmp>>16);
    x=tmp&a;
  //  cout<<"x="<<x<<endl;
    a>>=8;
    tmp=x&a;
    tmp=( (x>>8)&a )+tmp;
    tmp+=(tmp>>8);
    x=tmp&a;
 //   cout<<"x="<<x<<endl;
    a>>=4;
    tmp=x&a;
    tmp=( (x>>4)&a )+tmp;
    tmp+=(tmp>>4);
    x=tmp&a;
//    cout<<"x="<<x<<endl;
    a>>=2;
    tmp=x&a;
    tmp=( (x>>2)&a )+tmp;
    tmp+=(tmp>>2);
    x=tmp&a;
    judge=x^3;
//    cout<<"x="<<x<<endl;
    judge=!!judge;
    judge=judge<<31>>31;
    ans=x&judge;
    bias=~ans+1;
    ans=ans+(test&(bias<<1));
    return ans;
}
unsigned float_i2f(int x) {
  unsigned ans=0;
  unsigned tag=1u<<31;
  unsigned pos=32;
  unsigned exp=0;
  unsigned left=0;
  unsigned ed=(1u<<10)-1;
  unsigned judge=1u<<8;
  unsigned judge2=judge<<1;
  unsigned flag=0;
  tag=tag&x;
  if(!x)  return 0;
  if(tag) x=-x;
  left=x;
  while((1u<<(pos-1))>x&&pos>0)
  {
    pos--;
    left<<=1;
  }
  cout<<"pos="<<pos<<endl;
  left<<=1;
  exp=pos+126;
  ans=tag+(exp<<23);
  ed=ed&left;
  if(ed>judge&&ed<judge2) flag=1;
  else if(ed>=judge+judge2)  flag=1;
  left=left>>9;
  ans+=left+flag;
  return ans;
}
int float_f2i(unsigned uf) {
  unsigned  base=1<<31;
  unsigned  tag=base&uf;
  int tail=(1<<23)-1;
  int exp=(1<<8)-1;
  int ans=0;
  exp=(uf>>23)&exp;
  exp-=127;
//  cout<<"exp="<<exp<<endl;
  if(exp<0) return 0;
  if(tag&&exp==31) return tag;
  if(exp>30) return base;
  ans=tail&uf;
  ans+=tail+1;
 // cout<<"ans="<<ans<<endl;
  exp-=23;
  if(exp>0)ans<<=exp;
  else ans>>=-exp;
  if(tag) ans=-ans;
  return ans;
}
int main()
{
  cout<<float_f2i(0x7f7fffff);
}