package coil3.decode;

import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlinx.coroutines.sync.SemaphoreImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BitmapFactoryDecoder implements Decoder {
    public final ExifOrientationStrategy$$ExternalSyntheticLambda0 exifOrientationStrategy;
    public final Options options;
    public final SemaphoreImpl parallelismLock;
    public final ImageSource source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Factory implements Decoder.Factory {
        public final ExifOrientationStrategy$$ExternalSyntheticLambda0 exifOrientationStrategy;
        public final SemaphoreImpl parallelismLock;

        public Factory(SemaphoreImpl semaphoreImpl, ExifOrientationStrategy$$ExternalSyntheticLambda0 exifOrientationStrategy$$ExternalSyntheticLambda0) {
            this.parallelismLock = semaphoreImpl;
            this.exifOrientationStrategy = exifOrientationStrategy$$ExternalSyntheticLambda0;
        }

        @Override // coil3.decode.Decoder.Factory
        public final Decoder create(SourceFetchResult sourceFetchResult, Options options) {
            return new BitmapFactoryDecoder(sourceFetchResult.source, options, this.parallelismLock, this.exifOrientationStrategy);
        }
    }

    public BitmapFactoryDecoder(ImageSource imageSource, Options options, SemaphoreImpl semaphoreImpl, ExifOrientationStrategy$$ExternalSyntheticLambda0 exifOrientationStrategy$$ExternalSyntheticLambda0) {
        this.source = imageSource;
        this.options = options;
        this.parallelismLock = semaphoreImpl;
        this.exifOrientationStrategy = exifOrientationStrategy$$ExternalSyntheticLambda0;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x00a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x024c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final coil3.decode.DecodeResult decode$lambda$0$0(coil3.decode.BitmapFactoryDecoder r23) {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.BitmapFactoryDecoder.decode$lambda$0$0(coil3.decode.BitmapFactoryDecoder):coil3.decode.DecodeResult");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004b, code lost:
    
        if (r8.acquire(r0) == r1) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decode(kotlin.coroutines.Continuation r8) {
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
            goto L1a
        L13:
            coil3.decode.BitmapFactoryDecoder$decode$1 r0 = new coil3.decode.BitmapFactoryDecoder$decode$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r8 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r8
            r0.<init>(r7, r8)
        L1a:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3e
            if (r2 == r5) goto L37
            if (r2 != r4) goto L31
            kotlinx.coroutines.sync.SemaphoreImpl r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2f
            goto L6c
        L2f:
            r8 = move-exception
            goto L78
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r3
        L37:
            kotlinx.coroutines.sync.SemaphoreImpl r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L4e
        L3e:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.SemaphoreImpl r8 = r7.parallelismLock
            r0.L$0 = r8
            r0.label = r5
            java.lang.Object r2 = r8.acquire(r0)
            if (r2 != r1) goto L4e
            goto L68
        L4e:
            androidx.work.Worker$$ExternalSyntheticLambda0 r2 = new androidx.work.Worker$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L76
            r5 = 14
            r2.<init>(r5, r7)     // Catch: java.lang.Throwable -> L76
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L76
            r0.label = r4     // Catch: java.lang.Throwable -> L76
            kotlin.coroutines.EmptyCoroutineContext r7 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE     // Catch: java.lang.Throwable -> L76
            org.wikipedia.donate.DonateDialog$onCreateView$3$1 r4 = new org.wikipedia.donate.DonateDialog$onCreateView$3$1     // Catch: java.lang.Throwable -> L76
            r5 = 10
            r4.<init>(r5, r2, r3)     // Catch: java.lang.Throwable -> L76
            java.lang.Object r7 = kotlinx.coroutines.AwaitKt.withContext(r7, r4, r0)     // Catch: java.lang.Throwable -> L76
            if (r7 != r1) goto L69
        L68:
            return r1
        L69:
            r6 = r8
            r8 = r7
            r7 = r6
        L6c:
            coil3.decode.DecodeResult r8 = (coil3.decode.DecodeResult) r8     // Catch: java.lang.Throwable -> L2f
            r7.release()
            return r8
        L72:
            r6 = r8
            r8 = r7
            r7 = r6
            goto L78
        L76:
            r7 = move-exception
            goto L72
        L78:
            r7.release()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.BitmapFactoryDecoder.decode(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
