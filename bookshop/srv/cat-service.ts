import { Request, Service } from '@sap/cds'
import os from 'os'

class say {
    hello(req: Request): String { return `Hello TS ${req.data.to}!!` }
}


class ciao {
    bye(req: Request): String {
        if(req.data.to === 'me')
            req.data.to = os.userInfo().username
       return  `Bye ${req.data.to}!!`
    }
}

module.exports.say = say
module.exports.goodbye = ciao