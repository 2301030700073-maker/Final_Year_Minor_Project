package coil3.decode;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import kotlinx.coroutines.sync.SemaphoreImpl;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StaticImageDecoder implements Decoder {
    public final AutoCloseable closeable;
    public final Options options;
    public final SemaphoreImpl parallelismLock;
    public final ImageDecoder.Source source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Factory implements Decoder.Factory {
        public final SemaphoreImpl parallelismLock;

        public Factory(SemaphoreImpl semaphoreImpl) {
            this.parallelismLock = semaphoreImpl;
        }

        @Override // coil3.decode.Decoder.Factory
        public final Decoder create(SourceFetchResult sourceFetchResult, Options options) {
            ImageDecoder.Source imageDecoderSourceOrNull;
            Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(options);
            if ((bitmapConfig == Bitmap.Config.ARGB_8888 || bitmapConfig == Bitmap.Config.HARDWARE) && (imageDecoderSourceOrNull = FileUtil.toImageDecoderSourceOrNull(sourceFetchResult.source, options, false)) != null) {
                return new StaticImageDecoder(imageDecoderSourceOrNull, sourceFetchResult.source, options, this.parallelismLock);
            }
            return null;
        }
    }

    public StaticImageDecoder(ImageDecoder.Source source, AutoCloseable autoCloseable, Options options, SemaphoreImpl semaphoreImpl) {
        this.source = source;
        this.closeable = autoCloseable;
        this.options = options;
        this.parallelismLock = semaphoreImpl;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decode(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof coil3.decode.StaticImageDecoder$decode$1
            if (r0 == 0) goto L13
            r0 = r7
            coil3.decode.StaticImageDecoder$decode$1 r0 = (coil3.decode.StaticImageDecoder$decode$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            coil3.decode.StaticImageDecoder$decode$1 r0 = new coil3.decode.StaticImageDecoder$decode$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r7 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r7
            r0.<init>(r6, r7)
        L1a:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            kotlinx.coroutines.sync.SemaphoreImpl r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L43
        L2c:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.SemaphoreImpl r7 = r6.parallelismLock
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r0 = r7.acquire(r0)
            if (r0 != r1) goto L42
            return r1
        L42:
            r0 = r7
        L43:
            java.lang.AutoCloseable r7 = r6.closeable     // Catch: java.lang.Throwable -> L69
            kotlin.jvm.internal.Ref$BooleanRef r1 = new kotlin.jvm.internal.Ref$BooleanRef     // Catch: java.lang.Throwable -> L6b
            r1.<init>()     // Catch: java.lang.Throwable -> L6b
            android.graphics.ImageDecoder$Source r2 = r6.source     // Catch: java.lang.Throwable -> L6b
            coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1 r4 = new coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1     // Catch: java.lang.Throwable -> L6b
            r5 = 0
            r4.<init>(r6, r1, r5)     // Catch: java.lang.Throwable -> L6b
            android.graphics.Bitmap r6 = android.graphics.ImageDecoder.decodeBitmap(r2, r4)     // Catch: java.lang.Throwable -> L6b
            coil3.decode.DecodeResult r2 = new coil3.decode.DecodeResult     // Catch: java.lang.Throwable -> L6b
            coil3.BitmapImage r4 = new coil3.BitmapImage     // Catch: java.lang.Throwable -> L6b
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L6b
            boolean r6 = r1.element     // Catch: java.lang.Throwable -> L6b
            r2.<init>(r4, r6)     // Catch: java.lang.Throwable -> L6b
            kotlin.TuplesKt.closeFinally(r7, r3)     // Catch: java.lang.Throwable -> L69
            r0.release()
            return r2
        L69:
            r6 = move-exception
            goto L72
        L6b:
            r6 = move-exception
            throw r6     // Catch: java.lang.Throwable -> L6d
        L6d:
            r1 = move-exception
            kotlin.TuplesKt.closeFinally(r7, r6)     // Catch: java.lang.Throwable -> L69
            throw r1     // Catch: java.lang.Throwable -> L69
        L72:
            r0.release()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.StaticImageDecoder.decode(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
