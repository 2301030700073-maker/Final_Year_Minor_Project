package coil3.gif;

import android.graphics.Bitmap;
import android.graphics.Movie;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.decode.DecodeResult;
import coil3.decode.DecodeUtils;
import coil3.decode.Decoder;
import coil3.decode.ImageSource;
import coil3.fetch.SourceFetchResult;
import coil3.gif.internal.FrameDelayRewritingSourceKt;
import coil3.gif.internal.UtilsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.util.BitmapsKt;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GifDecoder implements Decoder {
    private final boolean enforceMinimumFrameDelay;
    private final Options options;
    private final ImageSource source;

    public GifDecoder(ImageSource imageSource, Options options, boolean z) {
        this.source = imageSource;
        this.options = options;
        this.enforceMinimumFrameDelay = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DecodeResult decode$lambda$0(GifDecoder gifDecoder) {
        ImageSource maybeWrapImageSourceToRewriteFrameDelay = FrameDelayRewritingSourceKt.maybeWrapImageSourceToRewriteFrameDelay(gifDecoder.source, gifDecoder.enforceMinimumFrameDelay);
        try {
            Movie decodeStream = Movie.decodeStream(maybeWrapImageSourceToRewriteFrameDelay.source().inputStream());
            Cookie.Companion.closeFinally(maybeWrapImageSourceToRewriteFrameDelay, null);
            if (decodeStream == null || decodeStream.width() <= 0 || decodeStream.height() <= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Failed to decode GIF.");
                return null;
            }
            MovieDrawable movieDrawable = new MovieDrawable(decodeStream, (decodeStream.isOpaque() && ImageRequests_androidKt.getAllowRgb565(gifDecoder.options)) ? Bitmap.Config.RGB_565 : BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(gifDecoder.options)) ? Bitmap.Config.ARGB_8888 : ImageRequests_androidKt.getBitmapConfig(gifDecoder.options), gifDecoder.options.getScale());
            if (ImageRequestsKt.getRepeatCount(gifDecoder.options) != -2) {
                movieDrawable.setRepeatCount(ImageRequestsKt.getRepeatCount(gifDecoder.options));
            }
            Function0 animationStartCallback = ImageRequestsKt.getAnimationStartCallback(gifDecoder.options);
            Function0 animationEndCallback = ImageRequestsKt.getAnimationEndCallback(gifDecoder.options);
            if (animationStartCallback != null || animationEndCallback != null) {
                movieDrawable.registerAnimationCallback(UtilsKt.animatable2CompatCallbackOf(animationStartCallback, animationEndCallback));
            }
            movieDrawable.setAnimatedTransformation(ImageRequestsKt.getAnimatedTransformation(gifDecoder.options));
            return new DecodeResult(Image_androidKt.asImage(movieDrawable), false);
        } finally {
        }
    }

    @Override // coil3.decode.Decoder
    public Object decode(Continuation continuation) {
        return JobKt.withContext(EmptyCoroutineContext.INSTANCE, new InterruptibleKt$runInterruptible$2(new K9$$ExternalSyntheticLambda0(2, this), null, 0), continuation);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Decoder.Factory {
        private final boolean enforceMinimumFrameDelay;

        public /* synthetic */ Factory(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? true : z);
        }

        @Override // coil3.decode.Decoder.Factory
        public Decoder create(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader) {
            if (DecodeUtilsKt.isGif(DecodeUtils.INSTANCE, sourceFetchResult.getSource().source())) {
                return new GifDecoder(sourceFetchResult.getSource(), options, this.enforceMinimumFrameDelay);
            }
            return null;
        }

        public final boolean getEnforceMinimumFrameDelay() {
            return this.enforceMinimumFrameDelay;
        }

        public Factory(boolean z) {
            this.enforceMinimumFrameDelay = z;
        }

        public Factory() {
            this(false, 1, null);
        }
    }

    public /* synthetic */ GifDecoder(ImageSource imageSource, Options options, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageSource, options, (i & 4) != 0 ? true : z);
    }
}
