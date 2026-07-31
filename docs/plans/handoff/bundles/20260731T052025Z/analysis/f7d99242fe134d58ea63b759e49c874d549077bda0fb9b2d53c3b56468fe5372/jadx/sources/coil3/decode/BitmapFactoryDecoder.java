package coil3.decode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import coil3.Image;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.util.BitmapsKt;
import coil3.util.IntPair;
import coil3.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.sync.Semaphore;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;
import okio.ForwardingSource;
import okio.RealBufferedSource;
import okio.RealBufferedSource$inputStream$1;
import okio.Source;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BitmapFactoryDecoder implements Decoder {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_MAX_PARALLELISM = 4;
    private final ExifOrientationStrategy exifOrientationStrategy;
    private final Options options;
    private final Semaphore parallelismLock;
    private final ImageSource source;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class ExceptionCatchingSource extends ForwardingSource {
        private Exception exception;

        public ExceptionCatchingSource(Source source) {
            super(source);
        }

        public final Exception getException() {
            return this.exception;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j) {
            try {
                return super.read(buffer, j);
            } catch (Exception e) {
                this.exception = e;
                throw e;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BitmapFactoryDecoder(coil3.decode.ImageSource r1, coil3.request.Options r2, kotlinx.coroutines.sync.Semaphore r3, coil3.decode.ExifOrientationStrategy r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
        /*
            r0 = this;
            r6 = r5 & 4
            if (r6 == 0) goto Le
            int r3 = kotlinx.coroutines.sync.SemaphoreKt.MAX_SPIN_CYCLES
            kotlinx.coroutines.sync.SemaphoreImpl r3 = new kotlinx.coroutines.sync.SemaphoreImpl
            r6 = 2147483647(0x7fffffff, float:NaN)
            r3.<init>(r6)
        Le:
            r5 = r5 & 8
            if (r5 == 0) goto L14
            coil3.decode.ExifOrientationStrategy r4 = coil3.decode.ExifOrientationStrategy.RESPECT_PERFORMANCE
        L14:
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.BitmapFactoryDecoder.<init>(coil3.decode.ImageSource, coil3.request.Options, kotlinx.coroutines.sync.Semaphore, coil3.decode.ExifOrientationStrategy, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    private final void configureConfig(BitmapFactory.Options options, ExifData exifData) {
        Bitmap.Config config;
        Bitmap.Config config2;
        Bitmap.Config config3;
        Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(this.options);
        if (exifData.isFlipped() || ExifUtilsKt.isRotated(exifData)) {
            bitmapConfig = BitmapsKt.toSoftware(bitmapConfig);
        }
        if (ImageRequests_androidKt.getAllowRgb565(this.options) && bitmapConfig == Bitmap.Config.ARGB_8888 && Intrinsics.areEqual(options.outMimeType, UtilsKt.MIME_TYPE_JPEG)) {
            bitmapConfig = Bitmap.Config.RGB_565;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            config = options.outConfig;
            config2 = Bitmap.Config.RGBA_F16;
            if (config == config2) {
                config3 = Bitmap.Config.HARDWARE;
                if (bitmapConfig != config3) {
                    bitmapConfig = config2;
                }
            }
        }
        options.inPreferredConfig = bitmapConfig;
    }

    private final void configureScale(BitmapFactory.Options options, ExifData exifData) {
        if (options.outWidth <= 0 || options.outHeight <= 0) {
            options.inSampleSize = 1;
            options.inScaled = false;
            return;
        }
        int i = ExifUtilsKt.isSwapped(exifData) ? options.outHeight : options.outWidth;
        int i2 = ExifUtilsKt.isSwapped(exifData) ? options.outWidth : options.outHeight;
        long m858computeDstSizesEdh43o = DecodeUtils.m858computeDstSizesEdh43o(i, i2, this.options.getSize(), this.options.getScale(), ImageRequestsKt.getMaxBitmapSize(this.options));
        int m917getFirstimpl = IntPair.m917getFirstimpl(m858computeDstSizesEdh43o);
        int m918getSecondimpl = IntPair.m918getSecondimpl(m858computeDstSizesEdh43o);
        int calculateInSampleSize = DecodeUtils.calculateInSampleSize(i, i2, m917getFirstimpl, m918getSecondimpl, this.options.getScale());
        options.inSampleSize = calculateInSampleSize;
        double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(i / calculateInSampleSize, i2 / calculateInSampleSize, m917getFirstimpl, m918getSecondimpl, this.options.getScale(), ImageRequestsKt.getMaxBitmapSize(this.options));
        if (this.options.getPrecision() == Precision.INEXACT && computeSizeMultiplier > 1.0d) {
            computeSizeMultiplier = 1.0d;
        }
        boolean z = computeSizeMultiplier == 1.0d;
        options.inScaled = !z;
        if (z) {
            return;
        }
        if (computeSizeMultiplier > 1.0d) {
            options.inDensity = MathKt.roundToInt(2.147483647E9d / computeSizeMultiplier);
            options.inTargetDensity = Integer.MAX_VALUE;
        } else {
            options.inDensity = Integer.MAX_VALUE;
            options.inTargetDensity = MathKt.roundToInt(2.147483647E9d * computeSizeMultiplier);
        }
    }

    private final DecodeResult decode(BitmapFactory.Options options) {
        ExceptionCatchingSource exceptionCatchingSource = new ExceptionCatchingSource(this.source.source());
        RealBufferedSource realBufferedSource = new RealBufferedSource(exceptionCatchingSource);
        boolean z = true;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(new RealBufferedSource$inputStream$1(realBufferedSource.peek()), null, options);
        Exception exception = exceptionCatchingSource.getException();
        if (exception != null) {
            throw exception;
        }
        options.inJustDecodeBounds = false;
        ExifUtils exifUtils = ExifUtils.INSTANCE;
        ExifData exifData = exifUtils.getExifData(options.outMimeType, realBufferedSource, this.exifOrientationStrategy);
        Exception exception2 = exceptionCatchingSource.getException();
        if (exception2 != null) {
            throw exception2;
        }
        options.inMutable = false;
        if (Build.VERSION.SDK_INT >= 26 && ImageRequests_androidKt.getColorSpace(this.options) != null) {
            options.inPreferredColorSpace = ImageRequests_androidKt.getColorSpace(this.options);
        }
        options.inPremultiplied = ImageRequests_androidKt.getPremultipliedAlpha(this.options);
        configureConfig(options, exifData);
        configureScale(options, exifData);
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(new RealBufferedSource$inputStream$1(realBufferedSource), null, options);
            realBufferedSource.close();
            Exception exception3 = exceptionCatchingSource.getException();
            if (exception3 != null) {
                throw exception3;
            }
            if (decodeStream == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it's not encoded as a valid image format.");
                return null;
            }
            decodeStream.setDensity(this.options.getContext().getResources().getDisplayMetrics().densityDpi);
            Image asImage = Image_androidKt.asImage(new BitmapDrawable(this.options.getContext().getResources(), exifUtils.reverseTransformations(decodeStream, exifData)));
            if (options.inSampleSize <= 1 && !options.inScaled) {
                z = false;
            }
            return new DecodeResult(asImage, z);
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DecodeResult decode$lambda$0$0(BitmapFactoryDecoder bitmapFactoryDecoder) {
        return bitmapFactoryDecoder.decode(new BitmapFactory.Options());
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
        private final ExifOrientationStrategy exifOrientationStrategy;
        private final Semaphore parallelismLock;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Factory(kotlinx.coroutines.sync.Semaphore r1, coil3.decode.ExifOrientationStrategy r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
            /*
                r0 = this;
                r4 = r3 & 1
                if (r4 == 0) goto Lc
                int r1 = kotlinx.coroutines.sync.SemaphoreKt.MAX_SPIN_CYCLES
                kotlinx.coroutines.sync.SemaphoreImpl r1 = new kotlinx.coroutines.sync.SemaphoreImpl
                r4 = 4
                r1.<init>(r4)
            Lc:
                r3 = r3 & 2
                if (r3 == 0) goto L12
                coil3.decode.ExifOrientationStrategy r2 = coil3.decode.ExifOrientationStrategy.RESPECT_PERFORMANCE
            L12:
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: coil3.decode.BitmapFactoryDecoder.Factory.<init>(kotlinx.coroutines.sync.Semaphore, coil3.decode.ExifOrientationStrategy, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        @Override // coil3.decode.Decoder.Factory
        public Decoder create(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader) {
            return new BitmapFactoryDecoder(sourceFetchResult.getSource(), options, this.parallelismLock, this.exifOrientationStrategy);
        }

        public Factory(Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy) {
            this.parallelismLock = semaphore;
            this.exifOrientationStrategy = exifOrientationStrategy;
        }

        public Factory() {
            this(null, null, 3, null);
        }
    }

    public BitmapFactoryDecoder(ImageSource imageSource, Options options, Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy) {
        this.source = imageSource;
        this.options = options;
        this.parallelismLock = semaphore;
        this.exifOrientationStrategy = exifOrientationStrategy;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r8).acquire(r0) == r5) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object decode(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof coil3.decode.BitmapFactoryDecoder$decode$1
            if (r0 == 0) goto L13
            r0 = r8
            coil3.decode.BitmapFactoryDecoder$decode$1 r0 = (coil3.decode.BitmapFactoryDecoder$decode$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.decode.BitmapFactoryDecoder$decode$1 r0 = new coil3.decode.BitmapFactoryDecoder$decode$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L40
            if (r1 == r4) goto L37
            if (r1 != r3) goto L31
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.sync.Semaphore r7 = (kotlinx.coroutines.sync.Semaphore) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2f
            goto L6e
        L2f:
            r8 = move-exception
            goto L7c
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r2
        L37:
            java.lang.Object r1 = r0.L$0
            kotlinx.coroutines.sync.Semaphore r1 = (kotlinx.coroutines.sync.Semaphore) r1
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r1
            goto L53
        L40:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Semaphore r8 = r7.parallelismLock
            r0.L$0 = r8
            r0.label = r4
            r1 = r8
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r1 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r1
            java.lang.Object r1 = r1.acquire(r0)
            if (r1 != r5) goto L53
            goto L6a
        L53:
            com.fsck.k9.K9$$ExternalSyntheticLambda0 r1 = new com.fsck.k9.K9$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L7a
            r1.<init>(r4, r7)     // Catch: java.lang.Throwable -> L7a
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L7a
            r0.label = r3     // Catch: java.lang.Throwable -> L7a
            kotlin.coroutines.EmptyCoroutineContext r7 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE     // Catch: java.lang.Throwable -> L7a
            kotlinx.coroutines.InterruptibleKt$runInterruptible$2 r3 = new kotlinx.coroutines.InterruptibleKt$runInterruptible$2     // Catch: java.lang.Throwable -> L7a
            r4 = 0
            r3.<init>(r1, r2, r4)     // Catch: java.lang.Throwable -> L7a
            java.lang.Object r7 = kotlinx.coroutines.JobKt.withContext(r7, r3, r0)     // Catch: java.lang.Throwable -> L7a
            if (r7 != r5) goto L6b
        L6a:
            return r5
        L6b:
            r6 = r8
            r8 = r7
            r7 = r6
        L6e:
            coil3.decode.DecodeResult r8 = (coil3.decode.DecodeResult) r8     // Catch: java.lang.Throwable -> L2f
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r7 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r7
            r7.release()
            return r8
        L76:
            r6 = r8
            r8 = r7
            r7 = r6
            goto L7c
        L7a:
            r7 = move-exception
            goto L76
        L7c:
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r7 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r7
            r7.release()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.BitmapFactoryDecoder.decode(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
