namespace Example7 {
    @EntryPoint()
    operation Example7() : Result {
        use qubits = Qubit[4];
        H(qubits[0]);
        H(qubits[1]);
        H(qubits[2]);
        H(qubits[3]);
        X(qubits[0]);
        H(qubits[3]);
        Controlled X([qubits[0], qubits[1], qubits[2]], qubits[3]);
        X(qubits[0]);
        H(qubits[3]);
        Controlled Rz([qubits[0], qubits[1], qubits[2]], (0.0, qubits[3]));
        H(qubits[0]);
        H(qubits[1]);
        H(qubits[2]);
        H(qubits[3]);
        X(qubits[0]);
        X(qubits[1]);
        X(qubits[2]);
        X(qubits[3]);
        H(qubits[3]);
        Controlled X([qubits[0], qubits[1], qubits[2]], qubits[3]);
        Controlled Rz([qubits[0], qubits[1], qubits[2]], (0.0, qubits[3]));
        X(qubits[0]);
        X(qubits[1]);
        X(qubits[2]);
        H(qubits[3]);
        H(qubits[0]);
        H(qubits[1]);
        H(qubits[2]);
        X(qubits[3]);
        H(qubits[3]);
        Controlled Rz([qubits[0], qubits[1], qubits[2]], (0.0, qubits[3]));
        let r0 = M(qubits[0]);
        let r1 = M(qubits[1]);
        let r2 = M(qubits[2]);
        let r3 = M(qubits[3]);
        ResetAll(qubits);
        return r0;
        return r1;
        return r2;
        return r3;
    }
}
