namespace Example5 {
    @EntryPoint()
    operation Example5() : Unit {
        use qubits = Qubit[5];
        H(qubits[0]);
        H(qubits[1]);
        H(qubits[2]);
        H(qubits[3]);
        Z(qubits[4]);
        let FirstLine = () => {
            Z(qubits[2]);
            X(qubits[4]);
        };
        Controlled FirstLine([qubits[0]], {});
        let SecondLine = () => {
            Z(qubits[0]);
            Y(qubits[4]);
        };
        Controlled SecondLine([qubits[1]], {});
        let ThirdLine = () => {
            Z(qubits[0]);
            Z(qubits[3]);
            Y(qubits[4]);
        };
        Controlled ThirdLine([qubits[2]], {});
        let FourthLine = () => {
            Z(qubits[1]);
            Z(qubits[2]);
            Y(qubits[4]);
        };
        Controlled FourthLine([qubits[3]], {});
        let FifthLine = () => {
            Z(qubits[0]);
            Z(qubits[1]);
            Z(qubits[2]);
        };
        Controlled FifthLine([qubits[4]], {});
        ResetAll(qubits);
    }
}
