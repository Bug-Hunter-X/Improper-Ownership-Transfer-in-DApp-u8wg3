function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  require(msg.sender == _owner, "Ownable: caller is not the owner"); // Added check for authorized transfer
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}