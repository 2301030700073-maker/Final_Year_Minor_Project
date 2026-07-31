package org.maplibre.geojson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class PointAsCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<Point> {
    @Override // com.google.gson.TypeAdapter
    public Point read(JsonReader jsonReader) {
        return readPoint(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Point point) {
        writePoint(jsonWriter, point);
    }
}
