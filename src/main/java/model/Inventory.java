package model;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class Inventory {

  private List inventory;

  public Inventory() {
    this.inventory = new LinkedList();
  }
  
  public Inventory(List inventory){
	  this.inventory = inventory;
  }
  
  public void addInstrument(String serialNumber, double price,
                            InstrumentSpec spec) {
    Instrument instrument = new Instrument(serialNumber, price, spec);
    inventory.add(instrument);
  }

  public Instrument get(String serialNumber) {
    for (Iterator i = inventory.iterator(); i.hasNext(); ) {
      Instrument instrument = (Instrument)i.next();
      if (instrument.getSerialNumber().equals(serialNumber)) {
        return instrument;
      }
    }
    return null;
  }

  public List search(InstrumentSpec searchSpec) {
    List matchingInstruments = new LinkedList();
    for (Iterator i = inventory.iterator(); i.hasNext(); ) {
      Instrument instrument = (Instrument)i.next();
      if (instrument.getSpec().matches(searchSpec))
        matchingInstruments.add(instrument);
    }
    return matchingInstruments;
  }

@Override
public String toString() {
	return "Inventory [inventory=" + inventory + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
			+ ", toString()=" + super.toString() + "]";
}
}
