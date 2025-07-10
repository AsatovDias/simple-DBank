import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 23131; // immutable when we declare with let   let == const(like in js)
  Debug.print(debug_show(id));

  public func topUp(amount: Nat){ // access only within this canister
    currentValue+=amount;
    Debug.print(debug_show(currentValue));
  }; // ; expects every func

  public func withDrawl(amount: Nat){
      currentValue-=amount;
      Debug.print(debug_show(currentValue));
  };
}

