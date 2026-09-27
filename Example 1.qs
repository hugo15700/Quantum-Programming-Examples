namespace Example1 {
    @EntryPoint()
    operation MeasureOneQubit() : Result {
        use q = Qubit();
        H(q);
        let result = M(q);
        Reset(q);
        return result;
    }
    operation MeasureTwoQubits() : Unit {
        use qubits = Qubit[2];
        H(qubits[0]);
        X(qubits[1]);
    }
    operation SayHello() : Unit {
        use hello = Qubit();
        Message("Hello Quantum World !");
    }
}
