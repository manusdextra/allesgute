# Alles Gute!

This is essentially a playground project for me to learn Docker and a few adjacent tools. After I left social media, the one thing I missed was getting reminders of when people's birthdays were. I started keeping a little diary instead, but I would often misplace it. When I started researching cron for automated backup purposes, I got the idea of sending myself automatic emails the day before any of these birthdays, anniversaries etc.

At this point, all this tool does is take a plaintext list of dates and names and create a cron job from it. This job executes a shell script, which uses curl to send an email with the reminder. It's nothing fancy, but it's fun to play around with.

Future functionality might include something like a weekly digest, or even a small API that handles live updates to the date list.
