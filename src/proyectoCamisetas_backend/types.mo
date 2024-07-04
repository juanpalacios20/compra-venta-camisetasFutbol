import Principal "mo:base/Principal";
import Text "mo:base/Text";
import Nat "mo:base/Nat";

module {
    public type Camisetas = {
        var id : Nat;
        var equipo : Text;
        var talla : Text;
        var edicion : Text;
        var precio : Float;
        var existencias : Nat;
    };
    public type Wallet = {
        var saldo : Float;
    };
    public type Usuario = {
        var id : Principal;
        var wallet : Wallet;
        var compras : [Camisetas];
        var loyaltyTokens : Float;
    };
    public type Recompensas = {
        var id : Nat;
        var nombre : Text;
        var costoTokens : Float;
    };

};
