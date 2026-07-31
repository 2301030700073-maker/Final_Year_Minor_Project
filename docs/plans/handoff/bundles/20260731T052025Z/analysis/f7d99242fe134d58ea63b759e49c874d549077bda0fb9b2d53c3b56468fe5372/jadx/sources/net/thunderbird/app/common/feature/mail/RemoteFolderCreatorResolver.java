package net.thunderbird.app.common.feature.mail;

import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.backend.api.folder.RemoteFolderCreator;
import net.thunderbird.backend.imap.DefaultImapRemoteFolderCreatorFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoteFolderCreatorResolver implements RemoteFolderCreator.Factory {
    public final DefaultLegacyAccountManager accountManager;
    public final DefaultImapRemoteFolderCreatorFactory imapFactory;

    public RemoteFolderCreatorResolver(DefaultLegacyAccountManager defaultLegacyAccountManager, DefaultImapRemoteFolderCreatorFactory defaultImapRemoteFolderCreatorFactory) {
        this.accountManager = defaultLegacyAccountManager;
        this.imapFactory = defaultImapRemoteFolderCreatorFactory;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
    
        if (r8 == r5) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // net.thunderbird.backend.api.folder.RemoteFolderCreator.Factory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object create(net.thunderbird.feature.account.AccountId r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof net.thunderbird.app.common.feature.mail.RemoteFolderCreatorResolver$create$1
            if (r0 == 0) goto L13
            r0 = r8
            net.thunderbird.app.common.feature.mail.RemoteFolderCreatorResolver$create$1 r0 = (net.thunderbird.app.common.feature.mail.RemoteFolderCreatorResolver$create$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.app.common.feature.mail.RemoteFolderCreatorResolver$create$1 r0 = new net.thunderbird.app.common.feature.mail.RemoteFolderCreatorResolver$create$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L37
            if (r1 == r4) goto L31
            if (r1 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L31:
            net.thunderbird.feature.account.AccountId r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4b
        L37:
            kotlin.ResultKt.throwOnFailure(r8)
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager r8 = r6.accountManager
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1 r8 = r8.getById(r7)
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r8, r0)
            if (r8 != r5) goto L4b
            goto L67
        L4b:
            net.thunderbird.core.android.account.LegacyAccount r8 = (net.thunderbird.core.android.account.LegacyAccount) r8
            if (r8 == 0) goto L6c
            com.fsck.k9.mail.ServerSettings r8 = r8.incomingServerSettings
            java.lang.String r8 = r8.type
            java.lang.String r1 = "imap"
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r1)
            if (r8 == 0) goto L69
            r0.L$0 = r2
            r0.label = r3
            net.thunderbird.backend.imap.DefaultImapRemoteFolderCreatorFactory r6 = r6.imapFactory
            java.lang.Object r6 = r6.create(r7, r0)
            if (r6 != r5) goto L68
        L67:
            return r5
        L68:
            return r6
        L69:
            net.thunderbird.app.common.feature.mail.NoOpRemoteFolderCreator r6 = net.thunderbird.app.common.feature.mail.NoOpRemoteFolderCreator.INSTANCE
            return r6
        L6c:
            java.lang.String r6 = "Account not found: "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r7, r6)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.app.common.feature.mail.RemoteFolderCreatorResolver.create(net.thunderbird.feature.account.AccountId, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
