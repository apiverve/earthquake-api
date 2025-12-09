declare module '@apiverve/earthquake' {
  export interface earthquakeOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface earthquakeResponse {
    status: string;
    error: string | null;
    data: WorldwideEarthquakesData;
    code?: number;
  }


  interface WorldwideEarthquakesData {
      earthquakesLastUpdated: number;
      earthquakesLastHour:    number;
      earthquakes:            Earthquake[];
  }
  
  interface Earthquake {
      mag:         number;
      place:       string;
      time:        number;
      status:      Status;
      tsunami:     number;
      sig:         number;
      net:         string;
      types:       string;
      nst?:        number;
      dmin?:       number;
      rms:         number;
      gap?:        number;
      magType:     MagType;
      type:        Type;
      title:       string;
      coordinates: number[];
  }
  
  enum MagType {
      Md = "md",
      Ml = "ml",
  }
  
  enum Status {
      Automatic = "automatic",
      Reviewed = "reviewed",
  }
  
  enum Type {
      Earthquake = "earthquake",
  }

  export default class earthquakeWrapper {
    constructor(options: earthquakeOptions);

    execute(callback: (error: any, data: earthquakeResponse | null) => void): Promise<earthquakeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: earthquakeResponse | null) => void): Promise<earthquakeResponse>;
    execute(query?: Record<string, any>): Promise<earthquakeResponse>;
  }
}
