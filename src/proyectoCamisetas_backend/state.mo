import Principal "mo:base/Principal";
import Types "types";
import HashMap "mo:base/HashMap";
import Array "mo:base/Array";
module {

    public type State = {
        var usuariosData : [(Principal, Types.Usuario)];
        var usuarios : HashMap.HashMap<Principal, Types.Usuario>;
    };

    public func new() : State {
        return {
            var usuariosData = [];
            var usuarios = HashMap.HashMap<Principal, Types.Usuario>(
                10, // Tamaño inicial
                Principal.equal, // Función de igualdad
                Principal.hash // Función hash
            );
        };
    };

    public func init(state : State) {
        for ((key, value) in state.usuariosData.vals()) {
            state.usuarios.put(key, value);
        };
    };

    public func saveState(state : State) {
        var newUsuariosData : [(Principal, Types.Usuario)] = [];
        for ((key, value) in state.usuarios.entries()) {
            newUsuariosData := Array.append(newUsuariosData, [(key, value)]);
        };
        state.usuariosData := newUsuariosData;
    };
};
