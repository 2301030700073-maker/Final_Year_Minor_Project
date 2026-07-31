package org.maplibre.geojson.gson;

import com.google.gson.GsonBuilder;
import org.maplibre.geojson.Geometry;
import org.maplibre.geojson.GeometryAdapterFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class GeometryGeoJson {
    public static Geometry fromJson(String str) {
        GsonBuilder gsonBuilder = new GsonBuilder(0);
        gsonBuilder.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        gsonBuilder.registerTypeAdapterFactory(GeometryAdapterFactory.create());
        return (Geometry) gsonBuilder.create().fromJson(Geometry.class, str);
    }
}
