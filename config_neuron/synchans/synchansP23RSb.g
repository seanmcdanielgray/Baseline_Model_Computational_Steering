//genesis

/* FILE INFORMATION
** "Generic" excitatory (glutamate) and inhibitory (GABA) synaptically
**  activated channels  (based on mitsyn.g by Upi Bhalla)
**
** The channels have an alpha_function type conductance change for
** each synaptic event.
**
** Modified by D. Beeman for GENESIS 2.0 syntax and synchan object - 5/19/94
*/

// CONSTANTS
float EGlu = 0.0
float EGABA = -0.081
float SOMA_A = 1e-9
float GGlu = SOMA_A * 50
float GGABA = SOMA_A * 50

// CONSTANTS for NMDA Channel
float CMg = 1.5     // [Mg] in mM
float eta = 0.33    // per mM
float gamma = 60    // per Volt

//===================================================================
//                     SYNAPTIC CHANNELS   (Values guessed at)
//===================================================================


function make_Ex_ch2P23RSAMPA

// AMPA synapse for P23RS - P23RS

	if ({exists Ex_ch2P23RSAMPA})
		return
	end

	create		synchan	Ex_ch2P23RSAMPA
    	setfield	        Ex_ch2P23RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P23RSNMDA

// NMDA synapse for P23RS - P23RS

    if ({exists Ex_ch2P23RSNMDA})
        return
    end

    create  synchan  Ex_ch2P23RSNMDA

        setfield     Ex_ch2P23RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P23RSNMDA/block
        setfield         Ex_ch2P23RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P23RSNMDA Ex_ch2P23RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P23RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P23RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P23RSNMDA VOLTAGE Vm

end

function make_Inh_ch2B23FSGABAa

//GABA_A synapse for B23FS - P23RS

	if ({exists Inh_ch2B23FSGABAa})
		return
	end

	create		synchan	Inh_ch2B23FSGABAa
    	setfield	        Inh_ch2B23FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch2P5IBAMPA

// AMPA synapse for P5IB - P23RS

	if ({exists Ex_ch2P5IBAMPA})
		return
	end

	create		synchan	Ex_ch2P5IBAMPA
    	setfield	        Ex_ch2P5IBAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P5IBNMDA

// NMDA synapse for P5IB - P23RS

    if ({exists Ex_ch2P5IBNMDA})
        return
    end

    create  synchan  Ex_ch2P5IBNMDA

        setfield     Ex_ch2P5IBNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P5IBNMDA/block
        setfield         Ex_ch2P5IBNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P5IBNMDA Ex_ch2P5IBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P5IBNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P5IBNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P5IBNMDA VOLTAGE Vm

end

function make_Ex_ch2P6RSAMPA

// AMPA synapse for P6RS - P23RS

	if ({exists Ex_ch2P6RSAMPA})
		return
	end

	create		synchan	Ex_ch2P6RSAMPA
    	setfield	        Ex_ch2P6RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P6RSNMDA

// NMDA synapse for P6RS - P23RS

    if ({exists Ex_ch2P6RSNMDA})
        return
    end

    create  synchan  Ex_ch2P6RSNMDA

        setfield     Ex_ch2P6RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P6RSNMDA/block
        setfield         Ex_ch2P6RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P6RSNMDA Ex_ch2P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P6RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P6RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P6RSNMDA VOLTAGE Vm

end

function make_Inh_ch2C23FSGABAa

//GABA_A synapse for C23FS - P23RS

	if ({exists Inh_ch2C23FSGABAa})
		return
	end

	create		synchan	Inh_ch2C23FSGABAa
    	setfield	        Inh_ch2C23FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch2C5FSGABAa

//GABA_A synapse for C5FS - P23RS

	if ({exists Inh_ch2C5FSGABAa})
		return
	end

	create		synchan	Inh_ch2C5FSGABAa
    	setfield	        Inh_ch2C5FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch2ST4RSAMPA

