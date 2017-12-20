class exports.Tween extends Animation
    constructor: (layer, options) ->
        return new Promise (resolve, reject) =>
            super(layer, options)
            @.start()

            @.onAnimationEnd ->
                resolve()

class exports.TweenGroup
    constructor: (promises, options) ->
        return Promise.all(promises)