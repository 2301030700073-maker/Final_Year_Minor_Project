package net.thunderbird.feature.thundermail.internal.common.ui;

import androidx.lifecycle.ViewModelKt;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Effect;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Event;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$State;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewModel;
import app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.SafeFlow;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.feature.thundermail.internal.common.domain.CreateAccountStateUseCase;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$Event;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThundermailOAuthViewModel extends BaseViewModel {
    public final AccountOAuthViewModel accountOAuthViewModel;
    public final CreateAccountStateUseCase createAccountStateUseCase;
    public final GetAutoDiscovery getAutoDiscovery;
    public final Logger logger;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthViewModel$2, reason: invalid class name */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ ThundermailOAuthViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass2(ThundermailOAuthViewModel thundermailOAuthViewModel, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = thundermailOAuthViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            ThundermailOAuthViewModel thundermailOAuthViewModel = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(thundermailOAuthViewModel, continuation, 0);
                    anonymousClass2.L$0 = obj;
                    return anonymousClass2;
                case 1:
                    AnonymousClass2 anonymousClass22 = new AnonymousClass2(thundermailOAuthViewModel, continuation, 1);
                    anonymousClass22.L$0 = obj;
                    return anonymousClass22;
                default:
                    AnonymousClass2 anonymousClass23 = new AnonymousClass2(thundermailOAuthViewModel, continuation, 2);
                    anonymousClass23.L$0 = obj;
                    return anonymousClass23;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    break;
                case 1:
                    ((AnonymousClass2) create((AccountOAuthContract$State) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
                default:
                    ((AnonymousClass2) create((AccountOAuthContract$Effect) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
            }
            return unit;
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00b3  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x00ab  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                Method dump skipped, instructions count: 498
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthViewModel.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThundermailOAuthViewModel(Logger logger, AccountOAuthViewModel accountOAuthViewModel, GetAutoDiscovery getAutoDiscovery, CreateAccountStateUseCase createAccountStateUseCase) {
        super(new ThundermailContract$State(false, null, null, null));
        Continuation continuation = null;
        this.logger = logger;
        this.accountOAuthViewModel = accountOAuthViewModel;
        this.getAutoDiscovery = getAutoDiscovery;
        this.createAccountStateUseCase = createAccountStateUseCase;
        SafeFlow safeFlow = new SafeFlow(0, new StringResourcesKt$stringResource$str$3$1(this, null));
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, continuation, 0);
        int i = FlowKt__MergeKt.$r8$clinit;
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(new SafeFlow(7, new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(safeFlow, anonymousClass2, 0)), new AnonymousClass2(this, continuation, 1), 2), ViewModelKt.getViewModelScope(this));
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(accountOAuthViewModel.effect, new AnonymousClass2(this, continuation, 2), 2), ViewModelKt.getViewModelScope(this));
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        ThundermailContract$Event thundermailContract$Event = (ThundermailContract$Event) obj;
        thundermailContract$Event.getClass();
        boolean equals = thundermailContract$Event.equals(ThundermailContract$Event.SignInClicked.INSTANCE);
        AccountOAuthViewModel accountOAuthViewModel = this.accountOAuthViewModel;
        if (equals) {
            accountOAuthViewModel.event((AccountOAuthContract$Event) AccountOAuthContract$Event.OnBackClicked.INSTANCE$2);
        } else {
            if (!(thundermailContract$Event instanceof ThundermailContract$Event.OnOAuthResult)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            ThundermailContract$Event.OnOAuthResult onOAuthResult = (ThundermailContract$Event.OnOAuthResult) thundermailContract$Event;
            accountOAuthViewModel.event((AccountOAuthContract$Event) new AccountOAuthContract$Event.OnOAuthResult(onOAuthResult.data, onOAuthResult.resultCode));
        }
    }
}
