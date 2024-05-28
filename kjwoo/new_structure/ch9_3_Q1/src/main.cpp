//N 번째 피보나치 수를 나타내는 TMP 를 만들어보세요.
// 참고로 피보나치 수는, N 번째 항이 N - 1 번째 항과 N - 2 번째 항의 합으로 정의되는 수 입니다. 
//참고로 1, 1, 2, 3, 5, ... 로 진행됩니다.(난이도 : 하)
#include<iostream>
template <int N>
struct fib{
    static const int result = fib<N-1>::result + fib<N-2>::result;
};
template <>
struct fib<1>{
    static const int result = 1;
};
template<>
struct fib<2>{
    static const int result = 1;
};
int main() {
  std::cout << "5 번째 피보나치 수 :: " << fib<5>::result << std::endl;  // 5
}