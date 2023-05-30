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

// const InstanceD = artifacts.require("InstanceD")
// const InstanceE = artifacts.require("InstanceE")

// const Bird = artifacts.require("Bird")
// const Eagle = artifacts.require("Eagle")

// const Bird = artifacts.require("Bird")
// const Penguin = artifacts.require("Penguin")

const EventExam = artifacts.require("EventExam")

module.exports = (deployer) => {
  deployer.deploy(EventExam)

};
