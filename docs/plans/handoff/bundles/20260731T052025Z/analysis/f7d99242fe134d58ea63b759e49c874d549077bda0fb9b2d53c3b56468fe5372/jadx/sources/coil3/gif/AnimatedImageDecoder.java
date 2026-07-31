package coil3.gif;

import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.drawable.Drawable;
import android.os.Build;
import coil3.ImageLoader;
import coil3.decode.DecodeUtils;
import coil3.decode.Decoder;
import coil3.decode.ImageSource;
import coil3.decode.StaticImageDecoderKt;
import coil3.fetch.SourceFetchResult;
import coil3.gif.internal.FrameDelayRewritingSourceKt;
import coil3.gif.internal.UtilsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.util.BitmapsKt;
import java.nio.ByteBuffer;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$BooleanRef;
import okhttp3.Cookie;
import okio.BufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnimatedImageDecoder implements Decoder {
    public static final Companion Companion = new Companion(null);
    public static final int ENCODED_LOOP_COUNT = -2;
    private final boolean enforceMinimumFrameDelay;
    private final Options options;
    private final ImageSource source;

    public /* synthetic */ AnimatedImageDecoder(ImageSource imageSource, Options options, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageSource, options, (i & 4) != 0 ? Build.VERSION.SDK_INT < 34 : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configureImageDecoderProperties(ImageDecoder imageDecoder) {
        imageDecoder.setAllocator(BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(this.options)) ? 3 : 1);
        imageDecoder.setMemorySizePolicy(!ImageRequests_androidKt.getAllowRgb565(this.options) ? 1 : 0);
        if (ImageRequests_androidKt.getColorSpace(this.options) != null) {
            imageDecoder.setTargetColorSpace(ImageRequests_androidKt.getColorSpace(this.options));
        }
        AnimatedTransformation animatedTransformation = ImageRequestsKt.getAnimatedTransformation(this.options);
        imageDecoder.setPostProcessor(animatedTransformation != null ? UtilsKt.asPostProcessor(animatedTransformation) : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Drawable decode$lambda$0(final AnimatedImageDecoder animatedImageDecoder, final Ref$BooleanRef ref$BooleanRef) {
        ImageSource maybeWrapImageSourceToRewriteFrameDelay = FrameDelayRewritingSourceKt.maybeWrapImageSourceToRewriteFrameDelay(animatedImageDecoder.source, animatedImageDecoder.enforceMinimumFrameDelay);
        try {
            ImageDecoder.Source imageDecoderSourceOrNull = StaticImageDecoderKt.toImageDecoderSourceOrNull(maybeWrapImageSourceToRewriteFrameDelay, animatedImageDecoder.options, true);
            if (imageDecoderSourceOrNull == null) {
                BufferedSource source = maybeWrapImageSourceToRewriteFrameDelay.source();
                try {
                    ByteBuffer squashToDirectByteBuffer = UtilsKt.squashToDirectByteBuffer(source);
                    CloseableKt.closeFinally(source, null);
                    imageDecoderSourceOrNull = ImageDecoder.createSource(squashToDirectByteBuffer);
                } finally {
                }
            }
            Drawable decodeDrawable = ImageDecoder.decodeDrawable(imageDecoderSourceOrNull, new ImageDecoder$OnHeaderDecodedListener() { // from class: coil3.gif.AnimatedImageDecoder$decode$lambda$0$0$$inlined$decodeDrawable$1
                /* JADX WARN: Code restructure failed: missing block: B:12:0x0071, code lost:
                
                    if (r2.getPrecision() == coil3.size.Precision.EXACT) goto L15;
                 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void onHeaderDecoded(android.graphics.ImageDecoder r7, android.graphics.ImageDecoder.ImageInfo r8, android.graphics.ImageDecoder.Source r9) {
                    /*
                        r6 = this;
                        android.util.Size r8 = r8.getSize()
                        int r0 = r8.getWidth()
                        int r1 = r8.getHeight()
                        coil3.gif.AnimatedImageDecoder r8 = coil3.gif.AnimatedImageDecoder.this
                        coil3.request.Options r8 = coil3.gif.AnimatedImageDecoder.access$getOptions$p(r8)
                        coil3.size.Size r8 = r8.getSize()
                        coil3.gif.AnimatedImageDecoder r9 = coil3.gif.AnimatedImageDecoder.this
                        coil3.request.Options r9 = coil3.gif.AnimatedImageDecoder.access$getOptions$p(r9)
                        coil3.size.Scale r9 = r9.getScale()
                        coil3.gif.AnimatedImageDecoder r2 = coil3.gif.AnimatedImageDecoder.this
                        coil3.request.Options r2 = coil3.gif.AnimatedImageDecoder.access$getOptions$p(r2)
                        coil3.size.Size r2 = coil3.request.ImageRequestsKt.getMaxBitmapSize(r2)
                        long r8 = coil3.decode.DecodeUtils.m858computeDstSizesEdh43o(r0, r1, r8, r9, r2)
                        int r2 = coil3.util.IntPair.m917getFirstimpl(r8)
                        int r3 = coil3.util.IntPair.m918getSecondimpl(r8)
                        if (r0 <= 0) goto L82
                        if (r1 <= 0) goto L82
                        if (r0 != r2) goto L3e
                        if (r1 == r3) goto L82
                    L3e:
                        coil3.gif.AnimatedImageDecoder r8 = coil3.gif.AnimatedImageDecoder.this
                        coil3.request.Options r8 = coil3.gif.AnimatedImageDecoder.access$getOptions$p(r8)
                        coil3.size.Scale r4 = r8.getScale()
                        coil3.gif.AnimatedImageDecoder r8 = coil3.gif.AnimatedImageDecoder.this
                        coil3.request.Options r8 = coil3.gif.AnimatedImageDecoder.access$getOptions$p(r8)
                        coil3.size.Size r5 = coil3.request.ImageRequestsKt.getMaxBitmapSize(r8)
                        double r8 = coil3.decode.DecodeUtils.computeSizeMultiplier(r0, r1, r2, r3, r4, r5)
                        kotlin.jvm.internal.Ref$BooleanRef r2 = r2
                        r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                        int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
                        if (r3 >= 0) goto L60
                        r3 = 1
                        goto L61
                    L60:
                        r3 = 0
                    L61:
                        r2.element = r3
                        if (r3 != 0) goto L73
                        coil3.gif.AnimatedImageDecoder r2 = coil3.gif.AnimatedImageDecoder.this
                        coil3.request.Options r2 = coil3.gif.AnimatedImageDecoder.access$getOptions$p(r2)
                        coil3.size.Precision r2 = r2.getPrecision()
                        coil3.size.Precision r3 = coil3.size.Precision.EXACT
                        if (r2 != r3) goto L82
                    L73:
                        double r2 = (double) r0
                        double r2 = r2 * r8
                        int r0 = kotlin.math.MathKt.roundToInt(r2)
                        double r1 = (double) r1
                        double r8 = r8 * r1
                        int r8 = kotlin.math.MathKt.roundToInt(r8)
                        r7.setTargetSize(r0, r8)
                    L82:
                        coil3.gif.AnimatedImageDecoder r6 = coil3.gif.AnimatedImageDecoder.this
                        coil3.gif.AnimatedImageDecoder.access$configureImageDecoderProperties(r6, r7)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: coil3.gif.AnimatedImageDecoder$decode$lambda$0$0$$inlined$decodeDrawable$1.onHeaderDecoded(android.graphics.ImageDecoder, android.graphics.ImageDecoder$ImageInfo, android.graphics.ImageDecoder$Source):void");
                }
            });
            Cookie.Companion.closeFinally(maybeWrapImageSourceToRewriteFrameDelay, null);
            return decodeDrawable;
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object wrapDrawable(android.graphics.drawable.Drawable r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof coil3.gif.AnimatedImageDecoder$wrapDrawable$1
            if (r0 == 0) goto L13
            r0 = r8
            coil3.gif.AnimatedImageDecoder$wrapDrawable$1 r0 = (coil3.gif.AnimatedImageDecoder$wrapDrawable$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.gif.AnimatedImageDecoder$wrapDrawable$1 r0 = new coil3.gif.AnimatedImageDecoder$wrapDrawable$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            java.lang.Object r7 = r0.L$0
            android.graphics.drawable.Drawable r7 = (android.graphics.drawable.Drawable) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L76
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
            boolean r8 = r7 instanceof android.graphics.drawable.AnimatedImageDrawable
            if (r8 != 0) goto L38
            return r7
        L38:
            coil3.request.Options r8 = r6.options
            int r8 = coil3.gif.ImageRequestsKt.getRepeatCount(r8)
            r1 = -2
            if (r8 == r1) goto L4e
            android.graphics.drawable.AnimatedImageDrawable r8 = coil3.UriKt$$ExternalSyntheticBUOutline0.m856m(r7)
            coil3.request.Options r1 = r6.options
            int r1 = coil3.gif.ImageRequestsKt.getRepeatCount(r1)
            r8.setRepeatCount(r1)
        L4e:
            coil3.request.Options r8 = r6.options
            kotlin.jvm.functions.Function0 r8 = coil3.gif.ImageRequestsKt.getAnimationStartCallback(r8)
            coil3.request.Options r1 = r6.options
            kotlin.jvm.functions.Function0 r1 = coil3.gif.ImageRequestsKt.getAnimationEndCallback(r1)
            if (r8 != 0) goto L5e
            if (r1 == 0) goto L76
        L5e:
            kotlinx.coroutines.scheduling.DefaultScheduler r4 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.android.HandlerContext r4 = kotlinx.coroutines.internal.MainDispatcherLoader.dispatcher
            kotlinx.coroutines.android.HandlerContext r4 = r4.immediate
            coil3.gif.AnimatedImageDecoder$wrapDrawable$2 r5 = new coil3.gif.AnimatedImageDecoder$wrapDrawable$2
            r5.<init>(r7, r8, r1, r2)
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r8 = kotlinx.coroutines.JobKt.withContext(r4, r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r0) goto L76
            return r0
        L76:
            coil3.size.ScaleDrawable r8 = new coil3.size.ScaleDrawable
            coil3.request.Options r6 = r6.options
            coil3.size.Scale r6 = r6.getScale()
            r8.<init>(r7, r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.gif.AnimatedImageDecoder.wrapDrawable(android.graphics.drawable.Drawable, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
    
        if (r1 == r5) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object decode(kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof coil3.gif.AnimatedImageDecoder$decode$1
            if (r0 == 0) goto L13
            r0 = r9
            coil3.gif.AnimatedImageDecoder$decode$1 r0 = (coil3.gif.AnimatedImageDecoder$decode$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.gif.AnimatedImageDecoder$decode$1 r0 = new coil3.gif.AnimatedImageDecoder$decode$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L40
            if (r1 == r4) goto L35
            if (r1 != r3) goto L2f
            java.lang.Object r8 = r0.L$0
            kotlin.jvm.internal.Ref$BooleanRef r8 = (kotlin.jvm.internal.Ref$BooleanRef) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L72
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r2
        L35:
            java.lang.Object r1 = r0.L$0
            kotlin.jvm.internal.Ref$BooleanRef r1 = (kotlin.jvm.internal.Ref$BooleanRef) r1
            kotlin.ResultKt.throwOnFailure(r9)
            r7 = r1
            r1 = r9
            r9 = r7
            goto L62
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$BooleanRef r9 = new kotlin.jvm.internal.Ref$BooleanRef
            r9.<init>()
            kotlin.text.Regex$$ExternalSyntheticLambda1 r1 = new kotlin.text.Regex$$ExternalSyntheticLambda1
            r6 = 17
            r1.<init>(r6, r8, r9)
            r0.L$0 = r9
            r0.label = r4
            kotlinx.coroutines.InterruptibleKt$runInterruptible$2 r4 = new kotlinx.coroutines.InterruptibleKt$runInterruptible$2
            r6 = 0
            r4.<init>(r1, r2, r6)
            kotlin.coroutines.EmptyCoroutineContext r1 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.Object r1 = kotlinx.coroutines.JobKt.withContext(r1, r4, r0)
            if (r1 != r5) goto L62
            goto L6e
        L62:
            android.graphics.drawable.Drawable r1 = (android.graphics.drawable.Drawable) r1
            r0.L$0 = r9
            r0.label = r3
            java.lang.Object r8 = r8.wrapDrawable(r1, r0)
            if (r8 != r5) goto L6f
        L6e:
            return r5
        L6f:
            r7 = r9
            r9 = r8
            r8 = r7
        L72:
            android.graphics.drawable.Drawable r9 = (android.graphics.drawable.Drawable) r9
            coil3.Image r9 = coil3.Image_androidKt.asImage(r9)
            boolean r8 = r8.element
            coil3.decode.DecodeResult r0 = new coil3.decode.DecodeResult
            r0.<init>(r9, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.gif.AnimatedImageDecoder.decode(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Decoder.Factory {
        private final boolean enforceMinimumFrameDelay;

        public /* synthetic */ Factory(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Build.VERSION.SDK_INT < 34 : z);
        }

        private final boolean isApplicable(BufferedSource bufferedSource) {
            DecodeUtils decodeUtils = DecodeUtils.INSTANCE;
            if (DecodeUtilsKt.isGif(decodeUtils, bufferedSource) || DecodeUtilsKt.isAnimatedWebP(decodeUtils, bufferedSource)) {
                return true;
            }
            return Build.VERSION.SDK_INT >= 30 && DecodeUtilsKt.isAnimatedHeif(decodeUtils, bufferedSource);
        }

        @Override // coil3.decode.Decoder.Factory
        public Decoder create(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader) {
            if (isApplicable(sourceFetchResult.getSource().source())) {
                return new AnimatedImageDecoder(sourceFetchResult.getSource(), options, this.enforceMinimumFrameDelay);
            }
            return null;
        }

        public Factory(boolean z) {
            this.enforceMinimumFrameDelay = z;
        }

        public Factory() {
            this(false, 1, null);
        }
    }

    public AnimatedImageDecoder(ImageSource imageSource, Options options, boolean z) {
        this.source = imageSource;
        this.options = options;
        this.enforceMinimumFrameDelay = z;
    }
}
