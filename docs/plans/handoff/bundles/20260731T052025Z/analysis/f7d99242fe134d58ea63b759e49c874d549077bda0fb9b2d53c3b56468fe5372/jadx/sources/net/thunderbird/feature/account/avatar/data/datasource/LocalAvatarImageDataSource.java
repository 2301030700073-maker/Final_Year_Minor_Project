package net.thunderbird.feature.account.avatar.data.datasource;

import kotlin.time.Clock;
import net.thunderbird.core.file.AndroidDirectoryProvider;
import net.thunderbird.core.file.AndroidMimeTypeResolver;
import net.thunderbird.core.file.DefaultFileManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalAvatarImageDataSource {
    public final Clock clock;
    public final AndroidDirectoryProvider directoryProvider;
    public final DefaultFileManager fileManager;
    public final AndroidMimeTypeResolver mimeTypeResolver;

    public LocalAvatarImageDataSource(DefaultFileManager defaultFileManager, AndroidDirectoryProvider androidDirectoryProvider, AndroidMimeTypeResolver androidMimeTypeResolver, Clock clock) {
        this.fileManager = defaultFileManager;
        this.directoryProvider = androidDirectoryProvider;
        this.mimeTypeResolver = androidMimeTypeResolver;
        this.clock = clock;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c2, code lost:
    
        if (r2.delete(r11) != r8) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object delete(net.thunderbird.feature.account.AccountId r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$delete$1
            if (r0 == 0) goto L13
            r0 = r13
            net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$delete$1 r0 = (net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$delete$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$delete$1 r0 = new net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$delete$1
            r0.<init>(r11, r13)
        L18:
            java.lang.Object r13 = r0.result
            int r1 = r0.label
            net.thunderbird.core.file.DefaultFileManager r2 = r11.fileManager
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L55
            if (r1 == r6) goto L4b
            if (r1 == r5) goto L43
            if (r1 == r4) goto L3a
            if (r1 != r3) goto L34
            kotlin.ResultKt.throwOnFailure(r13)
            goto Lc5
        L34:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r11)
            return r7
        L3a:
            net.thunderbird.core.file.DefaultFileManager r2 = r0.L$2
            java.lang.String r11 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r13)
            goto La9
        L43:
            java.lang.String r12 = r0.L$1
            net.thunderbird.feature.account.AccountId r1 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L97
        L4b:
            net.thunderbird.core.file.DefaultFileManager r12 = r0.L$2
            java.lang.String r1 = r0.L$1
            net.thunderbird.feature.account.AccountId r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L79
        L55:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlin.time.Clock r13 = r11.clock
            kotlin.time.Instant r13 = r13.now()
            long r9 = r13.toEpochMilliseconds()
            java.lang.String r1 = java.lang.String.valueOf(r9)
            r0.L$0 = r12
            r0.L$1 = r1
            r0.L$2 = r2
            r0.label = r6
            java.lang.String r13 = "jpg"
            java.lang.Comparable r13 = r11.getAvatarImageUri(r12, r13, r0)
            if (r13 != r8) goto L77
            goto Lc4
        L77:
            r6 = r12
            r12 = r2
        L79:
            com.eygraber.uri.Uri r13 = (com.eygraber.uri.Uri) r13
            com.eygraber.uri.Uri$Builder r13 = r13.buildUpon()
            r13.appendQueryParameter$1(r1)
            com.eygraber.uri.Uri r13 = r13.build()
            r0.L$0 = r6
            r0.L$1 = r1
            r0.L$2 = r7
            r0.label = r5
            net.thunderbird.core.outcome.Outcome r12 = r12.delete(r13)
            if (r12 != r8) goto L95
            goto Lc4
        L95:
            r12 = r1
            r1 = r6
        L97:
            r0.L$0 = r7
            r0.L$1 = r12
            r0.L$2 = r2
            r0.label = r4
            java.lang.String r13 = "png"
            java.lang.Comparable r13 = r11.getAvatarImageUri(r1, r13, r0)
            if (r13 != r8) goto La8
            goto Lc4
        La8:
            r11 = r12
        La9:
            com.eygraber.uri.Uri r13 = (com.eygraber.uri.Uri) r13
            com.eygraber.uri.Uri$Builder r12 = r13.buildUpon()
            r12.appendQueryParameter$1(r11)
            com.eygraber.uri.Uri r11 = r12.build()
            r0.L$0 = r7
            r0.L$1 = r7
            r0.L$2 = r7
            r0.label = r3
            net.thunderbird.core.outcome.Outcome r11 = r2.delete(r11)
            if (r11 != r8) goto Lc5
        Lc4:
            return r8
        Lc5:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource.delete(net.thunderbird.feature.account.AccountId, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Comparable getAvatarImageUri(net.thunderbird.feature.account.AccountId r5, java.lang.String r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$getAvatarImageUri$1
            if (r0 == 0) goto L13
            r0 = r7
            net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$getAvatarImageUri$1 r0 = (net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$getAvatarImageUri$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$getAvatarImageUri$1 r0 = new net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$getAvatarImageUri$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2b
            com.eygraber.uri.Uri r4 = r0.L$2
            java.lang.String r6 = r0.L$1
            net.thunderbird.feature.account.AccountId r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L8d
        L2b:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            net.thunderbird.core.file.AndroidDirectoryProvider r4 = r4.directoryProvider
            android.content.Context r4 = r4.context
            java.io.File r4 = r4.getFilesDir()
            r4.getClass()
            android.net.Uri r4 = android.net.Uri.fromFile(r4)
            com.eygraber.uri.uris.StringUri r4 = org.slf4j.helpers.Util.toKmpUri(r4)
            com.eygraber.uri.Uri$Builder r4 = r4.buildUpon()
            java.lang.String r7 = "account_avatars"
            r4.appendPath$1(r7)
            com.eygraber.uri.Uri r4 = r4.build()
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r4
            r0.label = r2
            net.thunderbird.core.file.AndroidFileSystemManager.createDirectories(r4)     // Catch: java.io.IOException -> L68
            net.thunderbird.core.outcome.Outcome$Success r7 = new net.thunderbird.core.outcome.Outcome$Success     // Catch: java.io.IOException -> L68
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.io.IOException -> L68
            r7.<init>(r0)     // Catch: java.io.IOException -> L68
            goto L88
        L68:
            r7 = move-exception
            net.thunderbird.core.outcome.Outcome$Failure r0 = new net.thunderbird.core.outcome.Outcome$Failure
            net.thunderbird.core.file.FileOperationError$Unavailable r1 = new net.thunderbird.core.file.FileOperationError$Unavailable
            java.lang.String r2 = r7.getMessage()
            if (r2 != 0) goto L81
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Unable to create directory: "
            r2.<init>(r3)
            r2.append(r4)
            java.lang.String r2 = r2.toString()
        L81:
            r1.<init>(r4, r2)
            r0.<init>(r1, r7)
            r7 = r0
        L88:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r0) goto L8d
            return r0
        L8d:
            com.eygraber.uri.Uri$Builder r4 = r4.buildUpon()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r5)
            java.lang.String r5 = "."
            r7.append(r5)
            r7.append(r6)
            java.lang.String r5 = r7.toString()
            r4.appendPath$1(r5)
            com.eygraber.uri.Uri r4 = r4.build()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource.getAvatarImageUri(net.thunderbird.feature.account.AccountId, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Comparable");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0066, code lost:
    
        if (delete(r8, r0) == r6) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Comparable update(net.thunderbird.feature.account.AccountId r8, com.eygraber.uri.Uri r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$update$1
            if (r0 == 0) goto L13
            r0 = r10
            net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$update$1 r0 = (net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$update$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$update$1 r0 = new net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource$update$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L48
            if (r1 == r4) goto L3c
            if (r1 == r3) goto L36
            if (r1 != r2) goto L30
            com.eygraber.uri.Uri r8 = r0.L$4
            kotlin.ResultKt.throwOnFailure(r10)
            goto L90
        L30:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r5
        L36:
            com.eygraber.uri.Uri r8 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L79
        L3c:
            java.lang.String r8 = r0.L$3
            com.eygraber.uri.Uri r9 = r0.L$1
            net.thunderbird.feature.account.AccountId r1 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r8
            r8 = r1
            goto L69
        L48:
            kotlin.ResultKt.throwOnFailure(r10)
            net.thunderbird.core.file.AndroidMimeTypeResolver r10 = r7.mimeTypeResolver
            net.thunderbird.core.file.MimeType r10 = r10.getMimeType(r9)
            net.thunderbird.core.file.MimeType r1 = net.thunderbird.core.file.MimeType.PNG
            if (r10 != r1) goto L58
            java.lang.String r10 = "png"
            goto L5a
        L58:
            java.lang.String r10 = "jpg"
        L5a:
            r0.L$0 = r8
            r0.L$1 = r9
            r0.L$3 = r10
            r0.label = r4
            java.lang.Object r1 = r7.delete(r8, r0)
            if (r1 != r6) goto L69
            goto L8e
        L69:
            r0.L$0 = r5
            r0.L$1 = r9
            r0.L$3 = r5
            r0.label = r3
            java.lang.Comparable r10 = r7.getAvatarImageUri(r8, r10, r0)
            if (r10 != r6) goto L78
            goto L8e
        L78:
            r8 = r9
        L79:
            r9 = r10
            com.eygraber.uri.Uri r9 = (com.eygraber.uri.Uri) r9
            r0.L$0 = r5
            r0.L$1 = r5
            r0.L$3 = r5
            r0.L$4 = r9
            r0.label = r2
            net.thunderbird.core.file.DefaultFileManager r10 = r7.fileManager
            net.thunderbird.core.outcome.Outcome r8 = r10.copy(r8, r9)
            if (r8 != r6) goto L8f
        L8e:
            return r6
        L8f:
            r8 = r9
        L90:
            com.eygraber.uri.Uri$Builder r8 = r8.buildUpon()
            kotlin.time.Clock r7 = r7.clock
            kotlin.time.Instant r7 = r7.now()
            long r9 = r7.toEpochMilliseconds()
            java.lang.String r7 = java.lang.String.valueOf(r9)
            r8.appendQueryParameter$1(r7)
            com.eygraber.uri.Uri r7 = r8.build()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource.update(net.thunderbird.feature.account.AccountId, com.eygraber.uri.Uri, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Comparable");
    }
}
