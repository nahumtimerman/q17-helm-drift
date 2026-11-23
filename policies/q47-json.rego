package torque.consumption

import future.keywords.in

# Q-47 J: the object is stored as a JSON STRING and parsed here. Only applies to q46-* blueprints.
result = {"decision": "Denied", "reason": sprintf("q47-json: %v not allowed for 2026", [input.blueprint.name])} {
    startswith(input.blueprint.name, "q46-")
    bps := json.unmarshal(data.blueprints_json)
    not input.blueprint.name in bps["2026"]
}
