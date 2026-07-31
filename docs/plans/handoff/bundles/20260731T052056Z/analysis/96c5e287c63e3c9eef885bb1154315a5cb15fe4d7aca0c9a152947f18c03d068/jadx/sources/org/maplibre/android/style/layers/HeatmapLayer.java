package org.maplibre.android.style.layers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class HeatmapLayer extends Layer {
    public HeatmapLayer(long j) {
        super(j);
    }

    private native Object nativeGetHeatmapColor();

    private native Object nativeGetHeatmapIntensity();

    private native TransitionOptions nativeGetHeatmapIntensityTransition();

    private native Object nativeGetHeatmapOpacity();

    private native TransitionOptions nativeGetHeatmapOpacityTransition();

    private native Object nativeGetHeatmapRadius();

    private native TransitionOptions nativeGetHeatmapRadiusTransition();

    private native Object nativeGetHeatmapWeight();

    private native void nativeSetHeatmapIntensityTransition(long j, long j2);

    private native void nativeSetHeatmapOpacityTransition(long j, long j2);

    private native void nativeSetHeatmapRadiusTransition(long j, long j2);

    @Override // org.maplibre.android.style.layers.Layer
    public native void finalize();

    public native void initialize(String str, String str2);
}
