package org.maplibre.geojson;

import coil3.size.ViewSizeResolver$CC;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import org.maplibre.geojson.exception.GeoJsonException;
import org.maplibre.geojson.gson.BoundingBoxTypeAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
abstract class BaseGeometryTypeAdapter<G, T> extends TypeAdapter {
    private volatile TypeAdapter boundingBoxAdapter = new BoundingBoxTypeAdapter();
    private volatile TypeAdapter coordinatesAdapter;
    private final Gson gson;
    private volatile TypeAdapter stringAdapter;

    public BaseGeometryTypeAdapter(Gson gson, TypeAdapter typeAdapter) {
        this.gson = gson;
        this.coordinatesAdapter = typeAdapter;
    }

    public abstract CoordinateContainer<T> createCoordinateContainer(String str, BoundingBox boundingBox, T t);

    /* JADX WARN: Multi-variable type inference failed */
    public CoordinateContainer<T> readCoordinateContainer(JsonReader jsonReader) {
        String str = null;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        jsonReader.beginObject();
        BoundingBox boundingBox = null;
        Object obj = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (jsonReader.peek() != JsonToken.NULL) {
                nextName.getClass();
                switch (nextName) {
                    case "bbox":
                        TypeAdapter typeAdapter = this.boundingBoxAdapter;
                        if (typeAdapter == null) {
                            typeAdapter = ViewSizeResolver$CC.m(this.gson, BoundingBox.class);
                            this.boundingBoxAdapter = typeAdapter;
                        }
                        boundingBox = (BoundingBox) typeAdapter.read(jsonReader);
                        break;
                    case "type":
                        TypeAdapter typeAdapter2 = this.stringAdapter;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = ViewSizeResolver$CC.m(this.gson, String.class);
                            this.stringAdapter = typeAdapter2;
                        }
                        str = (String) typeAdapter2.read(jsonReader);
                        break;
                    case "coordinates":
                        TypeAdapter typeAdapter3 = this.coordinatesAdapter;
                        if (typeAdapter3 == null) {
                            throw new GeoJsonException("Coordinates type adapter is null");
                        }
                        obj = typeAdapter3.read(jsonReader);
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            } else {
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
        return createCoordinateContainer(str, boundingBox, obj);
    }

    public void writeCoordinateContainer(JsonWriter jsonWriter, CoordinateContainer<T> coordinateContainer) {
        if (coordinateContainer == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginObject();
        jsonWriter.name("type");
        if (coordinateContainer.type() == null) {
            jsonWriter.nullValue();
        } else {
            TypeAdapter typeAdapter = this.stringAdapter;
            if (typeAdapter == null) {
                typeAdapter = ViewSizeResolver$CC.m(this.gson, String.class);
                this.stringAdapter = typeAdapter;
            }
            typeAdapter.write(jsonWriter, coordinateContainer.type());
        }
        jsonWriter.name("bbox");
        if (coordinateContainer.bbox() == null) {
            jsonWriter.nullValue();
        } else {
            TypeAdapter typeAdapter2 = this.boundingBoxAdapter;
            if (typeAdapter2 == null) {
                typeAdapter2 = ViewSizeResolver$CC.m(this.gson, BoundingBox.class);
                this.boundingBoxAdapter = typeAdapter2;
            }
            typeAdapter2.write(jsonWriter, coordinateContainer.bbox());
        }
        jsonWriter.name("coordinates");
        if (coordinateContainer.coordinates() == null) {
            jsonWriter.nullValue();
        } else {
            TypeAdapter typeAdapter3 = this.coordinatesAdapter;
            if (typeAdapter3 == null) {
                throw new GeoJsonException("Coordinates type adapter is null");
            }
            typeAdapter3.write(jsonWriter, coordinateContainer.coordinates());
        }
        jsonWriter.endObject();
    }
}
