package net.thunderbird.app.common.account;

import android.app.Application;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences;
import com.fsck.k9.account.DefaultDeletePolicyProvider;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.SpecialLocalFoldersCreator;
import com.fsck.k9.preferences.UnifiedInboxConfigurator;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import net.thunderbird.feature.mail.folder.api.SpecialFolderSelection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountCreator {
    public final AccountColorPicker accountColorPicker;
    public final DefaultAvatarMonogramCreator avatarMonogramCreator;
    public final Application context;
    public final CoroutineDispatcher coroutineDispatcher;
    public final DefaultDeletePolicyProvider deletePolicyProvider;
    public final SpecialLocalFoldersCreator localFoldersCreator;
    public final MessagingController messagingController;
    public final Preferences preferences;
    public final UnifiedInboxConfigurator unifiedInboxConfigurator;

    public AccountCreator(AccountColorPicker accountColorPicker, SpecialLocalFoldersCreator specialLocalFoldersCreator, Preferences preferences, Application application, MessagingController messagingController, DefaultDeletePolicyProvider defaultDeletePolicyProvider, DefaultAvatarMonogramCreator defaultAvatarMonogramCreator, UnifiedInboxConfigurator unifiedInboxConfigurator) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountColorPicker = accountColorPicker;
        this.localFoldersCreator = specialLocalFoldersCreator;
        this.preferences = preferences;
        this.context = application;
        this.messagingController = messagingController;
        this.deletePolicyProvider = defaultDeletePolicyProvider;
        this.avatarMonogramCreator = defaultAvatarMonogramCreator;
        this.unifiedInboxConfigurator = unifiedInboxConfigurator;
        this.coroutineDispatcher = defaultIoScheduler;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$create(net.thunderbird.app.common.account.AccountCreator r17, app.k9mail.feature.account.common.domain.entity.Account r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.app.common.account.AccountCreator.access$create(net.thunderbird.app.common.account.AccountCreator, app.k9mail.feature.account.common.domain.entity.Account, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static SpecialFolderSelection toFolderSelection(SpecialFolderOption specialFolderOption) {
        boolean z = specialFolderOption instanceof SpecialFolderOption.None;
        SpecialFolderSelection specialFolderSelection = SpecialFolderSelection.AUTOMATIC;
        SpecialFolderSelection specialFolderSelection2 = SpecialFolderSelection.MANUAL;
        if (z) {
            return ((SpecialFolderOption.None) specialFolderOption).isAutomatic ? specialFolderSelection : specialFolderSelection2;
        }
        if (specialFolderOption instanceof SpecialFolderOption.Regular) {
            return specialFolderSelection2;
        }
        if (specialFolderOption instanceof SpecialFolderOption.Special) {
            return ((SpecialFolderOption.Special) specialFolderOption).isAutomatic ? specialFolderSelection : specialFolderSelection2;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static String toFolderServerId(SpecialFolderOption specialFolderOption) {
        if (specialFolderOption instanceof SpecialFolderOption.None) {
            return null;
        }
        if (specialFolderOption instanceof SpecialFolderOption.Regular) {
            return ((SpecialFolderOption.Regular) specialFolderOption).remoteFolder.serverId;
        }
        if (specialFolderOption instanceof SpecialFolderOption.Special) {
            return ((SpecialFolderOption.Special) specialFolderOption).remoteFolder.serverId;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object createAccount(app.k9mail.feature.account.common.domain.entity.Account r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof net.thunderbird.app.common.account.AccountCreator$createAccount$1
            if (r0 == 0) goto L13
            r0 = r7
            net.thunderbird.app.common.account.AccountCreator$createAccount$1 r0 = (net.thunderbird.app.common.account.AccountCreator$createAccount$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.app.common.account.AccountCreator$createAccount$1 r0 = new net.thunderbird.app.common.account.AccountCreator$createAccount$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L46
            goto L43
        L26:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r2
        L2c:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.CoroutineDispatcher r7 = r5.coroutineDispatcher     // Catch: java.lang.Exception -> L46
            com.fsck.k9.Preferences$getAccountsFlow$1 r1 = new com.fsck.k9.Preferences$getAccountsFlow$1     // Catch: java.lang.Exception -> L46
            r4 = 21
            r1.<init>(r5, r6, r2, r4)     // Catch: java.lang.Exception -> L46
            r0.label = r3     // Catch: java.lang.Exception -> L46
            java.lang.Object r7 = kotlinx.coroutines.JobKt.withContext(r7, r1, r0)     // Catch: java.lang.Exception -> L46
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r5) goto L43
            return r5
        L43:
            app.k9mail.feature.account.setup.AccountSetupExternalContract$AccountCreator$AccountCreatorResult r7 = (app.k9mail.feature.account.setup.AccountSetupExternalContract$AccountCreator$AccountCreatorResult) r7     // Catch: java.lang.Exception -> L46
            return r7
        L46:
            r5 = move-exception
            r6 = 0
            java.lang.Object[] r6 = new java.lang.Object[r6]
            java.lang.String r7 = "Error while creating new account"
            net.thunderbird.core.logging.legacy.Log.e(r5, r7, r6)
            app.k9mail.feature.account.setup.AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error r6 = new app.k9mail.feature.account.setup.AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error
            java.lang.String r5 = r5.getMessage()
            if (r5 != 0) goto L59
            java.lang.String r5 = "Unknown create account error"
        L59:
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.app.common.account.AccountCreator.createAccount(app.k9mail.feature.account.common.domain.entity.Account, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
