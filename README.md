
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
A salient feature of epromela is that it can model
exceptions on the basis of the following execution model:
<br/>

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


### Business event generator 
At the heart of epromela lies a Business Event Generator
(BEG) that is responsible for generating the business events
generated by the contractual parties when they execute
a contractual operation.

To reduce the number of states of the model, the BEG abstracts 
away the communication between the contracting parties and
plays the role of the output synchronizer as shown in the
figure.
 
<p align="center">
  <img src="./figures/executionModelOfBilateralOperationsInEpromela.png" width="550" title="Execution model of contractual operations.">
</p>

The event generated by the BEG are sent to a set of business rules
for evaluation for contract compliance.

# Installation

The directions for installation of epromela are documented in
the [UserGuide_v1.2.pdf](./UserGuide_v1.2.pdf) file. The document
also includes examples that demonstrate its operation.


# Bug reporting and comments

Feel free to email 
[carlos.molina@cl.cam.a.uk](mailto:carlos.molina@cl.cam.ac.uk) 
if you have comments, bugs to report or questions.


# Licence
The contraval tool is released under the Apache License, 
Version 2.0 which is available from Apache’s web pages.
 
