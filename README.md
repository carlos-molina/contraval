
# contraval (smart contract validation)

This repository hosts **epromela** ---a tool for
building models of smart contracts that can
be validated by the Spin model checker.
<br/>

Models are written in the epromela language which
is standard Promela augmented with contructs for
* expressing concepts that are inherent to 
  business contracts such as role players,
  rights, obligations and prohibitions; and
* executing operations with them such as grant right
  to buyer, cancel seller's obligation, etc. 

An epromela model can be presented to Spin 
for **model checking** it and **generating test 
cases (execution sequences)**.

### Model checking 
 Spin can verify the logical consistency of the model
 epromela model of the smart contract against correctness 
 properties written 
 in LTL (Linear Temporal Logics) formulae. <br />

### Generation of execution sequences (test cases) 
 Spin can be instructed to generate all the execution
 sequences encoded in the epromela model of the
 smart contract. The basic idea is to use Spin as a
 generator of counterexamples produced against 
 LTL formulae.



### Execution model of bilateral operations with potential exceptions 
Contractual operations are bilateral in the sense that
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
shown in the following figure.

<p align="center">
  <img src="./figures/executionModelOfBilateralOperations.png" width="550" title="Execution model of contractual operations.">
</p>
