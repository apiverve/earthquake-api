// Converter.java

// To use this code, add the following Maven dependency to your project:
//
//
//     com.fasterxml.jackson.core     : jackson-databind          : 2.9.0
//     com.fasterxml.jackson.datatype : jackson-datatype-jsr310   : 2.9.0
//
// Import this package:
//
//     import com.apiverve.data.Converter;
//
// Then you can deserialize a JSON string with
//
//     WorldwideEarthquakesData data = Converter.fromJsonString(jsonString);

package com.apiverve.earthquake.data;

import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.util.*;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.temporal.ChronoField;

public class Converter {
    // Date-time helpers

    private static final DateTimeFormatter DATE_TIME_FORMATTER = new DateTimeFormatterBuilder()
            .appendOptional(DateTimeFormatter.ISO_DATE_TIME)
            .appendOptional(DateTimeFormatter.ISO_OFFSET_DATE_TIME)
            .appendOptional(DateTimeFormatter.ISO_INSTANT)
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SX"))
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ssX"))
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))
            .toFormatter()
            .withZone(ZoneOffset.UTC);

    public static OffsetDateTime parseDateTimeString(String str) {
        return ZonedDateTime.from(Converter.DATE_TIME_FORMATTER.parse(str)).toOffsetDateTime();
    }

    private static final DateTimeFormatter TIME_FORMATTER = new DateTimeFormatterBuilder()
            .appendOptional(DateTimeFormatter.ISO_TIME)
            .appendOptional(DateTimeFormatter.ISO_OFFSET_TIME)
            .parseDefaulting(ChronoField.YEAR, 2020)
            .parseDefaulting(ChronoField.MONTH_OF_YEAR, 1)
            .parseDefaulting(ChronoField.DAY_OF_MONTH, 1)
            .toFormatter()
            .withZone(ZoneOffset.UTC);

    public static OffsetTime parseTimeString(String str) {
        return ZonedDateTime.from(Converter.TIME_FORMATTER.parse(str)).toOffsetDateTime().toOffsetTime();
    }
    // Serialize/deserialize helpers

    public static WorldwideEarthquakesData fromJsonString(String json) throws IOException {
        return getObjectReader().readValue(json);
    }

    public static String toJsonString(WorldwideEarthquakesData obj) throws JsonProcessingException {
        return getObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader reader;
    private static ObjectWriter writer;

    private static void instantiateMapper() {
        ObjectMapper mapper = new ObjectMapper();
        mapper.findAndRegisterModules();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
        SimpleModule module = new SimpleModule();
        module.addDeserializer(OffsetDateTime.class, new JsonDeserializer<OffsetDateTime>() {
            @Override
            public OffsetDateTime deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
                String value = jsonParser.getText();
                return Converter.parseDateTimeString(value);
            }
        });
        mapper.registerModule(module);
        reader = mapper.readerFor(WorldwideEarthquakesData.class);
        writer = mapper.writerFor(WorldwideEarthquakesData.class);
    }

    private static ObjectReader getObjectReader() {
        if (reader == null) instantiateMapper();
        return reader;
    }

    private static ObjectWriter getObjectWriter() {
        if (writer == null) instantiateMapper();
        return writer;
    }
}

// WorldwideEarthquakesData.java

package com.apiverve.earthquake.data;

import com.fasterxml.jackson.annotation.*;

public class WorldwideEarthquakesData {
    private long earthquakesLastUpdated;
    private long earthquakesLastHour;
    private Earthquake[] earthquakes;

    @JsonProperty("earthquakes_LastUpdated")
    public long getEarthquakesLastUpdated() { return earthquakesLastUpdated; }
    @JsonProperty("earthquakes_LastUpdated")
    public void setEarthquakesLastUpdated(long value) { this.earthquakesLastUpdated = value; }

    @JsonProperty("earthquakes_LastHour")
    public long getEarthquakesLastHour() { return earthquakesLastHour; }
    @JsonProperty("earthquakes_LastHour")
    public void setEarthquakesLastHour(long value) { this.earthquakesLastHour = value; }

    @JsonProperty("earthquakes")
    public Earthquake[] getEarthquakes() { return earthquakes; }
    @JsonProperty("earthquakes")
    public void setEarthquakes(Earthquake[] value) { this.earthquakes = value; }
}

// Earthquake.java

package com.apiverve.earthquake.data;

