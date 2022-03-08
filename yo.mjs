#!/usr/bin/env zx

const usage = `
yo fns/curry -t=fn
`.trim()

const templates = {
    fn: function (fnName) {
        return `
public func ${fnName}() {
}
`.trim()
    },
    
    fnTest: function(fnName) {
        return `
import XCTest
@testable import fns

class Test_${fnName}: XCTestCase {
    func test() {
    }
}
`.trim()
    }
}

const dst = argv._[1]
const template = argv["t"] ?? "fn"

if (!dst) {
    console.log(`
${chalk.blue(`
usage:
  
  ${usage}
`)}
`.trim())
    process.exit(1)
}

const [pkg, ...rest] = dst.split("/")
const name = rest[rest.length - 1]

const to = './Sources/' + dst + '.swift'
const text = templates[template](name)
fs.writeFileSync(to, text)

const toTests = `./Tests/${pkg}Tests/${rest.join("/")}.test.swift`
const textTests = templates[template + 'Test'](name)
fs.writeFileSync(toTests, textTests)

console.log(`
File generated at ${chalk.green(to)} and ${chalk.green(toTests)}.
`)

process.exit(0)
