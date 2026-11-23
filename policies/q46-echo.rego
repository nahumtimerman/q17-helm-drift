package torque.consumption

# Q-46 test: always deny and echo the input, to learn the input shape.
result = {"decision": "Denied", "reason": json.marshal(input)} {
    true
}
