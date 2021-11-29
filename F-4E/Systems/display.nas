# This creates and shows/hides the data display windows

var aero_data_window  = screen.display.new(10, -22).setcolor(0.4,1,0);
var jet_data_window   = screen.display.new(-300, -22).setcolor(0.4,1,0);
var prop_data_window  = screen.display.new(-300, -22).setcolor(0.4,1,0);


var show_aero_data_window = func {
 aero_data_window.add("fdm/jsbsim/aero/qbar-psf");
 aero_data_window.add("fdm/jsbsim/aero/alpha-deg");
 aero_data_window.add("fdm/jsbsim/velocities/vc-kts");
 aero_data_window.add("fdm/jsbsim/velocities/vtrue-kts");
 aero_data_window.add("fdm/jsbsim/velocities/mach");
 aero_data_window.add("fdm/jsbsim/position/h-sl-ft");
 aero_data_window.add("fdm/jsbsim/attitude/theta-deg");
 aero_data_window.add("fdm/jsbsim/inertia/weight-lbs");
 aero_data_window.add(props.globals.getNode("fdm/jsbsim/systems/test-aero").getChildren());
}

var show_jet_data_window = func {
 jet_data_window.add("fdm/jsbsim/position/h-sl-ft");
 jet_data_window.add("fdm/jsbsim/aero/qbar-psf");
 jet_data_window.add("fdm/jsbsim/velocities/mach");
 jet_data_window.add("fdm/jsbsim/propulsion/engine/thrust-lbs");
 jet_data_window.add("fdm/jsbsim/propulsion/engine/n1");
 jet_data_window.add("fdm/jsbsim/propulsion/engine/n2");
 jet_data_window.add("engines/engine/fuel-flow_pph");
 jet_data_window.add("engines/engine/epr");
 jet_data_window.add(props.globals.getNode("fdm/jsbsim/systems/test-jet").getChildren());
}

close_data_windows = func { aero_data_window.close(); 
                             jet_data_window.close(); }
