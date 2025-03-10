import os
from groq import Groq

client = Groq(
    api_key="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",
)

response = client.chat.completions.create(
    model="llama-3.2-11b-vision-preview",
    messages=[{"role": "user", "content": "Hello, world!"}],
)
print(response)
print(response.choices[0].message.content)
print(response.choices[0].finish_reason)