// const Hello = artifacts.require("Hello");
// const World = artifacts.require("World");

// const DataType = artifacts.require("Data_type");

// const Unit = artifacts.require("Unit");

// const Exam_Func = artifacts.require("Exam_Func");

// const Access1 = artifacts.require("Access1");

// const State = artifacts.require("State");

// const HowIsItSaved = artifacts.require("HowIsItSaved");

// const InstanceA = artifacts.require("InstanceA")
// const InstanceB = artifacts.require("InstanceB")
// const InstanceC = artifacts.require("InstanceC")

const InstanceD = artifacts.require("InstanceD")
const InstanceE = artifacts.require("InstanceE")

module.exports = (deployer) => {
  deployer.deploy(InstanceD, "Char1ey", 30)
  deployer.deploy(InstanceE)

};
