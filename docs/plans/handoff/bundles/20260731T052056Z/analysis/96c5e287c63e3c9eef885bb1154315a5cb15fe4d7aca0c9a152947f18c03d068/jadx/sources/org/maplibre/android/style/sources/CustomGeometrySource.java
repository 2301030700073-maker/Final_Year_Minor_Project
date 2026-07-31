package org.maplibre.android.style.sources;

import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import org.maplibre.android.geometry.LatLngBounds;
import org.maplibre.geojson.Feature;
import org.maplibre.geojson.FeatureCollection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001J$\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0083 ¢\u0006\u0004\b\u0007\u0010\bJ&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH\u0083 ¢\u0006\u0004\b\f\u0010\rJ0\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0083 ¢\u0006\u0004\b\u0014\u0010\u0015J(\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0083 ¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0083 ¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0003¢\u0006\u0004\b\u001c\u0010\u0017J'\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0003¢\u0006\u0004\b\u001d\u0010\u0017J\u000f\u0010\u001e\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0006H\u0003¢\u0006\u0004\b \u0010\u001fJ'\u0010\"\u001a\u00020!2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0003¢\u0006\u0004\b\"\u0010#J\u0010\u0010$\u001a\u00020\u0006H\u0085 ¢\u0006\u0004\b$\u0010\u001f¨\u0006%"}, d2 = {"Lorg/maplibre/android/style/sources/CustomGeometrySource;", "Lorg/maplibre/android/style/sources/Source;", "", "sourceId", "", "options", "", "initialize", "(Ljava/lang/String;Ljava/lang/Object;)V", "", "filter", "Lorg/maplibre/geojson/Feature;", "querySourceFeatures", "([Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;", "", "z", "x", "y", "Lorg/maplibre/geojson/FeatureCollection;", "data", "nativeSetTileData", "(IIILorg/maplibre/geojson/FeatureCollection;)V", "nativeInvalidateTile", "(III)V", "Lorg/maplibre/android/geometry/LatLngBounds;", "bounds", "nativeInvalidateBounds", "(Lorg/maplibre/android/geometry/LatLngBounds;)V", "fetchTile", "cancelTile", "startThreads", "()V", "releaseThreads", "", "isCancelled", "(III)Z", "finalize", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CustomGeometrySource extends Source {
    static {
        new AtomicInteger();
    }

    private final void cancelTile(int z, int x, int y) {
        throw null;
    }

    private final void fetchTile(int z, int x, int y) {
        new AtomicBoolean(false);
        new WeakReference(this);
        throw null;
    }

    private final native void initialize(String sourceId, Object options);

    private final boolean isCancelled(int z, int x, int y) {
        throw null;
    }

    private final native void nativeInvalidateBounds(LatLngBounds bounds);

    private final native void nativeInvalidateTile(int z, int x, int y);

    private final native void nativeSetTileData(int z, int x, int y, FeatureCollection data);

    private final native Feature[] querySourceFeatures(Object[] filter);

    private final void releaseThreads() {
        throw null;
    }

    private final void startThreads() {
        throw null;
    }

    public final native void finalize();
}
