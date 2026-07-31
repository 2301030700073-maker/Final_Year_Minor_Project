package org.maplibre.geojson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.maplibre.geojson.exception.GeoJsonException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
class ListOfListOfPointCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<List<List<Point>>> {
    @Override // com.google.gson.TypeAdapter
    public List<List<Point>> read(JsonReader jsonReader) {
        if (jsonReader.peek() == JsonToken.NULL) {
            throw null;
        }
        if (jsonReader.peek() != JsonToken.BEGIN_ARRAY) {
            throw new GeoJsonException("coordinates should be array of array of array of double");
        }
        jsonReader.beginArray();
        ArrayList arrayList = new ArrayList();
        while (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            ArrayList arrayList2 = new ArrayList();
            while (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                arrayList2.add(readPoint(jsonReader));
            }
            jsonReader.endArray();
            arrayList.add(arrayList2);
        }
        jsonReader.endArray();
        return arrayList;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, List<List<Point>> list) {
        if (list == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        for (List<Point> list2 : list) {
            jsonWriter.beginArray();
            Iterator<Point> it = list2.iterator();
            while (it.hasNext()) {
                writePoint(jsonWriter, it.next());
            }
            jsonWriter.endArray();
        }
        jsonWriter.endArray();
    }
}
