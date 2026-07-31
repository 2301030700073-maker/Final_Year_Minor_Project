package org.maplibre.android.style.sources;

import okio.Okio__JvmOkioKt;
import org.maplibre.android.LibraryLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Source {
    private static final String TAG = "Mbgl-Source";
    protected boolean detached;
    private long nativePtr;

    static {
        LibraryLoader.load();
    }

    public Source(long j) {
        checkThread();
        this.nativePtr = j;
    }

    public void checkThread() {
        Okio__JvmOkioKt.checkThread(TAG);
    }

    public String getAttribution() {
        checkThread();
        return nativeGetAttribution();
    }

    public String getId() {
        checkThread();
        return nativeGetId();
    }

    public Integer getMaxOverscaleFactorForParentTiles() {
        return nativeGetMaxOverscaleFactorForParentTiles();
    }

    public Long getMinimumTileUpdateInterval() {
        return nativeGetMinimumTileUpdateInterval();
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    public Integer getPrefetchZoomDelta() {
        return nativeGetPrefetchZoomDelta();
    }

    public Boolean isVolatile() {
        return nativeIsVolatile();
    }

    public native String nativeGetAttribution();

    public native String nativeGetId();

    public native Integer nativeGetMaxOverscaleFactorForParentTiles();

    public native Long nativeGetMinimumTileUpdateInterval();

    public native Integer nativeGetPrefetchZoomDelta();

    public native Boolean nativeIsVolatile();

    public native void nativeSetMaxOverscaleFactorForParentTiles(Integer num);

    public native void nativeSetMinimumTileUpdateInterval(Long l);

    public native void nativeSetPrefetchZoomDelta(Integer num);

    public native void nativeSetVolatile(Boolean bool);

    public void setDetached() {
        this.detached = true;
    }

    public void setMaxOverscaleFactorForParentTiles(Integer num) {
        nativeSetMaxOverscaleFactorForParentTiles(num);
    }

    public void setMinimumTileUpdateInterval(Long l) {
        nativeSetMinimumTileUpdateInterval(l);
    }

    public void setPrefetchZoomDelta(Integer num) {
        nativeSetPrefetchZoomDelta(num);
    }

    public void setVolatile(Boolean bool) {
        nativeSetVolatile(bool);
    }

    public Source() {
        checkThread();
    }
}
