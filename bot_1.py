from bot import start_bot
import sys
import asyncio

if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    bot_token = sys.argv[1]
    loop.run_until_complete(start_bot(bot_token))
