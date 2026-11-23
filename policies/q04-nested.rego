package torque.consumption

import future.keywords.in

# Q-04 test: two-level data reference. The deny rule can never match.
result = {"decision": "Denied", "reason": "q04 nested deny"} {
    input.blueprint_name == "q04-never-matches"
    input.blueprint_name in data.config.blueprints
}
