package org.maplibre.android.style.sources;

import java.util.ArrayList;
import kotlin.Metadata;
import org.maplibre.geojson.Feature;
import org.maplibre.geojson.FeatureCollection;
import org.maplibre.geojson.Geometry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0085 ¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0085 ¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0085 ¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\nH\u0085 ¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0006H\u0083 ¢\u0006\u0004\b\u0015\u0010\u000fJ\u001a\u0010\u0017\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0016H\u0083 ¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001b\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0083 ¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\n2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0083 ¢\u0006\u0004\b\u001f\u0010 J&\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00190!2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010!H\u0083 ¢\u0006\u0004\b#\u0010$J\"\u0010%\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010!2\u0006\u0010\u001a\u001a\u00020\u0019H\u0083 ¢\u0006\u0004\b%\u0010&J2\u0010)\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010!2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010'\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u0002H\u0083 ¢\u0006\u0004\b)\u0010*J\u0018\u0010,\u001a\u00020+2\u0006\u0010\u001a\u001a\u00020\u0019H\u0083 ¢\u0006\u0004\b,\u0010-J\u0010\u0010/\u001a\u00020.H\u0083 ¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Lorg/maplibre/android/style/sources/GeoJsonSource;", "Lorg/maplibre/android/style/sources/Source;", "", "nativePtr", "<init>", "(J)V", "", "layerId", "", "options", "", "initialize", "(Ljava/lang/String;Ljava/lang/Object;)V", "url", "nativeSetUrl", "(Ljava/lang/String;)V", "nativeGetUrl", "()Ljava/lang/String;", "finalize", "()V", "geoJson", "nativeSetGeoJsonString", "Lorg/maplibre/geojson/FeatureCollection;", "nativeSetFeatureCollection", "(Lorg/maplibre/geojson/FeatureCollection;)V", "Lorg/maplibre/geojson/Feature;", "feature", "nativeSetFeature", "(Lorg/maplibre/geojson/Feature;)V", "Lorg/maplibre/geojson/Geometry;", "geometry", "nativeSetGeometry", "(Lorg/maplibre/geojson/Geometry;)V", "", "filter", "querySourceFeatures", "([Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;", "nativeGetClusterChildren", "(Lorg/maplibre/geojson/Feature;)[Lorg/maplibre/geojson/Feature;", "limit", "offset", "nativeGetClusterLeaves", "(Lorg/maplibre/geojson/Feature;JJ)[Lorg/maplibre/geojson/Feature;", "", "nativeGetClusterExpansionZoom", "(Lorg/maplibre/geojson/Feature;)I", "", "nativeIsUpdateSynchronous", "()Z", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GeoJsonSource extends Source {
    public GeoJsonSource(long j) {
        super(j);
    }

    private final native Feature[] nativeGetClusterChildren(Feature feature);

    private final native int nativeGetClusterExpansionZoom(Feature feature);

    private final native Feature[] nativeGetClusterLeaves(Feature feature, long limit, long offset);

    private final native boolean nativeIsUpdateSynchronous();

    private final native void nativeSetFeature(Feature feature);

    private final native void nativeSetFeatureCollection(FeatureCollection geoJson);

    private final native void nativeSetGeoJsonString(String geoJson);

    private final native void nativeSetGeometry(Geometry geometry);

    private final native Feature[] querySourceFeatures(Object[] filter);

    public final native void finalize();

    public final native void initialize(String layerId, Object options);

    public final native String nativeGetUrl();

    public final native void nativeSetUrl(String url);

    public final void setGeoJson(FeatureCollection featureCollection) {
        if (this.detached) {
            return;
        }
        checkThread();
        if (featureCollection != null && featureCollection.features() != null) {
            featureCollection = FeatureCollection.fromFeatures(new ArrayList(featureCollection.features()));
        }
        nativeSetFeatureCollection(featureCollection);
    }

    public final void setGeoJson(Feature feature) {
        if (this.detached) {
            return;
        }
        checkThread();
        nativeSetFeature(feature);
    }
}
