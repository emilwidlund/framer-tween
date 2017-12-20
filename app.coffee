{Tween, TweenGroup} = require './tween.coffee'

progressBar = new Layer
    width: 1600
    height: 10
    x: Align.center
    y: 200

progress = new Layer
    parent: progressBar
    width: 627
    height: progressBar.height
    backgroundColor: '#7777ff'

badge = new Layer
    size: 75
    x: 60
    y: 165

new Tween badge, 
    x: 860
    options: 
        delay: 1
.then ->
    new Tween badge,
        y: 70
        options:
            time: .5
.then ->
    new TweenGroup [
        new Tween badge,
            y: 165
            options:
                time: .5
                delay: 1

        new Tween progress,
            width: 1276
    ]
.then ->
    new Tween badge,
        x: 1785