#Changelog Fidor API Schema

A more detailed view of the changes can be found in the [commit messages](https://github.com/fidor/fidor_schema/commits/)

## v0.9.0 (2015-08-17)

* New transaction types (`capital_gains_tax`, `solidarity_tax`).
* Added `preauths` schema.
* Added `short_term_loan` schema.
* Enabled customer creation to the `customer` schema.
* Various cleanups / small tweaks.

##2015-06

* add transfer_approval resource
* add mobile topup transaction details
* add global money transfer(gmt) transaction details
* add sepa_credit_transfer.fee_amount
* add BIC to account
* change creditor_identifier to creditor_identity_id for sepa_direct_debit

##2015-05
* add transaction_type_details for bonus transactions
* enhance internal_transfer_details with more fields

##2015-04
* Transaction update transaction types

##2015-03

* remove name attribute in favour of title
* remove nested $refs pointing to properties in favour of direct link to the related schema
* validate the schema files against three different ruby validators
* add $schema version to each file
* SepaCreditTransfer requires remote_iban
* add CreditorIdentity object
* RateLimit endpoint changed to /rate_limits returning an array, to align with other resources

##2015-02

* SepaMandates filter by multiple references and ibans
* move required markup into 'required' array on top-level of an object
* change date field format to 'date-time' since date-only values are also valid in terms of http://tools.ietf.org/html/rfc3339#section-5.6
* change readonly field property to readOnly

##2014-12

* be explicit for number fields, now defined as integers

##2014-11

* Customer/Sepa direct debit add creditor_identifier field
* Lists of any object type are now returned under the generic 'data' key
* Transaction clarify nested transaction_type_details
* Transaction amount can be negative
* add rate_limit endpoint

##2014-10

* initial public release - ALPHA
