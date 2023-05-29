// const Hello = artifacts.require("Hello");
// const World = artifacts.require("World");
// const DataType = artifacts.require("Data_type");
// const Unit = artifacts.require("Unit");
const Exam_Func = artifacts.require("Exam_Func");

module.exports = (deployer) => {
  deployer.deploy(Exam_Func)
};
