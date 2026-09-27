namespace Example2 {
    @EntryPoint()
    operation Example2() : Result {
        use qubits = Qubit[2];
        H(qubits[1]);
        CNOT(qubits[0], qubits[1]);
        let ResultFirstQubit = M(qubits[1]);
        H(qubits[0]);
        let ResultSecondQubit = M(qubits[0]);
        ResetAll(qubits);
        return ResultFirstQubit;
        return ResultSecondQubit;
    }
}
