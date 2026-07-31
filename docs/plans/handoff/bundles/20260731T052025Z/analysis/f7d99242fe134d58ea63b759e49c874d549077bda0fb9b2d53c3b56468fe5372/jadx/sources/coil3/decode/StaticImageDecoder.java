package coil3.decode;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import coil3.ImageLoader;
import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.util.BitmapsKt;
import kotlinx.coroutines.sync.Semaphore;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StaticImageDecoder implements Decoder {
    private final AutoCloseable closeable;
    private final Options options;
    private final Semaphore parallelismLock;
    private final ImageDecoder.Source source;

    public StaticImageDecoder(ImageDecoder.Source source, AutoCloseable autoCloseable, Options options, Semaphore semaphore) {
        this.source = source;
        this.closeable = autoCloseable;
        this.options = options;
        this.parallelismLock = semaphore;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configureImageDecoderProperties(ImageDecoder imageDecoder) {
        imageDecoder.setOnPartialImageListener(new StaticImageDecoder$$ExternalSyntheticLambda0());
        imageDecoder.setAllocator(BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(this.options)) ? 3 : 1);
        imageDecoder.setMemorySizePolicy(!ImageRequests_androidKt.getAllowRgb565(this.options) ? 1 : 0);
        if (ImageRequests_androidKt.getColorSpace(this.options) != null) {
            imageDecoder.setTargetColorSpace(ImageRequests_androidKt.getColorSpace(this.options));
        }
        imageDecoder.setUnpremultipliedRequired(!ImageRequests_androidKt.getPremultipliedAlpha(this.options));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean configureImageDecoderProperties$lambda$0(ImageDecoder.DecodeException decodeException) {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object decode(kotlin.coroutines.Continuation r7) {
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
            goto L18
        L13:
            coil3.decode.StaticImageDecoder$decode$1 r0 = new coil3.decode.StaticImageDecoder$decode$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.sync.Semaphore r0 = (kotlinx.coroutines.sync.Semaphore) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L46
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Semaphore r7 = r6.parallelismLock
            r0.L$0 = r7
            r0.label = r3
            r1 = r7
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r1 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r1
            java.lang.Object r0 = r1.acquire(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L45
            return r1
        L45:
            r0 = r7
        L46:
            java.lang.AutoCloseable r7 = r6.closeable     // Catch: java.lang.Throwable -> L6d
            kotlin.jvm.internal.Ref$BooleanRef r1 = new kotlin.jvm.internal.Ref$BooleanRef     // Catch: java.lang.Throwable -> L6f
            r1.<init>()     // Catch: java.lang.Throwable -> L6f
            android.graphics.ImageDecoder$Source r4 = r6.source     // Catch: java.lang.Throwable -> L6f
            coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1 r5 = new coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1     // Catch: java.lang.Throwable -> L6f
            r5.<init>()     // Catch: java.lang.Throwable -> L6f
            android.graphics.Bitmap r6 = android.graphics.ImageDecoder.decodeBitmap(r4, r5)     // Catch: java.lang.Throwable -> L6f
            coil3.decode.DecodeResult r4 = new coil3.decode.DecodeResult     // Catch: java.lang.Throwable -> L6f
            r5 = 0
            coil3.BitmapImage r6 = coil3.Image_androidKt.asImage$default(r6, r5, r3, r2)     // Catch: java.lang.Throwable -> L6f
            boolean r1 = r1.element     // Catch: java.lang.Throwable -> L6f
            r4.<init>(r6, r1)     // Catch: java.lang.Throwable -> L6f
            okhttp3.Cookie.Companion.closeFinally(r7, r2)     // Catch: java.lang.Throwable -> L6d
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r0 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r0
            r0.release()
            return r4
        L6d:
            r6 = move-exception
            goto L76
        L6f:
            r6 = move-exception
            throw r6     // Catch: java.lang.Throwable -> L71
        L71:
            r1 = move-exception
            okhttp3.Cookie.Companion.closeFinally(r7, r6)     // Catch: java.lang.Throwable -> L6d
            throw r1     // Catch: java.lang.Throwable -> L6d
        L76:
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r0 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r0
            r0.release()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.StaticImageDecoder.decode(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Decoder.Factory {
        private final Semaphore parallelismLock;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Factory(kotlinx.coroutines.sync.Semaphore r1, int r2, kotlin.jvm.internal.DefaultConstructorMarker r3) {
            /*
                r0 = this;
                r2 = r2 & 1
                if (r2 == 0) goto Lc
                int r1 = kotlinx.coroutines.sync.SemaphoreKt.MAX_SPIN_CYCLES
                kotlinx.coroutines.sync.SemaphoreImpl r1 = new kotlinx.coroutines.sync.SemaphoreImpl
                r2 = 4
                r1.<init>(r2)
            Lc:
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: coil3.decode.StaticImageDecoder.Factory.<init>(kotlinx.coroutines.sync.Semaphore, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        private final boolean isApplicable(Options options) {
            Bitmap.Config config;
            Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(options);
            if (bitmapConfig == Bitmap.Config.ARGB_8888) {
                return true;
            }
            config = Bitmap.Config.HARDWARE;
            return bitmapConfig == config;
        }

        @Override // coil3.decode.Decoder.Factory
        public Decoder create(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader) {
            ImageDecoder.Source imageDecoderSourceOrNull;
            if (isApplicable(options) && (imageDecoderSourceOrNull = StaticImageDecoderKt.toImageDecoderSourceOrNull(sourceFetchResult.getSource(), options, false)) != null) {
                return new StaticImageDecoder(imageDecoderSourceOrNull, sourceFetchResult.getSource(), options, this.parallelismLock);
            }
            return null;
        }

        public Factory(Semaphore semaphore) {
            this.parallelismLock = semaphore;
        }

        public Factory() {
            this(null, 1, null);
        }
    }
}
