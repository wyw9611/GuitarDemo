package model;

public enum InstrumentType { 

  GUITAR, BANJO, DOBRO, FIDDLE, BASS, MANDOLIN;

  public String toString() {
    switch(this) {
      case GUITAR:   return "Guitar";
      case BANJO:    return "Banjo";
      case DOBRO:    return "Dobro";
      case FIDDLE:   return "Fiddle";
      case BASS:     return "Bass";
      case MANDOLIN: return "Mandolin";
      default:       return "Unspecified";
    }
  }
	public static InstrumentType fromString(String name) {
		for (InstrumentType e : InstrumentType.values()) {
			if (e.toString().equals(name)) {
				return e;
			}
		}
		return null;
	}
}
