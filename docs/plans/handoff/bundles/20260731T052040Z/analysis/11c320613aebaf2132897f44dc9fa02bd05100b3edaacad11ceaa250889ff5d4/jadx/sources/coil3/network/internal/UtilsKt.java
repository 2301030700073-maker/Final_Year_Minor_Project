package coil3.network.internal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    /* JADX WARN: Removed duplicated region for block: B:25:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object readBuffer(coil3.network.SourceResponseBody r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof coil3.network.internal.UtilsKt$readBuffer$1
            if (r0 == 0) goto L13
            r0 = r5
            coil3.network.internal.UtilsKt$readBuffer$1 r0 = (coil3.network.internal.UtilsKt$readBuffer$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.network.internal.UtilsKt$readBuffer$1 r0 = new coil3.network.internal.UtilsKt$readBuffer$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L3e
            if (r1 != r2) goto L38
            java.lang.Object r4 = r0.L$3
            okio.Buffer r4 = (okio.Buffer) r4
            java.lang.Object r1 = r0.L$2
            coil3.network.SourceResponseBody r1 = (coil3.network.SourceResponseBody) r1
            java.lang.Object r1 = r0.L$1
            java.lang.AutoCloseable r1 = (java.lang.AutoCloseable) r1
            java.lang.Object r0 = r0.L$0
            coil3.network.SourceResponseBody r0 = (coil3.network.SourceResponseBody) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L36
            goto L5e
        L36:
            r4 = move-exception
            goto L67
        L38:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r3
        L3e:
            kotlin.ResultKt.throwOnFailure(r5)
            okio.Buffer r5 = new okio.Buffer     // Catch: java.lang.Throwable -> L65
            r5.<init>()     // Catch: java.lang.Throwable -> L65
            r0.L$0 = r3     // Catch: java.lang.Throwable -> L65
            r0.L$1 = r4     // Catch: java.lang.Throwable -> L65
            r0.L$2 = r3     // Catch: java.lang.Throwable -> L65
            r0.L$3 = r5     // Catch: java.lang.Throwable -> L65
            r0.label = r2     // Catch: java.lang.Throwable -> L65
            okio.BufferedSource r0 = r4.source     // Catch: java.lang.Throwable -> L65
            r0.readAll(r5)     // Catch: java.lang.Throwable -> L65
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L65
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L5c
            return r1
        L5c:
            r1 = r4
            r4 = r5
        L5e:
            androidx.core.os.BundleKt.closeFinally(r1, r3)
            return r4
        L62:
            r1 = r4
            r4 = r5
            goto L67
        L65:
            r5 = move-exception
            goto L62
        L67:
            throw r4     // Catch: java.lang.Throwable -> L68
        L68:
            r5 = move-exception
            androidx.core.os.BundleKt.closeFinally(r1, r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.internal.UtilsKt.readBuffer(coil3.network.SourceResponseBody, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
