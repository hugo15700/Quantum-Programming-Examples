namespace Example8 {
    @EntryPoint()
    operation Example8() : Result {
        use qubits = Qubit[8];
        H(qubits[0]);
        H(qubits[2]);
        H(qubits[4]);
        H(qubits[6]);
        CNOT(qubits[0], qubits[1]);
        CNOT(qubits[2], qubits[3]);
        CNOT(qubits[4], qubits[5]);
        CNOT(qubits[6], qubits[7]);
        CNOT(qubits[1], qubits[2]);
        CNOT(qubits[3], qubits[4]);
        CNOT(qubits[5], qubits[6]);
        Controlled Rz([qubits[0], qubits[1], qubits[2]], (0.0, qubits[3]));
        H(qubits[1]);
        H(qubits[3]);
        H(qubits[5]);
        H(qubits[7]);
        let m1 = M(qubits[1]);
        let m3 = M(qubits[3]);
        let m5 = M(qubits[5]);
        let m7 = M(qubits[7]);
        ResetAll(qubits);
        return m1;
        return m3;
        return m5;
        return m7;
    }
}
