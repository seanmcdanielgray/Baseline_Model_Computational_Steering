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
float EGABA = -0.075
float SOMA_A = 1e-9
float GGlu = SOMA_A * 50 
// Actual conductance set by channel field in .p file
float GGABA = SOMA_A * 50

// CONSTANTS for NMDA Channel
float CMg = 1.5     // [Mg] in mM
float eta = 0.33    // per mM
float gamma = 60    // per Volt

//===================================================================
//                     SYNAPTIC CHANNELS   (Values guessed at)
//===================================================================


function make_Ex_ch18P23RSAMPAlongrange

// AMPA synapse for P23RS - I23LTS

	if ({exists Ex_ch18P23RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch18P23RSAMPAlongrange
    	setfield	        Ex_ch18P23RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 1.0e-3 } \	// sec
		tau2		{ 1.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch18P23RSNMDAlongrange

// NMDA synapse for P23RS - I23LTS

    if ({exists Ex_ch18P23RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch18P23RSNMDAlongrange

        setfield     Ex_ch18P23RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch18P23RSNMDAlongrange/block
        setfield         Ex_ch18P23RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch18P23RSNMDAlongrange Ex_ch18P23RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch18P23RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch18P23RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDAlongrange VOLTAGE Vm

end

function make_Inh_ch18B23FSGABAalongrange

//GABA_A synape for B23FS - I23LTS

	if ({exists Inh_ch18B23FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch18B23FSGABAalongrange
    	setfield	        Inh_ch18B23FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 3.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch18P5IBAMPAlongrange

// AMPA synapse for P5IB - I23LTS

	if ({exists Ex_ch18P5IBAMPAlongrange})
		return
	end

	create		synchan	Ex_ch18P5IBAMPAlongrange
    	setfield	        Ex_ch18P5IBAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 1.0e-3 } \	// sec
		tau2		{ 1.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch18P5IBNMDAlongrange

// NMDA synapse for P5IB - I23LTS

    if ({exists Ex_ch18P5IBNMDAlongrange})
        return
    end

    create  synchan  Ex_ch18P5IBNMDAlongrange

        setfield     Ex_ch18P5IBNMDAlongrange     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch18P5IBNMDAlongrange/block
        setfield         Ex_ch18P5IBNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch18P5IBNMDAlongrange Ex_ch18P5IBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch18P5IBNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch18P5IBNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDAlongrange VOLTAGE Vm

end

function make_Ex_ch18P6RSAMPAlongrange

// AMPA synapse for P6RS - I23LTS

	if ({exists Ex_ch18P6RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch18P6RSAMPAlongrange
    	setfield	        Ex_ch18P6RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 1.0e-3 } \	// sec
		tau2		{ 1.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch18P6RSNMDAlongrange

// NMDA synapse for P6RS - I23LTS

    if ({exists Ex_ch18P6RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch18P6RSNMDAlongrange

        setfield     Ex_ch18P6RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch18P6RSNMDAlongrange/block
        setfield         Ex_ch18P6RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch18P6RSNMDAlongrange Ex_ch18P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch18P6RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch18P6RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDAlongrange VOLTAGE Vm

end

function make_Ex_ch18ST4RSAMPAlongrange

// AMPA synapse for ST4RS - I23LTS

	if ({exists Ex_ch18ST4RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch18ST4RSAMPAlongrange
    	setfield	        Ex_ch18ST4RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 0.8e-3 } \	// sec
		tau2		{ 0.8e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch18ST4RSNMDAlongrange

// NMDA synapse for ST4RS - I23LTS

    if ({exists Ex_ch18ST4RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch18ST4RSNMDAlongrange

        setfield     Ex_ch18ST4RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch18ST4RSNMDAlongrange/block
        setfield         Ex_ch18ST4RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch18ST4RSNMDAlongrange Ex_ch18ST4RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch18ST4RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch18ST4RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDAlongrange VOLTAGE Vm

end

function make_Inh_ch18I23LTSGABAalongrange

//GABA_A synape for I23LTS - I23LTS

	if ({exists Inh_ch18I23LTSGABAalongrange})
		return
	end

	create		synchan	Inh_ch18I23LTSGABAalongrange
    	setfield	        Inh_ch18I23LTSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch18I5LTSGABAalongrange

//GABA_A synape for I5LTS - I23LTS

	if ({exists Inh_ch18I5LTSGABAalongrange})
		return
	end

	create		synchan	Inh_ch18I5LTSGABAalongrange
    	setfield	        Inh_ch18I5LTSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch18P23FRBAMPAlongrange

// AMPA synapse for P23FRB - I23LTS

	if ({exists Ex_ch18P23FRBAMPAlongrange})
		return
	end

	create		synchan	Ex_ch18P23FRBAMPAlongrange
    	setfield	        Ex_ch18P23FRBAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 1.0e-3 } \	// sec
		tau2		{ 1.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch18P23FRBNMDAlongrange

// NMDA synapse for P23FRB - I23LTS

    if ({exists Ex_ch18P23FRBNMDAlongrange})
        return
    end

    create  synchan  Ex_ch18P23FRBNMDAlongrange

        setfield     Ex_ch18P23FRBNMDAlongrange     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch18P23FRBNMDAlongrange/block
        setfield         Ex_ch18P23FRBNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch18P23FRBNMDAlongrange Ex_ch18P23FRBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch18P23FRBNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch18P23FRBNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDAlongrange VOLTAGE Vm

end

function make_Ex_ch18P5RSAMPAlongrange

// AMPA synapse for P5RS - I23LTS

	if ({exists Ex_ch18P5RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch18P5RSAMPAlongrange
    	setfield	        Ex_ch18P5RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 1.0e-3 } \	// sec
		tau2		{ 1.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch18P5RSNMDAlongrange

// NMDA synapse for P5RS - I23LTS

    if ({exists Ex_ch18P5RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch18P5RSNMDAlongrange

        setfield     Ex_ch18P5RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch18P5RSNMDAlongrange/block
        setfield         Ex_ch18P5RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch18P5RSNMDAlongrange Ex_ch18P5RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch18P5RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch18P5RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDAlongrange VOLTAGE Vm

end