// AMPA synapse for ST4RS - P23RS

	if ({exists Ex_ch2ST4RSAMPA})
		return
	end

	create		synchan	Ex_ch2ST4RSAMPA
    	setfield	        Ex_ch2ST4RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2ST4RSNMDA

// NMDA synapse for ST4RS - P23RS

    if ({exists Ex_ch2ST4RSNMDA})
        return
    end

    create  synchan  Ex_ch2ST4RSNMDA

        setfield     Ex_ch2ST4RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2ST4RSNMDA/block
        setfield         Ex_ch2ST4RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2ST4RSNMDA Ex_ch2ST4RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2ST4RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch2ST4RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2ST4RSNMDA VOLTAGE Vm

end

function make_Inh_ch2I23LTSGABAa

//GABA_A synapse for I23LTS - P23RS

	if ({exists Inh_ch2I23LTSGABAa})
		return
	end

	create		synchan	Inh_ch2I23LTSGABAa
    	setfield	        Inh_ch2I23LTSGABAa \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch2I5LTSGABAa

//GABA_A synapse for I5LTS - P23RS

	if ({exists Inh_ch2I5LTSGABAa})
		return
	end

	create		synchan	Inh_ch2I5LTSGABAa
    	setfield	        Inh_ch2I5LTSGABAa \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch2TCRAMPA

// AMPA synapse for TCR - P23RS

	if ({exists Ex_ch2TCRAMPA})
		return
	end

	create		synchan	Ex_ch2TCRAMPA
    	setfield	        Ex_ch2TCRAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2TCRNMDA

// NMDA synapse for TCR - P23RS

    if ({exists Ex_ch2TCRNMDA})
        return
    end

    create  synchan  Ex_ch2TCRNMDA

        setfield     Ex_ch2TCRNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2TCRNMDA/block
        setfield         Ex_ch2TCRNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2TCRNMDA Ex_ch2TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2TCRNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch2TCRNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2TCRNMDA VOLTAGE Vm

end

function make_Ex_ch2TCRAMPA

// AMPA synapse for TCR - P23RS

	if ({exists Ex_ch2TCRAMPA})
		return
	end

	create		synchan	Ex_ch2TCRAMPA
    	setfield	        Ex_ch2TCRAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2TCRNMDA

// NMDA synapse for TCR - P23RS

    if ({exists Ex_ch2TCRNMDA})
        return
    end

    create  synchan  Ex_ch2TCRNMDA

        setfield     Ex_ch2TCRNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2TCRNMDA/block
        setfield         Ex_ch2TCRNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2TCRNMDA Ex_ch2TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2TCRNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch2TCRNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2TCRNMDA VOLTAGE Vm

end

function make_Ex_ch2P23FRBAMPA

// AMPA synapse for P23FRB - P23RS

	if ({exists Ex_ch2P23FRBAMPA})
		return
	end

	create		synchan	Ex_ch2P23FRBAMPA
    	setfield	        Ex_ch2P23FRBAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P23FRBNMDA

// NMDA synapse for P23FRB - P23RS

    if ({exists Ex_ch2P23FRBNMDA})
        return
    end

    create  synchan  Ex_ch2P23FRBNMDA

        setfield     Ex_ch2P23FRBNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P23FRBNMDA/block
        setfield         Ex_ch2P23FRBNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P23FRBNMDA Ex_ch2P23FRBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P23FRBNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P23FRBNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P23FRBNMDA VOLTAGE Vm

end

function make_Ex_ch2P5RSAMPA

// AMPA synapse for P5RS - P23RS

	if ({exists Ex_ch2P5RSAMPA})
		return
	end

	create		synchan	Ex_ch2P5RSAMPA
    	setfield	        Ex_ch2P5RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P5RSNMDA

// NMDA synapse for P5RS - P23RS

    if ({exists Ex_ch2P5RSNMDA})
        return
    end

    create  synchan  Ex_ch2P5RSNMDA

        setfield     Ex_ch2P5RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P5RSNMDA/block
        setfield         Ex_ch2P5RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P5RSNMDA Ex_ch2P5RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P5RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P5RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P5RSNMDA VOLTAGE Vm

end
