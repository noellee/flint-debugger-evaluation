module.exports = async (web3, contract) => {
  const accounts = await web3.eth.getAccounts();
  const manager = accounts[0];
  const employees = accounts.slice(1, 4);
  const customer = accounts[4];

  // init
  console.log('Sending initial eth...')
  tx = await contract.methods.deposit().send({ from: manager, value: '1000000' });
  console.log(tx.transactionHash);
  console.log();

  // employ
  console.log('Employing employees...')
  const promises = employees.map((employee, i) => 
    contract.methods
      .employ(i, employee)
      .send({ from: manager })
      .then(tx => tx.transactionHash)
      .then(console.log)
  );
  await Promise.all(promises);
  console.log();

  // restock
  console.log('Restocking...');
  tx = await contract.methods.restock(1005011).send({ from: employees[0] });
  console.log(tx.transactionHash);
  console.log();

  // open shop
  console.log('Opening...');
  tx = await contract.methods.open().send({ from: manager });
  console.log(tx.transactionHash);
  console.log();

  // customer buys 2 things
  console.log('Buying...');
  tx = await contract.methods.buy(2).send({ from: customer, value: '20' });
  console.log(tx.transactionHash);
  console.log();

  // $$$
  console.log('Payday!');
  tx = await contract.methods.payday().send({ from: manager });
  console.log(tx.transactionHash);
  console.log();

  // close shop
  console.log('Closing...');
  tx = await contract.methods.close().send({ from: manager });
  console.log(tx.transactionHash);
  console.log();
};
