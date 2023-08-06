import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

actor DBank {
  var currentValue = 300;
  currentValue := currentValue + 100;

  let id = 323245532355235;
// Debug.print(debug_show(currentValue));
// Debug.print(debug_show(id));

public func topUp(amount: Nat) {
  currentValue += amount;
  Debug.print(debug_show(currentValue));
};

public func withdraw(amount: Nat) {
  let temp: Int = currentValue - amount;
  if (temp >= 0) {
  currentValue -= amount;
  Debug.print(debug_show(currentValue));
  } else {
    Debug.print("Not enough money");
  };
};
}