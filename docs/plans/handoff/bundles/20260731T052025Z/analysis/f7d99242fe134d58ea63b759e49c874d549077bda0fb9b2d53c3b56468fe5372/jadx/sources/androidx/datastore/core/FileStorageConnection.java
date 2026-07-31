package androidx.datastore.core;

import androidx.datastore.preferences.core.PreferencesFileSerializer;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileStorageConnection implements Closeable {
    public final AtomicBoolean closed;
    public final SingleProcessCoordinator coordinator;
    public final File file;
    public final ImageLoader$Builder$$ExternalSyntheticLambda1 onClose;
    public final PreferencesFileSerializer serializer;
    public final MutexImpl transactionMutex;

    public FileStorageConnection(File file, PreferencesFileSerializer preferencesFileSerializer, SingleProcessCoordinator singleProcessCoordinator, ImageLoader$Builder$$ExternalSyntheticLambda1 imageLoader$Builder$$ExternalSyntheticLambda1) {
        singleProcessCoordinator.getClass();
        this.file = file;
        this.serializer = preferencesFileSerializer;
        this.coordinator = singleProcessCoordinator;
        this.onClose = imageLoader$Builder$$ExternalSyntheticLambda1;
        this.closed = new AtomicBoolean(false);
        this.transactionMutex = new MutexImpl();
    }

    @Override // androidx.datastore.core.Closeable
    public final void close() {
        this.closed.set(true);
        this.onClose.invoke();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|1|(2:3|(8:5|6|7|(1:(3:10|11|12)(2:32|33))(2:34|(7:36|37|38|40|41|42|(1:44)(1:45))(2:53|54))|13|14|15|(2:(1:18)|19)(1:21)))|57|6|7|(0)(0)|13|14|15|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0068, code lost:
    
        r7 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0071 A[Catch: all -> 0x0072, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0072, blocks: (B:21:0x0071, B:28:0x0082, B:31:0x007f, B:27:0x007a), top: B:7:0x0020, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.datastore.core.FileStorageConnection] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.datastore.core.DataStoreImpl$data$1$5] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readScope(androidx.datastore.core.DataStoreImpl$data$1$5 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.datastore.core.FileStorageConnection$readScope$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.datastore.core.FileStorageConnection$readScope$1 r0 = (androidx.datastore.core.FileStorageConnection$readScope$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.FileStorageConnection$readScope$1 r0 = new androidx.datastore.core.FileStorageConnection$readScope$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            kotlinx.coroutines.sync.MutexImpl r2 = r6.transactionMutex
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2e
            boolean r6 = r0.Z$0
            androidx.datastore.core.FileReadScope r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2c
            goto L63
        L2c:
            r8 = move-exception
            goto L7a
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r4
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.concurrent.atomic.AtomicBoolean r8 = r6.closed
            boolean r8 = r8.get()
            if (r8 != 0) goto L8a
            boolean r8 = r2.tryLock()
            androidx.datastore.core.FileReadScope r1 = new androidx.datastore.core.FileReadScope     // Catch: java.lang.Throwable -> L83
            java.io.File r5 = r6.file     // Catch: java.lang.Throwable -> L83
            androidx.datastore.preferences.core.PreferencesFileSerializer r6 = r6.serializer     // Catch: java.lang.Throwable -> L83
            r1.<init>(r5, r6)     // Catch: java.lang.Throwable -> L83
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.Throwable -> L75
            r0.L$0 = r1     // Catch: java.lang.Throwable -> L75
            r0.Z$0 = r8     // Catch: java.lang.Throwable -> L75
            r0.label = r3     // Catch: java.lang.Throwable -> L75
            java.lang.Object r6 = r7.invoke(r1, r6, r0)     // Catch: java.lang.Throwable -> L75
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r7) goto L5f
            return r7
        L5f:
            r7 = r8
            r8 = r6
            r6 = r7
            r7 = r1
        L63:
            r7.close()     // Catch: java.lang.Throwable -> L68
            r7 = r4
            goto L69
        L68:
            r7 = move-exception
        L69:
            if (r7 != 0) goto L71
            if (r6 == 0) goto L70
            r2.unlock(r4)
        L70:
            return r8
        L71:
            throw r7     // Catch: java.lang.Throwable -> L72
        L72:
            r7 = move-exception
            r8 = r6
            goto L84
        L75:
            r6 = move-exception
            r7 = r8
            r8 = r6
            r6 = r7
            r7 = r1
        L7a:
            r7.close()     // Catch: java.lang.Throwable -> L7e
            goto L82
        L7e:
            r7 = move-exception
            kotlin.ResultKt.addSuppressed(r8, r7)     // Catch: java.lang.Throwable -> L72
        L82:
            throw r8     // Catch: java.lang.Throwable -> L72
        L83:
            r7 = move-exception
        L84:
            if (r8 == 0) goto L89
            r2.unlock(r4)
        L89:
            throw r7
        L8a:
            java.lang.String r6 = "StorageConnection has already been disposed."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.FileStorageConnection.readScope(androidx.datastore.core.DataStoreImpl$data$1$5, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0082, code lost:
    
        if (r11.lock(r1) == r7) goto L36;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c0 A[Catch: all -> 0x00f7, IOException -> 0x00fa, TRY_ENTER, TryCatch #8 {IOException -> 0x00fa, all -> 0x00f7, blocks: (B:19:0x00c0, B:21:0x00c6, B:23:0x00cc, B:26:0x00d8, B:27:0x00f6, B:29:0x00d1, B:32:0x0104, B:38:0x0112, B:41:0x010f), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0104 A[Catch: all -> 0x00f7, IOException -> 0x00fa, TRY_ENTER, TRY_LEAVE, TryCatch #8 {IOException -> 0x00fa, all -> 0x00f7, blocks: (B:19:0x00c0, B:21:0x00c6, B:23:0x00cc, B:26:0x00d8, B:27:0x00f6, B:29:0x00d1, B:32:0x0104, B:38:0x0112, B:41:0x010f), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /* JADX WARN: Type inference failed for: r10v7, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.File, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeScope(androidx.datastore.core.DataStoreImpl$writeData$2 r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.FileStorageConnection.writeScope(androidx.datastore.core.DataStoreImpl$writeData$2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
