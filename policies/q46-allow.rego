package torque.consumption

import future.keywords.in

# Q-46 test v2: adds a reference to a NEW key, data.allowed_groups.
# The deny still fires when allowed_groups has no value (group_ok is then undefined).
group_ok {
    some g in input.groups
    g in data.allowed_groups
}

result = {"decision": "Denied", "reason": sprintf("q46-allow v2: blueprint %v is not in the allow-list", [input.blueprint.name])} {
    startswith(input.blueprint.name, "q46-")
    not input.blueprint.name in data.blueprints
    not group_ok
}
