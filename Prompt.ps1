$headers = @{
  "x-portkey-api-key" = "dIvP46pL2hUGVRFDRjNsZbX3qFlw"
  "Content-Type" = "application/json"}

$body = @{
  prompt_id = "pp-prompt-com-52dc89"
  variables = @{
    sea_creature = "Octopus"
  }
  max_tokens = 5000
  presence_penalty = 0.2
} | ConvertTo-Json -Depth 25

$response = Invoke-RestMethod `
  -Method Post `
  -Uri "https://portkeygateway.perficient.com/v1/prompts/pp-prompt-com-52dc89/completions" `
  -Headers $headers `
  -Body $body

$response.choices[0].message.content
