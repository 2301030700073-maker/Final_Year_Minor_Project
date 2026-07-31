package org.maplibre.android.style.layers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class FillExtrusionLayer extends Layer {
    public FillExtrusionLayer(long j) {
        super(j);
    }

    private native Object nativeGetFillExtrusionBase();

    private native TransitionOptions nativeGetFillExtrusionBaseTransition();

    private native Object nativeGetFillExtrusionColor();

    private native TransitionOptions nativeGetFillExtrusionColorTransition();

    private native Object nativeGetFillExtrusionHeight();

    private native TransitionOptions nativeGetFillExtrusionHeightTransition();

    private native Object nativeGetFillExtrusionOpacity();

    private native TransitionOptions nativeGetFillExtrusionOpacityTransition();

    private native Object nativeGetFillExtrusionPattern();

    private native TransitionOptions nativeGetFillExtrusionPatternTransition();

    private native Object nativeGetFillExtrusionTranslate();

    private native Object nativeGetFillExtrusionTranslateAnchor();

    private native TransitionOptions nativeGetFillExtrusionTranslateTransition();

    private native Object nativeGetFillExtrusionVerticalGradient();

    private native void nativeSetFillExtrusionBaseTransition(long j, long j2);

    private native void nativeSetFillExtrusionColorTransition(long j, long j2);

    private native void nativeSetFillExtrusionHeightTransition(long j, long j2);

    private native void nativeSetFillExtrusionOpacityTransition(long j, long j2);

    private native void nativeSetFillExtrusionPatternTransition(long j, long j2);

    private native void nativeSetFillExtrusionTranslateTransition(long j, long j2);

    @Override // org.maplibre.android.style.layers.Layer
    public native void finalize();

    public native void initialize(String str, String str2);
}
