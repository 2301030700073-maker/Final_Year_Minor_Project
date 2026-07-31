package com.fsck.k9.account;

import androidx.core.util.DebugUtils;
import app.k9mail.feature.account.common.domain.entity.AuthorizationState;
import app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterFailure;
import app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterResult;
import com.fsck.k9.Preferences;
import com.fsck.k9.mail.ServerSettings;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountServerSettingsUpdater$updateServerSettings$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $accountUuid;
    public final /* synthetic */ AuthorizationState $authorizationState;
    public final /* synthetic */ boolean $isIncoming;
    public final /* synthetic */ ServerSettings $serverSettings;
    public final /* synthetic */ AccountServerSettingsUpdater this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountServerSettingsUpdater$updateServerSettings$2(AccountServerSettingsUpdater accountServerSettingsUpdater, String str, boolean z, ServerSettings serverSettings, AuthorizationState authorizationState, Continuation continuation) {
        super(2, continuation);
        this.this$0 = accountServerSettingsUpdater;
        this.$accountUuid = str;
        this.$isIncoming = z;
        this.$serverSettings = serverSettings;
        this.$authorizationState = authorizationState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountServerSettingsUpdater$updateServerSettings$2(this.this$0, this.$accountUuid, this.$isIncoming, this.$serverSettings, this.$authorizationState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountServerSettingsUpdater$updateServerSettings$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        Preferences preferences = (Preferences) this.this$0.accountManager;
        String str = this.$accountUuid;
        LegacyAccountDto account = preferences.getAccount(str);
        if (account == null) {
            return new AccountEditExternalContract$AccountUpdaterResult.Failure(new AccountEditExternalContract$AccountUpdaterFailure.AccountNotFound(str));
        }
        boolean z = this.$isIncoming;
        ServerSettings serverSettings = this.$serverSettings;
        if (!z) {
            serverSettings.getClass();
            account.internalOutgoingServerSettings = serverSettings;
        } else if (Intrinsics.areEqual(serverSettings.type, "imap")) {
            account.setUseCompression(DebugUtils.isUseCompression(serverSettings));
            account.setSendClientInfoEnabled(DebugUtils.isSendClientInfo(serverSettings));
            account.internalIncomingServerSettings = ServerSettings.copy$default(serverSettings, null, null, MapsKt__MapsKt.mapOf(new Pair("autoDetectNamespace", String.valueOf(DebugUtils.getAutoDetectNamespace(serverSettings))), new Pair("pathPrefix", DebugUtils.getPathPrefix(serverSettings))), 255);
        } else {
            account.internalIncomingServerSettings = serverSettings;
        }
        AuthorizationState authorizationState = this.$authorizationState;
        account.setOAuthState(authorizationState != null ? authorizationState.value : null);
        preferences.saveAccount(account);
        return new AccountEditExternalContract$AccountUpdaterResult.Success(str);
    }
}
