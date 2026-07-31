package coil3.decode;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import kotlinx.coroutines.sync.SemaphoreImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StaticImageDecoder implements Decoder {
    public final AutoCloseable closeable;
    public final Options options;
    public final SemaphoreImpl parallelismLock;
    public final ImageDecoder.Source source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Factory implements Decoder.Factory {
        public final SemaphoreImpl parallelismLock;

        public Factory(SemaphoreImpl semaphoreImpl) {
            this.parallelismLock = semaphoreImpl;
        }

        @Override // coil3.decode.Decoder.Factory
        public final Decoder create(SourceFetchResult sourceFetchResult, Options options) {
            ImageDecoder.Source imageDecoderSourceOrNull;
            Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(options);
            if ((bitmapConfig == Bitmap.Config.ARGB_8888 || bitmapConfig == Bitmap.Config.HARDWARE) && (imageDecoderSourceOrNull = StaticImageDecoderKt.toImageDecoderSourceOrNull(sourceFetchResult.source, options)) != null) {
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

    /* JADX WARN: Removed duplicated region for block: B:31:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decode(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof coil3.decode.StaticImageDecoder$decode$1
            if (r0 == 0) goto L13
            r0 = r6
            coil3.decode.StaticImageDecoder$decode$1 r0 = (coil3.decode.StaticImageDecoder$decode$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.decode.StaticImageDecoder$decode$1 r0 = new coil3.decode.StaticImageDecoder$decode$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.sync.Semaphore r0 = (kotlinx.coroutines.sync.Semaphore) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L43
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.SemaphoreImpl r6 = r5.parallelismLock
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r0 = r6.acquire(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L42
            return r1
        L42:
            r0 = r6
        L43:
            java.lang.AutoCloseable r6 = r5.closeable     // Catch: java.lang.Throwable -> L6a
            kotlin.jvm.internal.Ref$BooleanRef r1 = new kotlin.jvm.internal.Ref$BooleanRef     // Catch: java.lang.Throwable -> L6c
            r1.<init>()     // Catch: java.lang.Throwable -> L6c
            android.graphics.ImageDecoder$Source r3 = r5.source     // Catch: java.lang.Throwable -> L6c
            coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1 r4 = new coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1     // Catch: java.lang.Throwable -> L6c
            r4.<init>()     // Catch: java.lang.Throwable -> L6c
            android.graphics.Bitmap r5 = android.graphics.ImageDecoder.decodeBitmap(r3, r4)     // Catch: java.lang.Throwable -> L6c
            coil3.decode.DecodeResult r3 = new coil3.decode.DecodeResult     // Catch: java.lang.Throwable -> L6c
            coil3.BitmapImage r4 = new coil3.BitmapImage     // Catch: java.lang.Throwable -> L6c
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L6c
            boolean r5 = r1.element     // Catch: java.lang.Throwable -> L6c
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L6c
            androidx.core.os.BundleKt.closeFinally(r6, r2)     // Catch: java.lang.Throwable -> L6a
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r0 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r0
            r0.release()
            return r3
        L6a:
            r5 = move-exception
            goto L73
        L6c:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L6e
        L6e:
            r1 = move-exception
            androidx.core.os.BundleKt.closeFinally(r6, r5)     // Catch: java.lang.Throwable -> L6a
            throw r1     // Catch: java.lang.Throwable -> L6a
        L73:
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r0 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r0
            r0.release()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.StaticImageDecoder.decode(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
