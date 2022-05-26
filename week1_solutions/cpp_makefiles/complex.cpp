#include<iostream>
using namespace std;
struct complex{
	int r, i;
} A,B;
struct complex add(){
	struct complex C;
	C.r = A.r + B.r;
	C.i = A.i + B.i;
	return C;
}
int main() {
	cout<<" Enter first complex number: ";
	cin>>A.r>>A.i;
	cout<<" Enter second complex number: ";
	cin>>B.r>>B.i;
	struct complex C = add();
	cout<<" Result: "<<C.r<<" "<<C.i<<"\n";
	return 0;
}
