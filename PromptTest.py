from portkey_ai import Portkey
portkey = Portkey(
  base_url = "https://portkeygateway.perficient.com/v1",
  api_key="dIvP46pL2hUGVRFDRjNsZbX3qFlw"
)
 
# Execute the prompt with provided variables
completion = portkey.prompts.completions.create(
    prompt_id="pp-prompt-com-52dc89", # For example: pp-test-poten-b0f87a
    variables={
        "sea_creature": "Great White Sharks"
    },
    max_tokens=250,
    presence_penalty=0.2
)
 
print(completion)
