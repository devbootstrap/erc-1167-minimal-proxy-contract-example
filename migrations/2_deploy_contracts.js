const Store = artifacts.require('Store');
const StoreFactory = artifacts.require('StoreFactory');

module.exports = async function(_deployer) {
   _deployer.deploy(Store).then(() => {
     return _deployer.deploy(StoreFactory, Store.address);
   })
};
