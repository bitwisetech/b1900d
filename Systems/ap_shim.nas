var fcs = "/fdm/jsbsim/fcs/";
var fbw_root = "/systems/afbw/";

var ap_shim = {
  
  # init function is called once at model startup
  init : func {
    # listeners for b1900d ap controls
    # 
    setlistener('instrumentation/fgc-65/internal/lateral',  func(tProp)     {
      setprop('systems/shim/lateral',    tProp.getValue())}, 1, 0);
      setprop('autopilot/locks/heading', tProp.getValue())}, 1, 0);
    #  
    setlistener('instrumentation/fgc-65/internal/vertical',  func(tProp)     {
      setprop('systems/shim/vertical',    tProp.getValue())}, 1, 0);
      setprop('autopilot/locks/heading',  tProp.getValue())}, 1, 0);
    #  
  },  


};

##
ap_shim.init();
print("ap_shim.init() .. done");
