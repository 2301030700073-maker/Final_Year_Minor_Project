package coil3.gif.internal;

import android.os.Build;
import coil3.decode.Decoder;
import coil3.gif.AnimatedImageDecoder;
import coil3.gif.GifDecoder;
import coil3.util.DecoderServiceLoaderTarget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GifDecoderServiceLoaderTarget implements DecoderServiceLoaderTarget {
    @Override // coil3.util.DecoderServiceLoaderTarget
    public final Decoder.Factory factory() {
        return Build.VERSION.SDK_INT >= 28 ? new AnimatedImageDecoder.Factory() : new GifDecoder.Factory();
    }
}
