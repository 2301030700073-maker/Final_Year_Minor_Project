package coil3.gif;

import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.room.Room;
import coil3.decode.Decoder;
import coil3.decode.ImageSource;
import coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import java.nio.ByteBuffer;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Ref$BooleanRef;
import okio.BufferedSource;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatedImageDecoder implements Decoder {
    public final boolean enforceMinimumFrameDelay;
    public final Options options;
    public final ImageSource source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Factory implements Decoder.Factory {
        public final boolean enforceMinimumFrameDelay;

        public Factory() {
            this.enforceMinimumFrameDelay = Build.VERSION.SDK_INT < 34;
        }

        @Override // coil3.decode.Decoder.Factory
        public final Decoder create(SourceFetchResult sourceFetchResult, Options options) {
            BufferedSource source = sourceFetchResult.source.source();
            if (!source.rangeEquals(0L, DecodeUtilsKt.GIF_HEADER_89A) && !source.rangeEquals(0L, DecodeUtilsKt.GIF_HEADER_87A) && (!source.rangeEquals(0L, DecodeUtilsKt.WEBP_HEADER_RIFF) || !source.rangeEquals(8L, DecodeUtilsKt.WEBP_HEADER_WEBP) || !source.rangeEquals(12L, DecodeUtilsKt.WEBP_HEADER_VPX8) || !source.request(21L) || ((byte) (source.getBuffer().getByte(20L) & 2)) <= 0)) {
                if (Build.VERSION.SDK_INT < 30 || !source.rangeEquals(4L, DecodeUtilsKt.HEIF_HEADER_FTYP)) {
                    return null;
                }
                if (!source.rangeEquals(8L, DecodeUtilsKt.HEIF_HEADER_MSF1) && !source.rangeEquals(8L, DecodeUtilsKt.HEIF_HEADER_HEVC) && !source.rangeEquals(8L, DecodeUtilsKt.HEIF_HEADER_HEVX)) {
                    return null;
                }
            }
            return new AnimatedImageDecoder(sourceFetchResult.source, options, this.enforceMinimumFrameDelay);
        }
    }

    public AnimatedImageDecoder(ImageSource imageSource, Options options, boolean z) {
        this.source = imageSource;
        this.options = options;
        this.enforceMinimumFrameDelay = z;
    }

    public static final Drawable decode$lambda$0(AnimatedImageDecoder animatedImageDecoder, Ref$BooleanRef ref$BooleanRef) {
        ImageSource maybeWrapImageSourceToRewriteFrameDelay = Room.maybeWrapImageSourceToRewriteFrameDelay(animatedImageDecoder.source, animatedImageDecoder.enforceMinimumFrameDelay);
        try {
            int i = 1;
            ImageDecoder.Source imageDecoderSourceOrNull = FileUtil.toImageDecoderSourceOrNull(maybeWrapImageSourceToRewriteFrameDelay, animatedImageDecoder.options, true);
            if (imageDecoderSourceOrNull == null) {
                BufferedSource source = maybeWrapImageSourceToRewriteFrameDelay.source();
                try {
                    source.request(Long.MAX_VALUE);
                    ByteBuffer allocateDirect = ByteBuffer.allocateDirect((int) source.getBuffer().size);
                    while (!source.getBuffer().exhausted()) {
                        source.getBuffer().read(allocateDirect);
                    }
                    allocateDirect.flip();
                    source.close();
                    imageDecoderSourceOrNull = ImageDecoder.createSource(allocateDirect);
                } finally {
                }
            }
            Drawable decodeDrawable = ImageDecoder.decodeDrawable(imageDecoderSourceOrNull, new StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1(animatedImageDecoder, ref$BooleanRef, i));
            TuplesKt.closeFinally(maybeWrapImageSourceToRewriteFrameDelay, null);
            return decodeDrawable;
        } finally {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        if (r2 == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decode(kotlin.coroutines.Continuation r9) {
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
            goto L1a
        L13:
            coil3.gif.AnimatedImageDecoder$decode$1 r0 = new coil3.gif.AnimatedImageDecoder$decode$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r9 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r9
            r0.<init>(r8, r9)
        L1a:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3e
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kotlin.jvm.internal.Ref$BooleanRef r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6f
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r3
        L35:
            kotlin.jvm.internal.Ref$BooleanRef r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r7 = r2
            r2 = r9
            r9 = r7
            goto L5f
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$BooleanRef r9 = new kotlin.jvm.internal.Ref$BooleanRef
            r9.<init>()
            kotlin.text.Regex$$ExternalSyntheticLambda0 r2 = new kotlin.text.Regex$$ExternalSyntheticLambda0
            r2.<init>(r4, r8, r9)
            r0.L$0 = r9
            r0.label = r5
            org.wikipedia.donate.DonateDialog$onCreateView$3$1 r5 = new org.wikipedia.donate.DonateDialog$onCreateView$3$1
            r6 = 10
            r5.<init>(r6, r2, r3)
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.Object r2 = kotlinx.coroutines.AwaitKt.withContext(r2, r5, r0)
            if (r2 != r1) goto L5f
            goto L6b
        L5f:
            android.graphics.drawable.Drawable r2 = (android.graphics.drawable.Drawable) r2
            r0.L$0 = r9
            r0.label = r4
            java.lang.Object r8 = r8.wrapDrawable(r2, r0)
            if (r8 != r1) goto L6c
        L6b:
            return r1
        L6c:
            r7 = r9
            r9 = r8
            r8 = r7
        L6f:
            android.graphics.drawable.Drawable r9 = (android.graphics.drawable.Drawable) r9
            coil3.Image r9 = coil3.UriKt.asImage(r9)
            boolean r8 = r8.element
            coil3.decode.DecodeResult r0 = new coil3.decode.DecodeResult
            r0.<init>(r9, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.gif.AnimatedImageDecoder.decode(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object wrapDrawable(android.graphics.drawable.Drawable r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof coil3.gif.AnimatedImageDecoder$wrapDrawable$1
            if (r0 == 0) goto L13
            r0 = r9
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
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            coil3.request.Options r7 = r7.options
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2e
            java.lang.Object r8 = r0.L$0
            android.graphics.drawable.Drawable r8 = (android.graphics.drawable.Drawable) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L85
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r8 instanceof android.graphics.drawable.AnimatedImageDrawable
            if (r9 != 0) goto L3c
            return r8
        L3c:
            coil3.Extras$Key r9 = coil3.gif.ImageRequestsKt.repeatCountKey
            java.lang.Object r2 = coil3.UriKt.getExtra(r7, r9)
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            r5 = -2
            if (r2 == r5) goto L5b
            r2 = r8
            android.graphics.drawable.AnimatedImageDrawable r2 = (android.graphics.drawable.AnimatedImageDrawable) r2
            java.lang.Object r9 = coil3.UriKt.getExtra(r7, r9)
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            r2.setRepeatCount(r9)
        L5b:
            coil3.Extras$Key r9 = coil3.gif.ImageRequestsKt.animationStartCallbackKey
            java.lang.Object r9 = coil3.UriKt.getExtra(r7, r9)
            kotlin.jvm.functions.Function0 r9 = (kotlin.jvm.functions.Function0) r9
            coil3.Extras$Key r2 = coil3.gif.ImageRequestsKt.animationEndCallbackKey
            java.lang.Object r2 = coil3.UriKt.getExtra(r7, r2)
            kotlin.jvm.functions.Function0 r2 = (kotlin.jvm.functions.Function0) r2
            if (r9 != 0) goto L6f
            if (r2 == 0) goto L85
        L6f:
            kotlinx.coroutines.scheduling.DefaultScheduler r5 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.android.HandlerContext r5 = kotlinx.coroutines.internal.MainDispatcherLoader.dispatcher
            kotlinx.coroutines.android.HandlerContext r5 = r5.immediate
            coil3.gif.AnimatedImageDecoder$wrapDrawable$2 r6 = new coil3.gif.AnimatedImageDecoder$wrapDrawable$2
            r6.<init>(r8, r9, r2, r3)
            r0.L$0 = r8
            r0.label = r4
            java.lang.Object r9 = kotlinx.coroutines.AwaitKt.withContext(r5, r6, r0)
            if (r9 != r1) goto L85
            return r1
        L85:
            coil3.size.ScaleDrawable r9 = new coil3.size.ScaleDrawable
            coil3.size.Scale r7 = r7.scale
            r9.<init>(r8, r7)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.gif.AnimatedImageDecoder.wrapDrawable(android.graphics.drawable.Drawable, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
