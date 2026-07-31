package coil3.gif.internal;

import coil3.decode.DecodeUtils;
import coil3.decode.ImageSource;
import coil3.decode.ImageSourceKt;
import coil3.gif.DecodeUtilsKt;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FrameDelayRewritingSourceKt {
    public static final ImageSource maybeWrapImageSourceToRewriteFrameDelay(ImageSource imageSource, boolean z) {
        return (z && DecodeUtilsKt.isGif(DecodeUtils.INSTANCE, imageSource.source())) ? ImageSourceKt.ImageSource$default(new RealBufferedSource(new FrameDelayRewritingSource(imageSource.source())), imageSource.getFileSystem(), null, 4, null) : imageSource;
    }
}
