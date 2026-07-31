package org.maplibre.geojson;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.List;
import org.maplibre.geojson.exception.GeoJsonException;
import org.maplibre.geojson.shifter.CoordinateShifterManager;
import org.maplibre.geojson.utils.GeoJsonUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
abstract class BaseCoordinatesTypeAdapter<T> extends TypeAdapter {
    public Point readPoint(JsonReader jsonReader) {
        List<Double> readPointList = readPointList(jsonReader);
        if (readPointList == null || readPointList.size() <= 1) {
            throw new GeoJsonException(" Point coordinates should be non-null double array");
        }
        return new Point("Point", null, readPointList);
    }

    public List<Double> readPointList(JsonReader jsonReader) {
        if (jsonReader.peek() == JsonToken.NULL) {
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(Double.valueOf(jsonReader.nextDouble()));
        }
        jsonReader.endArray();
        return arrayList.size() > 2 ? CoordinateShifterManager.getCoordinateShifter().shiftLonLatAlt(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue(), ((Double) arrayList.get(2)).doubleValue()) : CoordinateShifterManager.getCoordinateShifter().shiftLonLat(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue());
    }

    public void writePoint(JsonWriter jsonWriter, Point point) {
        if (point == null) {
            return;
        }
        writePointList(jsonWriter, point.coordinates());
    }

    public void writePointList(JsonWriter jsonWriter, List<Double> list) {
        if (list == null) {
            return;
        }
        jsonWriter.beginArray();
        List<Double> unshiftPoint = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(list);
        jsonWriter.value(GeoJsonUtils.trim(unshiftPoint.get(0).doubleValue()));
        jsonWriter.value(GeoJsonUtils.trim(unshiftPoint.get(1).doubleValue()));
        if (list.size() > 2) {
            jsonWriter.value(unshiftPoint.get(2));
        }
        jsonWriter.endArray();
    }
}
