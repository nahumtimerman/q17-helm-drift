package torque.consumption

import future.keywords.in

# Q-46 test: allow-list on data.blueprints. Only applies to q46-* blueprints.
result = {"decision": "Denied", "reason": sprintf("q46-allow: blueprint %v is not in the allow-list", [input.blueprint.name])} {
    startswith(input.blueprint.name, "q46-")
    not input.blueprint.name in data.blueprints
}
