import { Request } from '@sap/cds'

class say {
    hello = (req: Request): String => { return `Hello ${req.data.to}!!` }
}


class goodbye {
    bye = (req: Request): String => {
       return  `Bye ${req.data.to}!!`
    }
}

module.exports.say = say
module.exports.goodbye = goodbye