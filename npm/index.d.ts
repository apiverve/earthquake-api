declare module '@apiverve/earthquake' {
  export interface earthquakeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface earthquakeResponse {
    status: string;
    error: string | null;
    data: WorldwideEarthquakesData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface WorldwideEarthquakesData {
      earthquakesLastUpdated: Date | null;
      earthquakesLastHour:    number | null;
      count24H:               number | null;
      largestMagnitude24H:    number | null;
      avgMagnitude24H:        number | null;
      earthquakes:            Earthquake[];
  }
  
  interface Earthquake {
      mag:         number | null;
      place:       null | string;
      time:        number | null;
      felt?:       number | null;
      cdi?:        number | null;
      mmi?:        number | null;
      status:      null | string;
      tsunami:     number | null;
      sig:         number | null;
      net:         null | string;
      types:       null | string;
      nst:         number | null;
      dmin:        number | null;
      rms:         number | null;
      gap:         number | null;
      magType:     null | string;
      type:        null | string;
      title:       null | string;
      coordinates: (number | null)[];
  }

  export default class earthquakeWrapper {
    constructor(options: earthquakeOptions);

    execute(callback: (error: any, data: earthquakeResponse | null) => void): Promise<earthquakeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: earthquakeResponse | null) => void): Promise<earthquakeResponse>;
    execute(query?: Record<string, any>): Promise<earthquakeResponse>;
  }
}
