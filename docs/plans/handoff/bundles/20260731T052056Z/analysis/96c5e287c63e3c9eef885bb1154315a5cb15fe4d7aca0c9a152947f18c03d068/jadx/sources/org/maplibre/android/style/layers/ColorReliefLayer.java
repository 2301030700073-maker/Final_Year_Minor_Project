package org.maplibre.android.style.layers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ColorReliefLayer extends Layer {
    public ColorReliefLayer(long j) {
        super(j);
    }

    private native Object nativeGetColorReliefColor();

    private native Object nativeGetColorReliefOpacity();

    private native TransitionOptions nativeGetColorReliefOpacityTransition();

    private native void nativeSetColorReliefOpacityTransition(long j, long j2);

    @Override // org.maplibre.android.style.layers.Layer
    public native void finalize();

    public native void initialize(String str, String str2);
}
