#include <bits/stdc++.h>
using namespace std;

#ifdef LOCAL
  #define dbg(x) cerr << #x << " = " << (x) << '\n'
#else
  #define dbg(x)
#endif

using ll = long long;
using vi = vector<int>;
using pii = pair<int, int>;

const int MOD = 1e9 + 7;

int add(int a, int b) { return (a + b) % MOD; }
int sub(int a, int b) { return (a - b + MOD) % MOD; }
int mul(int a, int b) { return (1LL * a * b) % MOD; }
int binpow(int a, int b) {
  int res = 1;
  while (b) {
    if (b & 1) res = mul(res, a);
    a = mul(a, a);
    b >>= 1;
  }
  return res;
}

void solve() {

}

int main() {
  ios_base::sync_with_stdio(false);
  cin.tie(nullptr);
  int t = 1;
  cin >> t;
  while (t--) {
    solve();
  }
  return 0;
}
