import subprocess

bot_tokens = [
    "6030299293:AAERiihnla1k7Tti8OhMU47AhnhuHUMeHgU",
    "6583397612:AAEQ4vI-NdK02bzPp2egcOVzTZbvaW6NAx8"
]

for i, token in enumerate(bot_tokens):
    subprocess.Popen(["python3", f"bot_{i}.py", token])
