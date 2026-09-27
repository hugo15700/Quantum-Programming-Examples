namespace Example3 {
    @EntryPoint()
    operation Example3() : Result {
        use qubits = Qubit[4];
        X(qubits[3]);
        X(qubits[3]);
        H(qubits[2]);
        X(qubits[2]);
        H(qubits[1]);
        X(qubits[1]);
        H(qubits[0]);
        X(qubits[0]);
        CNOT(qubits[2], qubits[1]);
        CNOT(qubits[1], qubits[2]);
        CNOT(qubits[2], qubits[1]);
        CNOT(qubits[1], qubits[0]);
        CNOT(qubits[0], qubits[1]);
        CNOT(qubits[1], qubits[0]);
        CNOT(qubits[3], qubits[0]);
        CNOT(qubits[0], qubits[3]);
        CNOT(qubits[3], qubits[0]);
        let ResultFirstQubit = M(qubits[0]);
        let ResultSecondQubit = M(qubits[1]);
        let ResultThirdQubit = M(qubits[2]);
        let ResultFourthQubit = M(qubits[3]);
        ResetAll(qubits);
        return ResultFirstQubit;
        return ResultSecondQubit;
        return ResultThirdQubit;
        return ResultFourthQubit;
    }
}
