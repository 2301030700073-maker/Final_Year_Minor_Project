package coil3.video.internal;

import coil3.util.DecoderServiceLoaderTarget;
import coil3.video.VideoFrameDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VideoFrameDecoderServiceLoaderTarget implements DecoderServiceLoaderTarget {
    @Override // coil3.util.DecoderServiceLoaderTarget
    public VideoFrameDecoder.Factory factory() {
        return new VideoFrameDecoder.Factory();
    }

    @Override // coil3.util.DecoderServiceLoaderTarget
    public final /* synthetic */ int priority() {
        return 0;
    }
}
