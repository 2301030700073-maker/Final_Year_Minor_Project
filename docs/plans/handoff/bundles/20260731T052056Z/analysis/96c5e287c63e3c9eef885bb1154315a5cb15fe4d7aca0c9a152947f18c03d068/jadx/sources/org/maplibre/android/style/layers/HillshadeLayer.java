package org.maplibre.android.style.layers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class HillshadeLayer extends Layer {
    public HillshadeLayer(long j) {
        super(j);
    }

    private native Object nativeGetHillshadeAccentColor();

    private native TransitionOptions nativeGetHillshadeAccentColorTransition();

    private native Object nativeGetHillshadeExaggeration();

    private native TransitionOptions nativeGetHillshadeExaggerationTransition();

    private native Object nativeGetHillshadeHighlightColor();

    private native TransitionOptions nativeGetHillshadeHighlightColorTransition();

    private native Object nativeGetHillshadeIlluminationAltitude();

    private native Object nativeGetHillshadeIlluminationAnchor();

    private native Object nativeGetHillshadeIlluminationDirection();

    private native Object nativeGetHillshadeMethod();

    private native Object nativeGetHillshadeShadowColor();

    private native TransitionOptions nativeGetHillshadeShadowColorTransition();

    private native void nativeSetHillshadeAccentColorTransition(long j, long j2);

    private native void nativeSetHillshadeExaggerationTransition(long j, long j2);

    private native void nativeSetHillshadeHighlightColorTransition(long j, long j2);

    private native void nativeSetHillshadeShadowColorTransition(long j, long j2);

    @Override // org.maplibre.android.style.layers.Layer
    public native void finalize();

    public native void initialize(String str, String str2);
}
