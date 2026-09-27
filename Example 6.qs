namespace Example6 {
    @EntryPoint()
    operation Example6() : Result {
        use qubits = Qubit[4];
        H(qubits[0]);
        H(qubits[1]);
        H(qubits[2]);
        X(qubits[3]);
        H(qubits[3]);
        CNOT(qubits[0], qubits[3]);
        H(qubits[0]);
        CNOT(qubits[1], qubits[3]);
        H(qubits[1]);
        CNOT(qubits[2], qubits[3]);
        H(qubits[2]);
        let m0 = M(qubits[0]);
        let m1 = M(qubits[1]);
        let m2 = M(qubits[2]);
        let m3 = M(qubits[3]);
        ResetAll(qubits);
        return m0;
        return m1;
        return m2;
        return m3;
    }
}
