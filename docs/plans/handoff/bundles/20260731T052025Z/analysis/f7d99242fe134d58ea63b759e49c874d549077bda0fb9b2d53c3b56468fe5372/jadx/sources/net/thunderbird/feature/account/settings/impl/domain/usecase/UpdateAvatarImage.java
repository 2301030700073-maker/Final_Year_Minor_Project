package net.thunderbird.feature.account.settings.impl.domain.usecase;

import net.thunderbird.core.file.AndroidMimeTypeResolver;
import net.thunderbird.feature.account.avatar.data.DefaultAvatarImageRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UpdateAvatarImage {
    public final AndroidMimeTypeResolver mimeTypeResolver;
    public final DefaultAvatarImageRepository repository;

    public UpdateAvatarImage(DefaultAvatarImageRepository defaultAvatarImageRepository, AndroidMimeTypeResolver androidMimeTypeResolver) {
        this.repository = defaultAvatarImageRepository;
        this.mimeTypeResolver = androidMimeTypeResolver;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(net.thunderbird.feature.account.AccountId r5, com.eygraber.uri.uris.StringUri r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage$invoke$1
            if (r0 == 0) goto L13
            r0 = r7
            net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage$invoke$1 r0 = (net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage$invoke$1 r0 = new net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage$invoke$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            goto L4f
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L2c:
            kotlin.ResultKt.throwOnFailure(r7)
            net.thunderbird.core.file.AndroidMimeTypeResolver r7 = r4.mimeTypeResolver
            net.thunderbird.core.file.MimeType r7 = r7.getMimeType(r6)
            if (r7 == 0) goto L7c
            net.thunderbird.core.file.MimeType r1 = net.thunderbird.core.file.MimeType.JPEG
            if (r7 == r1) goto L40
            net.thunderbird.core.file.MimeType r1 = net.thunderbird.core.file.MimeType.PNG
            if (r7 == r1) goto L40
            goto L7c
        L40:
            net.thunderbird.feature.account.avatar.data.DefaultAvatarImageRepository r4 = r4.repository     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            r0.label = r3     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource r4 = r4.localDataSource     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            java.lang.Comparable r7 = r4.update(r5, r6, r0)     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r4) goto L4f
            return r4
        L4f:
            com.eygraber.uri.Uri r7 = (com.eygraber.uri.Uri) r7     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            net.thunderbird.core.outcome.Outcome$Success r4 = new net.thunderbird.core.outcome.Outcome$Success     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            net.thunderbird.feature.account.avatar.Avatar$Image r5 = new net.thunderbird.feature.account.avatar.Avatar$Image     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            java.lang.String r6 = r7.toString()     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            r5.<init>(r6)     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            r4.<init>(r5)     // Catch: java.lang.SecurityException -> L60 java.io.IOException -> L6e
            return r4
        L60:
            r4 = move-exception
            net.thunderbird.core.outcome.Outcome$Failure r5 = new net.thunderbird.core.outcome.Outcome$Failure
            net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$StorageError r6 = new net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$StorageError
            java.lang.String r7 = "Permission denied while storing avatar image."
            r6.<init>(r7)
            r5.<init>(r6, r4)
            goto L7b
        L6e:
            r4 = move-exception
            net.thunderbird.core.outcome.Outcome$Failure r5 = new net.thunderbird.core.outcome.Outcome$Failure
            net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$StorageError r6 = new net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$StorageError
            java.lang.String r7 = "Failed to store avatar image"
            r6.<init>(r7)
            r5.<init>(r6, r4)
        L7b:
            return r5
        L7c:
            net.thunderbird.core.outcome.Outcome$Failure r4 = new net.thunderbird.core.outcome.Outcome$Failure
            net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat r5 = new net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat
            if (r7 != 0) goto L84
            java.lang.String r7 = "unknown"
        L84:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r0 = "Only JPEG and PNG images are supported. Found: "
            r6.<init>(r0)
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            r4.<init>(r5, r2)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage.invoke(net.thunderbird.feature.account.AccountId, com.eygraber.uri.uris.StringUri, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
