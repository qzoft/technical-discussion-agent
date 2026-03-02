$input = [Console]::In.ReadToEnd() | ConvertFrom-Json

$toolName = $input.toolName
$toolInput = $input.toolInput

# Only check file-writing tools
$writeTools = @('create_file', 'replace_string_in_file', 'multi_replace_string_in_file', 'edit_notebook_file')
if ($toolName -notin $writeTools) {
    exit 0
}

# Extract file path from tool input
$filePath = $null
if ($toolInput.filePath) { $filePath = $toolInput.filePath }
elseif ($toolInput.replacements) {
    # multi_replace: check all target files
    foreach ($r in $toolInput.replacements) {
        if ($r.filePath -and $r.filePath -match '(?i)^c:\\projects\\topics') {
            $result = @{
                hookSpecificOutput = @{
                    hookEventName = "PreToolUse"
                    permissionDecision = "deny"
                    permissionDecisionReason = "Blocked: agents must not write to the workspace (c:\projects\topics). All file operations should target TOPICS_ROOT (C:\knowledge)."
                }
            }
            $result | ConvertTo-Json -Depth 5
            exit 0
        }
    }
    exit 0
}

if (-not $filePath) { exit 0 }

# Block writes targeting the workspace
if ($filePath -match '(?i)^c:\\projects\\topics') {
    $result = @{
        hookSpecificOutput = @{
            hookEventName = "PreToolUse"
            permissionDecision = "deny"
            permissionDecisionReason = "Blocked: agents must not write to the workspace (c:\projects\topics). All file operations should target TOPICS_ROOT (C:\knowledge)."
        }
    }
    $result | ConvertTo-Json -Depth 5
    exit 0
}

# Allow all other writes
exit 0
