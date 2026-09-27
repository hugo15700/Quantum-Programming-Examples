namespace Example4 {
    @EntryPoint()
    operation Example4() : Result {
        use qubits = Qubit[2];
        H(qubits[0]);
        X(qubits[1]);
        CNOT(qubits[0], qubits[1]);
        H(qubits[1]);
        let ResultFirstQubit = M(qubits[0]);
        let ResultSecondQubit = M(qubits[1]);
        ResetAll(qubits);
        return ResultFirstQubit;
        return ResultSecondQubit;
    }
}
