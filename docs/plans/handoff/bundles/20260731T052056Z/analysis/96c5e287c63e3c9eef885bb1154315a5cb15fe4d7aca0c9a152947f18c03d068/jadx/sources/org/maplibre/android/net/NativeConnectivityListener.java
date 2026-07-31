package org.maplibre.android.net;

import org.maplibre.android.LibraryLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
class NativeConnectivityListener implements ConnectivityListener {
    private boolean invalidated;
    private long nativePtr;

    static {
        LibraryLoader.load();
    }

    public NativeConnectivityListener(long j) {
        this.nativePtr = j;
    }

    public native void finalize();

    public native void initialize();

    public native void nativeOnConnectivityStateChanged(boolean z);
}
