package model;

import java.util.Iterator;
import java.util.HashMap;
import java.util.Map;

public class InstrumentSpec {

  private Map properties;

  public InstrumentSpec(Map properties) {
    if (properties == null) {
      this.properties = new HashMap();
    } else {
      this.properties = new HashMap(properties);
    }
  }

  public Object getProperty(String propertyName) {
    return properties.get(propertyName);
  }

  public Map getProperties() {
    return properties;
  }

  public boolean matches(InstrumentSpec otherSpec) {
	  System.out.println("otherSpec"+otherSpec);
    for (Iterator i = otherSpec.getProperties().keySet().iterator(); 
         i.hasNext(); ) {
      String propertyName = (String)i.next();
      System.out.println("propertyName"+propertyName);
      System.out.println("propertie"+properties);
      System.out.println("propertie:"+properties.get(propertyName));
	  System.out.println(properties.getClass().getName());
	  System.out.println("otherSpe :"+otherSpec.getProperty(propertyName));
	  System.out.println(otherSpec.getClass().getName());
      if (!properties.get(propertyName).equals(
           otherSpec.getProperty(propertyName))) {
    	  System.out.println("properties:"+properties.get(propertyName));
    	  System.out.println(properties.getClass().getName());
    	  System.out.println("otherSpec :"+otherSpec.getProperty(propertyName));
    	  System.out.println(otherSpec.getClass().getName());
    	  System.out.println("false");
        return false;
      }
    }System.out.println("true");
    return true;
    
  }

@Override
public String toString() {
	return "InstrumentSpec [properties=" + properties + ", getProperties()=" + getProperties() + ", getClass()="
			+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
}
}
