package torque.consumption

# Q-46 test: deny and echo the input, only for the q46-* test blueprints.
result = {"decision": "Denied", "reason": json.marshal(input)} {
    contains(json.marshal(input), "q46-blocked")
}
