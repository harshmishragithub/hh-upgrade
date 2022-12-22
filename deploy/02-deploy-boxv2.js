const { network } = require("hardhat")
const { verify } = require("../utils/verify")
const { developmentChains } = require("../helper-hardhat-config")

module.exports = async ({ getNamedAccounts, deployments }) => {
    const { deploy, log } = deployments
    const { deployer } = await getNamedAccounts()

    const boxv2 = await deploy("BoxV2", {
        from: deployer,
        log: true,
        args: [],
        waitConfirmations: network.config.blockConfirmations,
    })
    if (!developmentChains.includes(network.name && process.env.ETHERSCAN_API_KEY)) {
        log("verifying -----------")
        await verify(boxv2.address, [])
    }
}
