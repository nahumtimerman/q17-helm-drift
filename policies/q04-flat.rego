package torque.consumption

import future.keywords.in

# Q-04 test: values come from policy data (flat references). The deny rule can never match.
result = {"decision": "Denied", "reason": "q04 test deny"} {
    input.blueprint_name == "q04-never-matches"
    input.blueprint_name in data.blueprints
    count(data.allowed_groups) > data.max_envs
}
