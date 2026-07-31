package coil3.decode;

import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlinx.coroutines.sync.SemaphoreImpl;
import okio.Buffer;
import okio.ForwardingSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BitmapFactoryDecoder implements Decoder {
    public final ExifOrientationStrategy$$ExternalSyntheticLambda0 exifOrientationStrategy;
    public final Options options;
    public final SemaphoreImpl parallelismLock;
    public final ImageSource source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ExceptionCatchingSource extends ForwardingSource {
        public Exception exception;

        @Override // okio.ForwardingSource, okio.Source
        public final long read(long j, Buffer buffer) {
            try {
                return super.read(j, buffer);
            } catch (Exception e) {
                this.exception = e;
                throw e;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    /* JADX WARN: Removed duplicated region for block: B:106:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0246  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static coil3.decode.DecodeResult $r8$lambda$VWPXjvPloVsydy3Nv6wOsK8OwNc(coil3.decode.BitmapFactoryDecoder r23) {
        /*
            Method dump skipped, instructions count: 806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.BitmapFactoryDecoder.$r8$lambda$VWPXjvPloVsydy3Nv6wOsK8OwNc(coil3.decode.BitmapFactoryDecoder):coil3.decode.DecodeResult");
    }

    public BitmapFactoryDecoder(ImageSource imageSource, Options options, SemaphoreImpl semaphoreImpl, ExifOrientationStrategy$$ExternalSyntheticLambda0 exifOrientationStrategy$$ExternalSyntheticLambda0) {
        this.source = imageSource;
        this.options = options;
        this.parallelismLock = semaphoreImpl;
        this.exifOrientationStrategy = exifOrientationStrategy$$ExternalSyntheticLambda0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004d, code lost:
    
        if (r8.acquire(r0) == r5) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r1v4, types: [kotlinx.coroutines.sync.Semaphore] */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decode(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
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
            goto L6c
        L2f:
            r8 = move-exception
            goto L7a
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r2
        L37:
            java.lang.Object r1 = r0.L$0
            kotlinx.coroutines.sync.Semaphore r1 = (kotlinx.coroutines.sync.Semaphore) r1
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r1
            goto L50
        L40:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.SemaphoreImpl r8 = r7.parallelismLock
            r0.L$0 = r8
            r0.label = r4
            java.lang.Object r1 = r8.acquire(r0)
            if (r1 != r5) goto L50
            goto L68
        L50:
            androidx.work.Worker$$ExternalSyntheticLambda0 r1 = new androidx.work.Worker$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L78
            r4 = 23
            r1.<init>(r7, r4)     // Catch: java.lang.Throwable -> L78
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L78
            r0.label = r3     // Catch: java.lang.Throwable -> L78
            kotlin.coroutines.EmptyCoroutineContext r7 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE     // Catch: java.lang.Throwable -> L78
            kotlinx.coroutines.InterruptibleKt$runInterruptible$2 r3 = new kotlinx.coroutines.InterruptibleKt$runInterruptible$2     // Catch: java.lang.Throwable -> L78
            r3.<init>(r1, r2)     // Catch: java.lang.Throwable -> L78
            java.lang.Object r7 = kotlinx.coroutines.JobKt.withContext(r7, r3, r0)     // Catch: java.lang.Throwable -> L78
            if (r7 != r5) goto L69
        L68:
            return r5
        L69:
            r6 = r8
            r8 = r7
            r7 = r6
        L6c:
            coil3.decode.DecodeResult r8 = (coil3.decode.DecodeResult) r8     // Catch: java.lang.Throwable -> L2f
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r7 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r7
            r7.release()
            return r8
        L74:
            r6 = r8
            r8 = r7
            r7 = r6
            goto L7a
        L78:
            r7 = move-exception
            goto L74
        L7a:
            kotlinx.coroutines.sync.SemaphoreAndMutexImpl r7 = (kotlinx.coroutines.sync.SemaphoreAndMutexImpl) r7
            r7.release()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.BitmapFactoryDecoder.decode(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
