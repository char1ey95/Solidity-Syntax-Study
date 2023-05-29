// const Hello = artifacts.require("Hello");
// const World = artifacts.require("World");
// const DataType = artifacts.require("Data_type");
// const Unit = artifacts.require("Unit");
// const Exam_Func = artifacts.require("Exam_Func");
const Access1 = artifacts.require("Access1");

module.exports = (deployer) => {
  deployer.deploy(Access1)
};