import com.fasterxml.jackson.annotation.*;

public class Earthquake {
    private double mag;
    private String place;
    private long time;
    private Status status;
    private long tsunami;
    private long sig;
    private String net;
    private String types;
    private Long nst;
    private Double dmin;
    private double rms;
    private Double gap;
    private MagType magType;
    private Type type;
    private String title;
    private double[] coordinates;

    @JsonProperty("mag")
    public double getMag() { return mag; }
    @JsonProperty("mag")
    public void setMag(double value) { this.mag = value; }

    @JsonProperty("place")
    public String getPlace() { return place; }
    @JsonProperty("place")
    public void setPlace(String value) { this.place = value; }

    @JsonProperty("time")
    public long getTime() { return time; }
    @JsonProperty("time")
    public void setTime(long value) { this.time = value; }

    @JsonProperty("status")
    public Status getStatus() { return status; }
    @JsonProperty("status")
    public void setStatus(Status value) { this.status = value; }

    @JsonProperty("tsunami")
    public long getTsunami() { return tsunami; }
    @JsonProperty("tsunami")
    public void setTsunami(long value) { this.tsunami = value; }

    @JsonProperty("sig")
    public long getSig() { return sig; }
    @JsonProperty("sig")
    public void setSig(long value) { this.sig = value; }

    @JsonProperty("net")
    public String getNet() { return net; }
    @JsonProperty("net")
    public void setNet(String value) { this.net = value; }

    @JsonProperty("types")
    public String getTypes() { return types; }
    @JsonProperty("types")
    public void setTypes(String value) { this.types = value; }

    @JsonProperty("nst")
    public Long getNst() { return nst; }
    @JsonProperty("nst")
    public void setNst(Long value) { this.nst = value; }

    @JsonProperty("dmin")
    public Double getDmin() { return dmin; }
    @JsonProperty("dmin")
    public void setDmin(Double value) { this.dmin = value; }

    @JsonProperty("rms")
    public double getRMS() { return rms; }
    @JsonProperty("rms")
    public void setRMS(double value) { this.rms = value; }

    @JsonProperty("gap")
    public Double getGap() { return gap; }
    @JsonProperty("gap")
    public void setGap(Double value) { this.gap = value; }

    @JsonProperty("magType")
    public MagType getMagType() { return magType; }
    @JsonProperty("magType")
    public void setMagType(MagType value) { this.magType = value; }

    @JsonProperty("type")
    public Type getType() { return type; }
    @JsonProperty("type")
    public void setType(Type value) { this.type = value; }

    @JsonProperty("title")
    public String getTitle() { return title; }
    @JsonProperty("title")
    public void setTitle(String value) { this.title = value; }

    @JsonProperty("coordinates")
    public double[] getCoordinates() { return coordinates; }
    @JsonProperty("coordinates")
    public void setCoordinates(double[] value) { this.coordinates = value; }
}

// MagType.java

package com.apiverve.earthquake.data;

import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

public enum MagType {
    MD, ML;

    @JsonValue
    public String toValue() {
        switch (this) {
            case MD: return "md";
            case ML: return "ml";
        }
        return null;
    }

    @JsonCreator
    public static MagType forValue(String value) throws IOException {
        if (value.equals("md")) return MD;
        if (value.equals("ml")) return ML;
        throw new IOException("Cannot deserialize MagType");
    }
}

// Status.java

package com.apiverve.earthquake.data;

import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

public enum Status {
    AUTOMATIC, REVIEWED;

    @JsonValue
    public String toValue() {
        switch (this) {
            case AUTOMATIC: return "automatic";
            case REVIEWED: return "reviewed";
        }
        return null;
    }

    @JsonCreator
    public static Status forValue(String value) throws IOException {
        if (value.equals("automatic")) return AUTOMATIC;
        if (value.equals("reviewed")) return REVIEWED;
        throw new IOException("Cannot deserialize Status");
    }
}

// Type.java

package com.apiverve.earthquake.data;

import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

public enum Type {
    EARTHQUAKE;

    @JsonValue
    public String toValue() {
        switch (this) {
            case EARTHQUAKE: return "earthquake";
        }
        return null;
    }

    @JsonCreator
    public static Type forValue(String value) throws IOException {
        if (value.equals("earthquake")) return EARTHQUAKE;
        throw new IOException("Cannot deserialize Type");
    }
}