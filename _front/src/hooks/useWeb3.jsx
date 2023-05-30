import { useEffect, useState } from "react"
import Web3 from 'web3'

export const useWeb3 = () => {
    const [account, setAccount] = useState(null)
    const [web3, setWeb3] = useState(null)

    const requestAccount = async () => {
        try {
            const [account] = await window.ethereum.request({ method: "eth_requestAccounts" })
            setAccount(account)
        } catch (e) {
            console.log(e)
        }
    }

    const connectWeb3 = () => {
        const web3 = new Web3(window.ethereum)
        setWeb3(web3)
    }

    useEffect(() => {
        if (!window.ethereum) return
        connectWeb3()
        requestAccount()
    }, [])

    return [account, web3]
}