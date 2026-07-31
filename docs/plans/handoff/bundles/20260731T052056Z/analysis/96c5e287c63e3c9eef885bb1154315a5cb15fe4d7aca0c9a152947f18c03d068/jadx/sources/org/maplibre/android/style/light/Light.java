package org.maplibre.android.style.light;

import okio.Okio__JvmOkioKt;
import org.maplibre.android.style.layers.TransitionOptions;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Light {
    private long nativePtr;

    public Light(long j) {
        Okio__JvmOkioKt.checkThread("Mbgl-Light");
        this.nativePtr = j;
    }

    private native String nativeGetAnchor();

    private native String nativeGetColor();

    private native TransitionOptions nativeGetColorTransition();

    private native float nativeGetIntensity();

    private native TransitionOptions nativeGetIntensityTransition();

    private native Position nativeGetPosition();

    private native TransitionOptions nativeGetPositionTransition();

    private native void nativeSetAnchor(String str);

    private native void nativeSetColor(String str);

    private native void nativeSetColorTransition(long j, long j2);

    private native void nativeSetIntensity(float f);

    private native void nativeSetIntensityTransition(long j, long j2);

    private native void nativeSetPosition(Position position);

    private native void nativeSetPositionTransition(long j, long j2);
}
