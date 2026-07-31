package org.maplibre.android.style.layers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class FillLayer extends Layer {
    public FillLayer(long j) {
        super(j);
    }

    private native Object nativeGetFillAntialias();

    private native Object nativeGetFillColor();

    private native TransitionOptions nativeGetFillColorTransition();

    private native Object nativeGetFillOpacity();

    private native TransitionOptions nativeGetFillOpacityTransition();

    private native Object nativeGetFillOutlineColor();

    private native TransitionOptions nativeGetFillOutlineColorTransition();

    private native Object nativeGetFillPattern();

    private native TransitionOptions nativeGetFillPatternTransition();

    private native Object nativeGetFillSortKey();

    private native Object nativeGetFillTranslate();

    private native Object nativeGetFillTranslateAnchor();

    private native TransitionOptions nativeGetFillTranslateTransition();

    private native void nativeSetFillColorTransition(long j, long j2);

    private native void nativeSetFillOpacityTransition(long j, long j2);

    private native void nativeSetFillOutlineColorTransition(long j, long j2);

    private native void nativeSetFillPatternTransition(long j, long j2);

    private native void nativeSetFillTranslateTransition(long j, long j2);

    @Override // org.maplibre.android.style.layers.Layer
    public native void finalize();

    public native void initialize(String str, String str2);
}
