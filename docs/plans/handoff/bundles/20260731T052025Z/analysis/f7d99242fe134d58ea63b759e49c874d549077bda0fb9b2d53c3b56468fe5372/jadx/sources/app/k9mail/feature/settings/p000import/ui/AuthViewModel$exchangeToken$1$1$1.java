package app.k9mail.feature.settings.p000import.ui;

import com.fsck.k9.Preferences;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthViewModel$exchangeToken$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ LegacyAccountDto $account;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AuthViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AuthViewModel$exchangeToken$1$1$1(AuthViewModel authViewModel, LegacyAccountDto legacyAccountDto, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = authViewModel;
        this.$account = legacyAccountDto;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        LegacyAccountDto legacyAccountDto = this.$account;
        AuthViewModel authViewModel = this.this$0;
        switch (i) {
            case 0:
                return new AuthViewModel$exchangeToken$1$1$1(authViewModel, legacyAccountDto, continuation, 0);
            default:
                return new AuthViewModel$exchangeToken$1$1$1(authViewModel, legacyAccountDto, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((AuthViewModel$exchangeToken$1$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                return unit;
            default:
                return ((AuthViewModel$exchangeToken$1$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        LegacyAccountDto legacyAccountDto = this.$account;
        AuthViewModel authViewModel = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                ((Preferences) authViewModel.accountManager).saveAccount(legacyAccountDto);
                return Unit.INSTANCE;
            default:
                ResultKt.throwOnFailure(obj);
                return authViewModel.getOAuthRequestIntent.execute(legacyAccountDto.getIncomingServerSettings().host, legacyAccountDto.getEmail());
        }
    }
}
