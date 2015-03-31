# Description
#   A hubot script to fill your life with joy and happy trees.
#
# Commands:
#   hubot ross me - Replies with a random Bob Ross quote.
#
# Author:
#   Tyler Crammond

module.exports = (robot) ->
  robot.respond /ross me/, (msg) ->

    # Such happy little quotes. You can put as few or as many as you want in your world.
    quotes = [
      "That'll be our little secret.",
      "In painting, you have unlimited power. You have the ability to move mountains. You can bend rivers. But when I get home, the only thing I have power over, is the garbage.",
      "Remember our Golden Rule: A thin paint sticks to a thick paint.",
      "And that makes it look like birch trees, isn't that sneaky? Heh. Ha. It's gorgeous.",
      "You know me, I gotta put in a big tree.",
      "Here\'s your bravery test!",
      'Gotta give him a friend. Like I always say \'everyone needs a friend\'.',
      'We don\'t know where it goes. We don\'t really care.',
      'Any time ya learn, ya gain.',
      'Any way you want it to be, that\'s just right.',
      'As my son Steve says, just \'smoosh\' it in there. It\'s not a real word, but people seem to know what it means.',
      'Be sure to use odorless paint-thinner. If it\'s not odorless, you\'ll find yourself working alone very, very quick.',
      'Let\'s just blend this little rascal here, ha! Happy as we can be.',
      'Clouds are very, very free.',
      'Just put a few do-ers in there...',
      'Decide where your little footy hills live.',
      'Haha, and just beat the devil out of it.',
      'I like to beat the brush.',
      'You can use a brush rack to hit the brush on. Otherwise you will become unpopular real fast.',
      'If you did this with yellow, and you went over it with blue, you would end up with a .. with a translucent... green. And it\'s gorgeous. It is GORGEOUS.',
      'If you did this with blue, and you went over it with yellow, you would end up with a nice green sky. And that\'s not the thing we are looking for.',
      'Just lightly blend it, one hair and some air.',
      'Tender as a mothers love... And with my mother, that was certainly true.',
      'Let\'s do a little cabinectomy here.',
      'Oh, you\'d be in Agony City by now.',
      'Just scrape in a few indications of sticks and twigs and other little things in there. People will think you spend hours doing this.',
      'Little raccoons and old possums \'n\' stuff all live up in here. They\'ve got to have a little place to sit.',
      'Little squirrels \'n\' rabbits, and if this was in Florida or Georgia somewhere down there, might be an alligator or two hid back here.',
      'Maybe in our world there lives a happy little tree over there.',
      'Oh, green water... oh that\'s pretty. Boy, I like that, just alive with algae.',
      'Oh, that would make a nice place to fish. I like fishing, but I\'m not a very good fisherman. I always throw the fish back into the water, just put a band-aid on his mouth, tap \'im on the patootie and let him on his way. And maybe some day, if I\'m lucky, I\'ll get to catch him again.',
      'Oooh, if you have never been to Alaska, go there while it is still wild. My favorite uncle asked me if I wanted to go there, Uncle Sam. He said if you don\'t go, you\'re going to jail. That is how Uncle Sam asks you.',
      'People look at me like I\'m a little strange, when I go around talking to squirrels and rabbits and stuff. That\'s ok. Thaaaat\'s just ok.',
      'People might look at you a bit funny, but it\'s okay. Artists are allowed to be a bit different.',
      'Shwooop. Hehe. You have to make those little noises, or it just doesn\'t work.',
      'Talk to the tree, make friends with it.',
      'I taught my son to paint mountains like these, and guess what? Now he paints the best darn mountains in the industry.',
      'That\'s a crooked tree. We\'ll send him to Washington.',
      'That\'s where the crows will sit. But we\'ll have to put an elevator to put them up there because they can\'t fly, but they don\'t know that, so they still try.',
      'The only thing worse than yellow snow is green snow.',
      'The secret to doing anything is believing that you can do it. Anything that you believe you can do strong enough, you can do. Anything. As long as you believe.',
      'The trees are oh so soft, oh so soft I freakin\' love it.',
      'There\'s nothing wrong with having a tree as a friend.',
      'Trees cover up a multitude of sins.',
      'Try to imagine that you are a tree. How do you want to look out here?',
      'Water\'s like me. It\'s laaazy... Boy, it always looks for the easiest way to do things.',
      'We don\'t make mistakes, we just have happy accidents.',
      'We tell people sometimes: we\'re like drug dealers, come into town and get everybody absolutely addicted to painting. It doesn\'t take much to get you addicted.',
      'We want happy paintings. Happy paintings. If you want sad things, watch the news.',
      'We\'re gonna make some big decisions in our little world.',
      'Well, the little clock on the wall says we\'re just about out of time. God bless you my friend.',
      'From all of us here I\'d like to wish you happy painting...and God bless my friend.',
      'When I was teaching my son Steve to paint, I used to tell him, just pretend he was a whisper, and he floated right across the mountain, that easy, gentle, make love to it, caress it.',
      'You can do anything you want to do. This is your world.',
      'I can\'t go over 30 minutes, because we have a mean ol\' director with no sense of humor.',
      'You can put as many or as few as you want in your world.',
      'Even if you\'ve never painted before, this one you can do.',
      'This is the hardest part of this method. If you can do this, you can do anything.',
      'Roll it in a little bright red and lets sign this right in here. Luckily I have a short name so it\'s easy to sign.',
      'And just go straight in like your going to stab it. And barely touch it...barely touch it.',
      'When we teach people to paint this is the one they fall in love with. It works so well.'
    ]

    # Let's find one of those little quotes
    quoteIndex = Math.min(Math.max(Math.round(Math.random() * quotes.length), 0), quotes.length)

    # Ross them
    msg.reply quotes[quoteIndex]