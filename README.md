
# contraval

contraval (Contract Validator) is a tool
building abstract models of smart contracts. An 
EPROMELA model can be exposed to the SPIN model 
checker for:<br />


## Model checking 
 Verifying its logical consistency of the model
 against correctness properties written as 
 LTL (Linear Temporal Logics) formulae. <br />

## Testing
 Generating the execution sequences
 implicit in the model. Such sequences
 can be used as test cases against the
 actual implementation of the smaert
 contract.

## Execution model of bilateral operations 
Contractual opertations are bilateral in the sense that
their execution requires the interaction of the two
business partners. 
Upon completion of the execution of a given operation
each party independently declares its local outcome:
success, business failure or technical failure.

Since the parties operate in a loosely coupled mode,
their outcomes does not necessarily match. For instance
a party might declare success whereas its counterpart
declares business failure.

To agree on the outcome of each operation and be able
to progress to the next one in harmony, the parties
rely on a synchronizer that is responsible for 
receiving the individual outcomes, compute a single
outcome and notify it to the contractual paarties and
possibly to other parties that are entitled to
follow the execution of the contract.

An schematic view of the execution model is
shown in the figure.

<p align="center">
  <img src="./figures/executionModelOfBilateralOperations.png" width="350" title="Execution model of contractual operations.">
</p>
