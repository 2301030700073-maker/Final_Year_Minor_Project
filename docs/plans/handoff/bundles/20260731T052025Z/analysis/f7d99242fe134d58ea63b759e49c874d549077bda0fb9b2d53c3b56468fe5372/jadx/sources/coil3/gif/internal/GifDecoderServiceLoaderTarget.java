package coil3.gif.internal;

import android.os.Build;
import coil3.decode.Decoder;
import coil3.gif.AnimatedImageDecoder;
import coil3.gif.GifDecoder;
import coil3.util.DecoderServiceLoaderTarget;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GifDecoderServiceLoaderTarget implements DecoderServiceLoaderTarget {
    @Override // coil3.util.DecoderServiceLoaderTarget
    public Decoder.Factory factory() {
        return Build.VERSION.SDK_INT >= 28 ? new AnimatedImageDecoder.Factory(false, 1, null) : new GifDecoder.Factory(false, 1, null);
    }

    @Override // coil3.util.DecoderServiceLoaderTarget
    public final /* synthetic */ int priority() {
        return 0;
    }
}
