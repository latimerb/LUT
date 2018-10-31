LUT: a NEURON network model
########################################

This is a large-scale biophysical network model of the Lower Urinary Tract based on the framework provided by Marianne Bezaire's model of the hippocampal CA1 area.

Bezaire et al. (2016) Interneuronal mechanisms of hippocampal theta oscillations in a full-scale model of the rodent CA1 circuit. eLife.

# Defining a model

Defining a model requires defining properties of single cells, synapses, connectivity, and stimulation. These are done in the following files:

1) ./datasets/cellnumbers_XX.dat
################################
2) ./datasets/conndata_XX.dat
################################

Column 1 - PREsynaptic cell "friendly name" - the name in column on defined in cellnumbers_XX.dat.
Column 2 - POSTsynaptic cell "friendly name"
Column 3 - weight
Column 4 - number of convergent connections. Every cell of the postsynaptic cell type receives this many connections from the surrounding cells of the presynaptic cell type.
Column 5 - number of synapses per connection. 

3) ./datasets/syndata_XX.dat
################################

Column 1 - POSTsynaptic cell "friendly name"
Column 2 - PREsynaptic cell "friendly name"
Column 3 - synapse type
Column 4 - distance parameter 1
Column 5 - distance paramter 2
Column 6 - rise time of the synapse (ms)
Column 7 - decay time of the synapse (ms)
Column 8 - reversal potential of the synapse (mV)

4) ./datasets/phasic_XX.dat
################################

