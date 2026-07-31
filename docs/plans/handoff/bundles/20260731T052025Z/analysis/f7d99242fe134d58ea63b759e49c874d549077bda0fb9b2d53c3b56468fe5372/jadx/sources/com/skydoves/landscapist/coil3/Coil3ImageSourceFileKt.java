package com.skydoves.landscapist.coil3;

import android.content.Context;
import coil3.ImageLoader;
import com.skydoves.landscapist.DataSource;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Coil3ImageSourceFileKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:3|(7:5|6|7|(1:(2:10|11)(2:23|24))(4:25|26|(1:28)(1:41)|(2:30|(1:35)(1:34))(3:36|37|(1:39)(1:40)))|(1:13)(1:22)|(2:15|(0)(1:19))|21))|43|6|7|(0)(0)|(0)(0)|(0)|21) */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a2 A[Catch: Exception -> 0x00c2, TRY_ENTER, TryCatch #0 {Exception -> 0x00c2, blocks: (B:11:0x003f, B:13:0x00a2, B:15:0x00aa, B:17:0x00bb, B:26:0x004c, B:28:0x0052, B:30:0x005a, B:32:0x006b, B:36:0x0073), top: B:7:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00aa A[Catch: Exception -> 0x00c2, TryCatch #0 {Exception -> 0x00c2, blocks: (B:11:0x003f, B:13:0x00a2, B:15:0x00aa, B:17:0x00bb, B:26:0x004c, B:28:0x0052, B:30:0x005a, B:32:0x006b, B:36:0x0073), top: B:7:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object getFromDiskCacheOrDownload(android.content.Context r4, coil3.ImageLoader r5, java.lang.String r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1
            if (r0 == 0) goto L13
            r0 = r7
            com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1 r0 = (com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1 r0 = new com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L49
            if (r1 != r2) goto L43
            java.lang.Object r4 = r0.L$6
            coil3.request.ImageRequest r4 = (coil3.request.ImageRequest) r4
            java.lang.Object r4 = r0.L$5
            coil3.disk.DiskCache$Snapshot r4 = (coil3.disk.DiskCache.Snapshot) r4
            java.lang.Object r4 = r0.L$4
            r6 = r4
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r4 = r0.L$3
            coil3.disk.DiskCache r4 = (coil3.disk.DiskCache) r4
            java.lang.Object r5 = r0.L$2
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$1
            coil3.ImageLoader r5 = (coil3.ImageLoader) r5
            java.lang.Object r5 = r0.L$0
            android.content.Context r5 = (android.content.Context) r5
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> Lc2
            goto La0
        L43:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r3
        L49:
            kotlin.ResultKt.throwOnFailure(r7)
            coil3.disk.DiskCache r7 = r5.getDiskCache()     // Catch: java.lang.Exception -> Lc2
            if (r7 == 0) goto L57
            coil3.disk.DiskCache$Snapshot r1 = r7.openSnapshot(r6)     // Catch: java.lang.Exception -> Lc2
            goto L58
        L57:
            r1 = r3
        L58:
            if (r1 == 0) goto L73
            okio.Path r4 = r1.getData()     // Catch: java.lang.Exception -> Lc2
            java.io.File r4 = r4.toFile()     // Catch: java.lang.Exception -> Lc2
            r1.close()     // Catch: java.lang.Exception -> Lc2
            boolean r5 = r4.exists()     // Catch: java.lang.Exception -> Lc2
            if (r5 == 0) goto L72
            boolean r5 = r4.canRead()     // Catch: java.lang.Exception -> Lc2
            if (r5 == 0) goto L72
            return r4
        L72:
            return r3
        L73:
            coil3.request.ImageRequest$Builder r1 = new coil3.request.ImageRequest$Builder     // Catch: java.lang.Exception -> Lc2
            r1.<init>(r4)     // Catch: java.lang.Exception -> Lc2
            coil3.request.ImageRequest$Builder r4 = r1.data(r6)     // Catch: java.lang.Exception -> Lc2
            coil3.request.CachePolicy r1 = coil3.request.CachePolicy.ENABLED     // Catch: java.lang.Exception -> Lc2
            coil3.request.ImageRequest$Builder r4 = r4.diskCachePolicy(r1)     // Catch: java.lang.Exception -> Lc2
            coil3.request.ImageRequest r4 = r4.build()     // Catch: java.lang.Exception -> Lc2
            r0.L$0 = r3     // Catch: java.lang.Exception -> Lc2
            r0.L$1 = r3     // Catch: java.lang.Exception -> Lc2
            r0.L$2 = r3     // Catch: java.lang.Exception -> Lc2
            r0.L$3 = r7     // Catch: java.lang.Exception -> Lc2
            r0.L$4 = r6     // Catch: java.lang.Exception -> Lc2
            r0.L$5 = r3     // Catch: java.lang.Exception -> Lc2
            r0.L$6 = r3     // Catch: java.lang.Exception -> Lc2
            r0.label = r2     // Catch: java.lang.Exception -> Lc2
            java.lang.Object r4 = r5.execute(r4, r0)     // Catch: java.lang.Exception -> Lc2
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L9f
            return r5
        L9f:
            r4 = r7
        La0:
            if (r4 == 0) goto La7
            coil3.disk.DiskCache$Snapshot r4 = r4.openSnapshot(r6)     // Catch: java.lang.Exception -> Lc2
            goto La8
        La7:
            r4 = r3
        La8:
            if (r4 == 0) goto Lc2
            okio.Path r5 = r4.getData()     // Catch: java.lang.Exception -> Lc2
            java.io.File r5 = r5.toFile()     // Catch: java.lang.Exception -> Lc2
            r4.close()     // Catch: java.lang.Exception -> Lc2
            boolean r4 = r5.exists()     // Catch: java.lang.Exception -> Lc2
            if (r4 == 0) goto Lc2
            boolean r4 = r5.canRead()     // Catch: java.lang.Exception -> Lc2
            if (r4 == 0) goto Lc2
            return r5
        Lc2:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt.getFromDiskCacheOrDownload(android.content.Context, coil3.ImageLoader, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Object getImageSourceFile(Context context, ImageLoader imageLoader, Object obj, DataSource dataSource, Continuation continuation) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        return JobKt.withContext(DefaultIoScheduler.INSTANCE, new Coil3ImageSourceFileKt$getImageSourceFile$2(obj, context, imageLoader, null), continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x002a, code lost:
    
        if (r12.changed(r11 == null ? -1 : r11.ordinal()) == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.runtime.State rememberImageSourceFile(android.content.Context r8, coil3.ImageLoader r9, java.lang.Object r10, com.skydoves.landscapist.DataSource r11, androidx.compose.runtime.Composer r12, int r13) {
        /*
            r8.getClass()
            r9.getClass()
            androidx.compose.runtime.GapComposer r12 = (androidx.compose.runtime.GapComposer) r12
            boolean r0 = r12.changedInstance(r8)
            boolean r1 = r12.changedInstance(r9)
            r0 = r0 | r1
            boolean r1 = r12.changedInstance(r10)
            r0 = r0 | r1
            r1 = r13 & 7168(0x1c00, float:1.0045E-41)
            r1 = r1 ^ 3072(0xc00, float:4.305E-42)
            r2 = 2048(0x800, float:2.87E-42)
            if (r1 <= r2) goto L2c
            if (r11 != 0) goto L22
            r1 = -1
            goto L26
        L22:
            int r1 = r11.ordinal()
        L26:
            boolean r1 = r12.changed(r1)
            if (r1 != 0) goto L30
        L2c:
            r1 = r13 & 3072(0xc00, float:4.305E-42)
            if (r1 != r2) goto L32
        L30:
            r1 = 1
            goto L33
        L32:
            r1 = 0
        L33:
            r0 = r0 | r1
            java.lang.Object r1 = r12.rememberedValue()
            if (r0 != 0) goto L42
            androidx.compose.runtime.NeverEqualPolicy r0 = androidx.compose.runtime.Composer.Companion.Empty
            if (r1 != r0) goto L3f
            goto L42
        L3f:
            r9 = r10
            r10 = r11
            goto L52
        L42:
            com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$rememberImageSourceFile$1$1 r2 = new com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$rememberImageSourceFile$1$1
            r7 = 0
            r3 = r8
            r4 = r9
            r5 = r10
            r6 = r11
            r2.<init>(r3, r4, r5, r6, r7)
            r9 = r5
            r10 = r6
            r12.updateRememberedValue(r2)
            r1 = r2
        L52:
            r11 = r1
            kotlin.jvm.functions.Function2 r11 = (kotlin.jvm.functions.Function2) r11
            int r8 = r13 >> 3
            r13 = r8 & 112(0x70, float:1.57E-43)
            r13 = r13 | 6
            r8 = r8 & 896(0x380, float:1.256E-42)
            r13 = r13 | r8
            r8 = 0
            androidx.compose.runtime.MutableState r8 = androidx.compose.runtime.Updater.produceState(r8, r9, r10, r11, r12, r13)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt.rememberImageSourceFile(android.content.Context, coil3.ImageLoader, java.lang.Object, com.skydoves.landscapist.DataSource, androidx.compose.runtime.Composer, int):androidx.compose.runtime.State");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
    
        if (r0.canRead() != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.File resolveUriToFile(android.content.Context r9, android.net.Uri r10) {
        /*
            java.lang.String r0 = "_data"
            java.lang.String r1 = r10.getScheme()
            r2 = 0
            if (r1 == 0) goto L89
            int r3 = r1.hashCode()
            r4 = 3143036(0x2ff57c, float:4.404332E-39)
            if (r3 == r4) goto L67
            r4 = 951530617(0x38b73479, float:8.735894E-5)
            if (r3 == r4) goto L19
            goto L89
        L19:
            java.lang.String r3 = "content"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L23
            goto L89
        L23:
            java.lang.String[] r5 = new java.lang.String[]{r0}     // Catch: java.lang.Exception -> L66
            android.content.ContentResolver r3 = r9.getContentResolver()     // Catch: java.lang.Exception -> L66
            r7 = 0
            r8 = 0
            r6 = 0
            r4 = r10
            android.database.Cursor r9 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L66
            if (r9 == 0) goto L66
            boolean r10 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L57
            if (r10 == 0) goto L5a
            int r10 = r9.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L57
            java.lang.String r10 = r9.getString(r10)     // Catch: java.lang.Throwable -> L57
            if (r10 == 0) goto L5a
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L57
            r0.<init>(r10)     // Catch: java.lang.Throwable -> L57
            boolean r10 = r0.exists()     // Catch: java.lang.Throwable -> L57
            if (r10 == 0) goto L5a
            boolean r10 = r0.canRead()     // Catch: java.lang.Throwable -> L57
            if (r10 == 0) goto L5a
            goto L5b
        L57:
            r0 = move-exception
            r10 = r0
            goto L60
        L5a:
            r0 = r2
        L5b:
            r9.close()     // Catch: java.lang.Exception -> L66
            r2 = r0
            goto L66
        L60:
            throw r10     // Catch: java.lang.Throwable -> L61
        L61:
            r0 = move-exception
            kotlin.io.CloseableKt.closeFinally(r9, r10)     // Catch: java.lang.Exception -> L66
            throw r0     // Catch: java.lang.Exception -> L66
        L66:
            return r2
        L67:
            r4 = r10
            java.lang.String r9 = "file"
            boolean r9 = r1.equals(r9)
            if (r9 != 0) goto L71
            goto L89
        L71:
            java.lang.String r9 = r4.getPath()
            if (r9 == 0) goto L89
            java.io.File r10 = new java.io.File
            r10.<init>(r9)
            boolean r9 = r10.exists()
            if (r9 == 0) goto L89
            boolean r9 = r10.canRead()
            if (r9 == 0) goto L89
            return r10
        L89:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt.resolveUriToFile(android.content.Context, android.net.Uri):java.io.File");
    }
}
