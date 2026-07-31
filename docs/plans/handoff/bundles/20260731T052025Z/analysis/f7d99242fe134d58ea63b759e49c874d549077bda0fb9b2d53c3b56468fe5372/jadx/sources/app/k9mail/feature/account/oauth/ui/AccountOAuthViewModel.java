package app.k9mail.feature.account.oauth.ui;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult;
import app.k9mail.feature.account.oauth.domain.usecase.CheckIsGoogleSignIn;
import app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn;
import app.k9mail.feature.account.oauth.domain.usecase.GetOAuthRequestIntent;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Effect;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Error;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import java.util.Iterator;
import java.util.Locale;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountOAuthViewModel extends BaseViewModel implements AccountOAuthContract$ViewModel {
    public final CheckIsGoogleSignIn checkIsGoogleSignIn;
    public final FinishOAuthSignIn finishOAuthSignIn;
    public final GetOAuthRequestIntent getOAuthRequestIntent;
    public final Logger logger;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AccountOAuthViewModel(app.k9mail.feature.account.oauth.domain.usecase.GetOAuthRequestIntent r4, app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn r5, app.k9mail.feature.account.oauth.domain.usecase.CheckIsGoogleSignIn r6, net.thunderbird.core.logging.Logger r7) {
        /*
            r3 = this;
            app.k9mail.feature.account.oauth.ui.AccountOAuthContract$State r0 = new app.k9mail.feature.account.oauth.ui.AccountOAuthContract$State
            r1 = 0
            r2 = 63
            r0.<init>(r2, r1, r1)
            r3.<init>(r0)
            r3.getOAuthRequestIntent = r4
            r3.finishOAuthSignIn = r5
            r3.checkIsGoogleSignIn = r6
            r3.logger = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.oauth.ui.AccountOAuthViewModel.<init>(app.k9mail.feature.account.oauth.domain.usecase.GetOAuthRequestIntent, app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn, app.k9mail.feature.account.oauth.domain.usecase.CheckIsGoogleSignIn, net.thunderbird.core.logging.Logger):void");
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(AccountOAuthContract$Event accountOAuthContract$Event) {
        Object value;
        AccountOAuthContract$State accountOAuthContract$State;
        Object value2;
        AccountOAuthContract$State accountOAuthContract$State2;
        Object value3;
        AccountOAuthContract$State accountOAuthContract$State3;
        accountOAuthContract$Event.getClass();
        boolean z = accountOAuthContract$Event instanceof AccountOAuthContract$Event.OnOAuthResult;
        Continuation continuation = null;
        StateFlowImpl stateFlowImpl = this._state;
        if (!z) {
            if (accountOAuthContract$Event.equals(AccountOAuthContract$Event.OnBackClicked.INSTANCE$2)) {
                onSignIn();
                return;
            }
            if (accountOAuthContract$Event.equals(AccountOAuthContract$Event.OnBackClicked.INSTANCE)) {
                emitEffect(AccountOAuthContract$Effect.NavigateBack.INSTANCE);
                return;
            }
            if (!accountOAuthContract$Event.equals(AccountOAuthContract$Event.OnBackClicked.INSTANCE$1)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            do {
                value = stateFlowImpl.getValue();
                accountOAuthContract$State = (AccountOAuthContract$State) value;
                accountOAuthContract$State.getClass();
            } while (!stateFlowImpl.compareAndSet(value, AccountOAuthContract$State.copy$default(accountOAuthContract$State, false, null, false, 47)));
            onSignIn();
            return;
        }
        AccountOAuthContract$Event.OnOAuthResult onOAuthResult = (AccountOAuthContract$Event.OnOAuthResult) accountOAuthContract$Event;
        int i = onOAuthResult.resultCode;
        Intent intent = onOAuthResult.data;
        if (i != -1 || intent == null) {
            do {
                value2 = stateFlowImpl.getValue();
                accountOAuthContract$State2 = (AccountOAuthContract$State) value2;
                accountOAuthContract$State2.getClass();
            } while (!stateFlowImpl.compareAndSet(value2, AccountOAuthContract$State.copy$default(accountOAuthContract$State2, false, AccountOAuthContract$Error.Canceled.INSTANCE, false, 47)));
            return;
        }
        do {
            value3 = stateFlowImpl.getValue();
            accountOAuthContract$State3 = (AccountOAuthContract$State) value3;
            accountOAuthContract$State3.getClass();
        } while (!stateFlowImpl.compareAndSet(value3, AccountOAuthContract$State.copy$default(accountOAuthContract$State3, false, null, true, 31)));
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$maybeRun$1(this, intent, continuation, 22), 3);
    }

    public final void initState(AccountOAuthContract$State accountOAuthContract$State) {
        boolean z;
        StateFlowImpl stateFlowImpl;
        Object value;
        String str = accountOAuthContract$State.hostname;
        this.checkIsGoogleSignIn.getClass();
        str.getClass();
        Iterator it = CheckIsGoogleSignIn.domainList.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            String str2 = (String) it.next();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (StringsKt__StringsJVMKt.endsWith(lowerCase, str2, false)) {
                z = true;
                break;
            }
        }
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            ((AccountOAuthContract$State) value).getClass();
        } while (!stateFlowImpl.compareAndSet(value, AccountOAuthContract$State.copy$default(accountOAuthContract$State, z, null, false, 55)));
    }

    public final void onSignIn() {
        AuthorizationIntentResult authorizationIntentResult;
        StateFlowImpl stateFlowImpl;
        Object value;
        AccountOAuthContract$State accountOAuthContract$State;
        AuthorizationIntentResult.NotSupported notSupported = AuthorizationIntentResult.NotSupported.INSTANCE$1;
        ReadonlyStateFlow readonlyStateFlow = this.state;
        try {
            authorizationIntentResult = this.getOAuthRequestIntent.execute(((AccountOAuthContract$State) readonlyStateFlow.$$delegate_0.getValue()).hostname, ((AccountOAuthContract$State) readonlyStateFlow.$$delegate_0.getValue()).emailAddress);
        } catch (ActivityNotFoundException e) {
            Sink$CC.error$default(this.logger, null, e, new UtilsKt$$ExternalSyntheticLambda0(9), 1);
            authorizationIntentResult = notSupported;
        }
        if (authorizationIntentResult.equals(AuthorizationIntentResult.NotSupported.INSTANCE)) {
            do {
                stateFlowImpl = this._state;
                value = stateFlowImpl.getValue();
                accountOAuthContract$State = (AccountOAuthContract$State) value;
                accountOAuthContract$State.getClass();
            } while (!stateFlowImpl.compareAndSet(value, AccountOAuthContract$State.copy$default(accountOAuthContract$State, false, AccountOAuthContract$Error.Canceled.INSTANCE$2, false, 47)));
            return;
        }
        if (authorizationIntentResult.equals(notSupported)) {
            updateErrorState(AccountOAuthContract$Error.Canceled.INSTANCE$1);
        } else if (authorizationIntentResult instanceof AuthorizationIntentResult.Success) {
            emitEffect(new AccountOAuthContract$Effect.LaunchOAuth(((AuthorizationIntentResult.Success) authorizationIntentResult).intent));
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }

    public final void updateErrorState(AccountOAuthContract$Error accountOAuthContract$Error) {
        StateFlowImpl stateFlowImpl;
        Object value;
        AccountOAuthContract$State accountOAuthContract$State;
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            accountOAuthContract$State = (AccountOAuthContract$State) value;
            accountOAuthContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, AccountOAuthContract$State.copy$default(accountOAuthContract$State, false, accountOAuthContract$Error, false, 15)));
    }
}
