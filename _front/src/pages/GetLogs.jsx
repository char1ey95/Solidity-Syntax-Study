import { useEffect, useState } from "react"
import ExamScore from "../contract/ExamScore.json"

export const GetLogs = ({account, web3}) => {
    const [deployed, setDeployed] = useState(null)

    const handleSubmit = async (e) => {
        e.preventDefault()
        const name = e.target.name.value
        const score = e.target.score.value

        const data = await deployed.methods.updateScore(name, score).send({from: account})
        console.log(data)
    }

    useEffect(() => {
        const instance = new web3.eth.Contract(ExamScore.abi, ExamScore.networks[1685429419500].address)
        setDeployed(instance)
    }, [])

    return(
        <form onSubmit={handleSubmit}>
            <h2>
                이름
                <input type="text" name="name"/>
            </h2>
            <h2>
                점수
                <input type="text" name="score"/>
            </h2>
            <h2>
                <button>제출하기</button>
            </h2>
        </form>
    )
}