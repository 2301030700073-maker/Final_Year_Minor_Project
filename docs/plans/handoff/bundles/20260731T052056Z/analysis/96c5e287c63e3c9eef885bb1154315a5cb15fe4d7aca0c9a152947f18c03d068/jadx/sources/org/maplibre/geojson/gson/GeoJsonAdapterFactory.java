package org.maplibre.geojson.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import org.maplibre.geojson.BoundingBox;
import org.maplibre.geojson.Feature;
import org.maplibre.geojson.FeatureCollection;
import org.maplibre.geojson.GeometryCollection;
import org.maplibre.geojson.LineString;
import org.maplibre.geojson.MultiLineString;
import org.maplibre.geojson.MultiPoint;
import org.maplibre.geojson.MultiPolygon;
import org.maplibre.geojson.Point;
import org.maplibre.geojson.Polygon;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GeoJsonAdapterFactory implements TypeAdapterFactory {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public static final class GeoJsonAdapterFactoryIml extends GeoJsonAdapterFactory {
        @Override // org.maplibre.geojson.gson.GeoJsonAdapterFactory, com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter create(Gson gson, TypeToken typeToken) {
            Class cls = typeToken.rawType;
            if (BoundingBox.class.isAssignableFrom(cls)) {
                return BoundingBox.typeAdapter(gson);
            }
            if (Feature.class.isAssignableFrom(cls)) {
                return Feature.typeAdapter(gson);
            }
            if (FeatureCollection.class.isAssignableFrom(cls)) {
                return FeatureCollection.typeAdapter(gson);
            }
            if (GeometryCollection.class.isAssignableFrom(cls)) {
                return GeometryCollection.typeAdapter(gson);
            }
            if (LineString.class.isAssignableFrom(cls)) {
                return LineString.typeAdapter(gson);
            }
            if (MultiLineString.class.isAssignableFrom(cls)) {
                return MultiLineString.typeAdapter(gson);
            }
            if (MultiPoint.class.isAssignableFrom(cls)) {
                return MultiPoint.typeAdapter(gson);
            }
            if (MultiPolygon.class.isAssignableFrom(cls)) {
                return MultiPolygon.typeAdapter(gson);
            }
            if (Polygon.class.isAssignableFrom(cls)) {
                return Polygon.typeAdapter(gson);
            }
            if (Point.class.isAssignableFrom(cls)) {
                return Point.typeAdapter(gson);
            }
            return null;
        }
    }

    public static TypeAdapterFactory create() {
        return new GeoJsonAdapterFactoryIml();
    }

    @Override // com.google.gson.TypeAdapterFactory
    public abstract /* synthetic */ TypeAdapter create(Gson gson, TypeToken typeToken);
}
