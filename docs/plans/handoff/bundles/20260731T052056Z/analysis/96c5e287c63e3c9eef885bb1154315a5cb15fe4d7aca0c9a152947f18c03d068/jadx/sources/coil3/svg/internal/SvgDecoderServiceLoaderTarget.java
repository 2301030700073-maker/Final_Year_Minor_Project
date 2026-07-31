package coil3.svg.internal;

import coil3.decode.Decoder;
import coil3.svg.SvgDecoder;
import coil3.util.DecoderServiceLoaderTarget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SvgDecoderServiceLoaderTarget implements DecoderServiceLoaderTarget {
    @Override // coil3.util.DecoderServiceLoaderTarget
    public final Decoder.Factory factory() {
        return new SvgDecoder.Factory();
    }
}
