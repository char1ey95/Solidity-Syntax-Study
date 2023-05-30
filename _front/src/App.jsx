import { useWeb3 } from "./hooks/useWeb3";
import { GetLogs } from "./pages/GetLogs"


const App = () => {
    const [account, web3] = useWeb3()


    if (!account || !web3) return <>지갑을 설치해주세요</>
    
    return (
        <>
            <GetLogs account={account} web3={web3} />
        </>
    )
}

export default App;