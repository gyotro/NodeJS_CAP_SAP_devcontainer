const say = (say) => {
    say.on ( 'hello', req => `Hello ${req.data.to}!!`)
}

const bye = (say) => {
    say.on ('bye', req => `Bye ${req.data.to}!!`)
}

module.exports.say = say
module.exports.goodbye = bye

// export default say