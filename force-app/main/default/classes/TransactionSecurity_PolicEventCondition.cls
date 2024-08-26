global class TransactionSecurity_PolicEventCondition implements TxnSecurity.EventCondition {

	public boolean evaluate(SObject event) {
		return false;
	}

}