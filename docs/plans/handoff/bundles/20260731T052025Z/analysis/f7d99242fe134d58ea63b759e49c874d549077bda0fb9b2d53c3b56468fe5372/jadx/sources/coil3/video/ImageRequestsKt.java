package coil3.video;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.request.ImageRequest;
import coil3.request.Options;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageRequestsKt {
    private static final Extras.Key<Integer> videoFrameIndexKey = new Extras.Key<>(-1);
    private static final Extras.Key<Boolean> preferVideoFrameEmbeddedThumbnailKey = new Extras.Key<>(Boolean.FALSE);
    private static final Extras.Key<Long> videoFrameMicrosKey = new Extras.Key<>(-1L);
    private static final Extras.Key<Double> videoFramePercentKey = new Extras.Key<>(Double.valueOf(-1.0d));
    private static final Extras.Key<Integer> videoFrameOptionKey = new Extras.Key<>(2);

    public static final boolean getPreferVideoFrameEmbeddedThumbnail(Options options) {
        return ((Boolean) ExtrasKt.getExtra(options, preferVideoFrameEmbeddedThumbnailKey)).booleanValue();
    }

    public static final int getVideoFrameIndex(ImageRequest imageRequest) {
        return ((Number) ExtrasKt.getExtra(imageRequest, videoFrameIndexKey)).intValue();
    }

    public static final long getVideoFrameMicros(ImageRequest imageRequest) {
        return ((Number) ExtrasKt.getExtra(imageRequest, videoFrameMicrosKey)).longValue();
    }

    public static final int getVideoFrameOption(ImageRequest imageRequest) {
        return ((Number) ExtrasKt.getExtra(imageRequest, videoFrameOptionKey)).intValue();
    }

    public static final double getVideoFramePercent(ImageRequest imageRequest) {
        return ((Number) ExtrasKt.getExtra(imageRequest, videoFramePercentKey)).doubleValue();
    }

    public static final ImageRequest.Builder preferVideoFrameEmbeddedThumbnailKey(ImageRequest.Builder builder, boolean z) {
        builder.memoryCacheKeyExtra("coil#preferVideoFrameEmbeddedThumbnailKey", String.valueOf(z));
        builder.getExtras().set(preferVideoFrameEmbeddedThumbnailKey, Boolean.valueOf(z));
        return builder;
    }

    public static final ImageRequest.Builder videoFrameIndex(ImageRequest.Builder builder, int i) {
        if (i < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("frameIndex must be >= 0.");
            return null;
        }
        builder.memoryCacheKeyExtra("coil#videoFrameIndex", String.valueOf(i));
        builder.getExtras().set(videoFrameIndexKey, Integer.valueOf(i));
        return builder;
    }

    public static final ImageRequest.Builder videoFrameMicros(ImageRequest.Builder builder, long j) {
        if (j < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("frameMicros must be >= 0.");
            return null;
        }
        builder.memoryCacheKeyExtra("coil#videoFrameMicros", String.valueOf(j));
        builder.getExtras().set(videoFrameMicrosKey, Long.valueOf(j));
        return builder;
    }

    public static final ImageRequest.Builder videoFrameMillis(ImageRequest.Builder builder, long j) {
        return videoFrameMicros(builder, 1000 * j);
    }

    public static final ImageRequest.Builder videoFrameOption(ImageRequest.Builder builder, int i) {
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Invalid video frame option: ", "."));
            return null;
        }
        builder.memoryCacheKeyExtra("coil#videoFrameOption", String.valueOf(i));
        builder.getExtras().set(videoFrameOptionKey, Integer.valueOf(i));
        return builder;
    }

    public static final ImageRequest.Builder videoFramePercent(ImageRequest.Builder builder, double d) {
        if (0.0d > d || d > 1.0d) {
            UriKt$$ExternalSyntheticBUOutline0.m("framePercent must be in the range [0.0, 1.0].");
            return null;
        }
        builder.memoryCacheKeyExtra("coil#videoFramePercent", String.valueOf(d));
        builder.getExtras().set(videoFramePercentKey, Double.valueOf(d));
        return builder;
    }

    public static final Extras.Key<Boolean> getPreferVideoFrameEmbeddedThumbnail(Extras.Key.Companion companion) {
        return preferVideoFrameEmbeddedThumbnailKey;
    }

    public static final int getVideoFrameIndex(Options options) {
        return ((Number) ExtrasKt.getExtra(options, videoFrameIndexKey)).intValue();
    }

    public static final long getVideoFrameMicros(Options options) {
        return ((Number) ExtrasKt.getExtra(options, videoFrameMicrosKey)).longValue();
    }

    public static final int getVideoFrameOption(Options options) {
        return ((Number) ExtrasKt.getExtra(options, videoFrameOptionKey)).intValue();
    }

    public static final double getVideoFramePercent(Options options) {
        return ((Number) ExtrasKt.getExtra(options, videoFramePercentKey)).doubleValue();
    }

    public static final Extras.Key<Integer> getVideoFrameIndex(Extras.Key.Companion companion) {
        return videoFrameIndexKey;
    }

    public static final Extras.Key<Long> getVideoFrameMicros(Extras.Key.Companion companion) {
        return videoFrameMicrosKey;
    }

    public static final Extras.Key<Integer> getVideoFrameOption(Extras.Key.Companion companion) {
        return videoFrameOptionKey;
    }

    public static final Extras.Key<Double> getVideoFramePercent(Extras.Key.Companion companion) {
        return videoFramePercentKey;
    }
}
