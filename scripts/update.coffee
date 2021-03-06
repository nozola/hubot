# Description:
#   This tells you how to update Brainbot from the commandline, the Heroku URL, and opens doors.
#
# Dependencies:
#
#
# Configuration:
#
#
# Commands:
#   brainbot open the <type of door> doors - Opens the doors, unless they are pod bay doors.
#   brainbot where are you - Displays the Heroku URL for Brainbot
#   brainbot how do i update you - Displays how to update Brainbot in Github and Heroku.
#
# Notes:
#   Some of these are silly, and some are useful. It is my first attempt at making a hubit for Brainspin.
#
# Author:
#   nozola

module.exports = (robot) ->

   robot.respond /open the (.*) doors/i, (res) ->
     doorType = res.match[1]
     if doorType is "pod bay"
       res.reply "I'm afraid I can't let you do that."
     else
       res.reply "Opening #{doorType} doors"

   robot.respond /where are you/i, (res) ->
     res.reply "I'm living in the cloud at https://brainspin-bot.herokuapp.com"

   robot.respond /how do i update you/i, (res) ->
     res.reply "_Strive for continuous improvement, instead of perfection._\n_ - Kim Collins_\n\n
So you want to update me huh?\n\n
Run this command to push me to github and Heroku will automatically deploy:\n
`git push origin master`\n
_(https://github.com/github/hubot/blob/master/docs/deploying/heroku.md)_\n
_(https://dashboard.heroku.com/apps/brainspin-bot/deploy/github)_"
