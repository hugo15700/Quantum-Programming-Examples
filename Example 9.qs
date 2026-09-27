namespace Example9 {
    @EntryPoint()
    operation Example9() : Result {
        use qubits = Qubit[3];
        H(qubits[0]);
        X(qubits[1]);
        H(qubits[2]);
        H(qubits[1]);
        CNOT(qubits[0], qubits[1]);
        let r0 = M(qubits[0]);
        let r1 = M(qubits[1]);
        let r2 = M(qubits[2]);
        ResetAll(qubits);
        return r0;
        return r1;
        return r2;
    }
}
