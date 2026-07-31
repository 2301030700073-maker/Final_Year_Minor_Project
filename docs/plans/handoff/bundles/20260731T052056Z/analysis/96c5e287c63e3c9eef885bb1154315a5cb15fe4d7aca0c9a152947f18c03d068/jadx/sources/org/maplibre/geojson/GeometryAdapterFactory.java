package org.maplibre.geojson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GeometryAdapterFactory implements TypeAdapterFactory {
    private static TypeAdapterFactory geometryTypeFactory;

    public static TypeAdapterFactory create() {
        TypeAdapterFactory typeAdapterFactory = geometryTypeFactory;
        if (typeAdapterFactory != null) {
            return typeAdapterFactory;
        }
        RuntimeTypeAdapterFactory registerSubtype = RuntimeTypeAdapterFactory.of(Geometry.class, "type", true).registerSubtype(GeometryCollection.class, "GeometryCollection").registerSubtype(Point.class, "Point").registerSubtype(MultiPoint.class, "MultiPoint").registerSubtype(LineString.class, "LineString").registerSubtype(MultiLineString.class, "MultiLineString").registerSubtype(Polygon.class, "Polygon").registerSubtype(MultiPolygon.class, "MultiPolygon");
        geometryTypeFactory = registerSubtype;
        return registerSubtype;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public abstract /* synthetic */ TypeAdapter create(Gson gson, TypeToken typeToken);
}
