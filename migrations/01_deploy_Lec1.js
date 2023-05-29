// const Hello = artifacts.require("Hello");
// const World = artifacts.require("World");

// const DataType = artifacts.require("Data_type");

// const Unit = artifacts.require("Unit");

// const Exam_Func = artifacts.require("Exam_Func");

// const State = artifacts.require("State");

// const HowIsItSaved = artifacts.require("HowIsItSaved");

const InstanceA = artifacts.require("InstanceA")
const InstanceB = artifacts.require("InstanceB")
const InstanceC = artifacts.require("InstanceC")

module.exports = (deployer) => {
  deployer.deploy(InstanceA)
  deployer.deploy(InstanceB)
  deployer.deploy(InstanceC)
};
