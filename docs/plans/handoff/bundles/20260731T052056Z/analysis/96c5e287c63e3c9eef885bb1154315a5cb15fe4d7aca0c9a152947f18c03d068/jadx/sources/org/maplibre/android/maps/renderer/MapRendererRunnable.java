package org.maplibre.android.maps.renderer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
class MapRendererRunnable implements Runnable {
    private final long nativePtr;

    public MapRendererRunnable(long j) {
        this.nativePtr = j;
    }

    private native void nativeInitialize();

    public native void finalize();

    @Override // java.lang.Runnable
    public native void run();
}
