package torque.consumption

import future.keywords.in

# Q-47 N: data.blueprints is an OBJECT keyed by year. Only applies to q46-* blueprints.
result = {"decision": "Denied", "reason": sprintf("q47-nested: %v not allowed for 2026", [input.blueprint.name])} {
    startswith(input.blueprint.name, "q46-")
    is_object(data.blueprints)
    bps := data.blueprints
    not input.blueprint.name in bps["2026"]
}
