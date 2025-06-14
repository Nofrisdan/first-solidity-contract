// ignition/modules/CounterModule.js
// npx hardhat ignition deploy ignition/modules/FirstContract.js --network localhost
import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("FirstContractModule", (m) => {
  const FirstContract = m.contract("FirstContract");
  return { FirstContract };
});
