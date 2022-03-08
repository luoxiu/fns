#!/usr/bin/env zx

const paths = await globby(['Sources/**/*.swift.gyb', "Tests/**/*.swift.gyb"])

Promise.all(paths.map(async (from) => {
    let to = from.replace(/\.gyb$/, "").replace("/gyb/", "/")
    await fs.ensureFile(to)

    to = path.resolve(to)

    await $`python gyb.py --line-directive="" ${from} -o ${to}`
}))
