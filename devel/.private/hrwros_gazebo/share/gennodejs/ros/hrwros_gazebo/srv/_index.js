
"use strict";

let AGVControl = require('./AGVControl.js')
let GetMaterialLocations = require('./GetMaterialLocations.js')
let VacuumGripperControl = require('./VacuumGripperControl.js')
let ConveyorBeltControl = require('./ConveyorBeltControl.js')
let PopulationControl = require('./PopulationControl.js')
let SubmitTray = require('./SubmitTray.js')

module.exports = {
  AGVControl: AGVControl,
  GetMaterialLocations: GetMaterialLocations,
  VacuumGripperControl: VacuumGripperControl,
  ConveyorBeltControl: ConveyorBeltControl,
  PopulationControl: PopulationControl,
  SubmitTray: SubmitTray,
};
