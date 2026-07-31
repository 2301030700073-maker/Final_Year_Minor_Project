package app.k9mail.feature.account.setup.ui.createaccount;

import androidx.camera.core.impl.Config;
import app.k9mail.feature.account.setup.domain.entity.AccountUuid;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$Effect;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountContract$Effect;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Effect;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function0 $onBack$inlined;
    public final /* synthetic */ Function1 $onNext$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ UnidirectionalViewModel $this_observe;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2(UnidirectionalViewModel unidirectionalViewModel, Continuation continuation, Function1 function1, Function0 function0) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$this_observe = unidirectionalViewModel;
        this.$onNext$inlined = function1;
        this.$onBack$inlined = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2(this.$this_observe, continuation, this.$onBack$inlined, this.$onNext$inlined, 0);
            case 1:
                return new CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2(this.$this_observe, continuation, this.$onBack$inlined, this.$onNext$inlined, 1);
            default:
                return new CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2(this.$this_observe, continuation, this.$onNext$inlined, this.$onBack$inlined);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return coroutineSingletons;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Function0 function0 = this.$onBack$inlined;
        Function1 function1 = this.$onNext$inlined;
        UnidirectionalViewModel unidirectionalViewModel = this.$this_observe;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = 1;
        switch (i) {
            case 0:
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        throw Config.CC.m92m(obj);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow effect = unidirectionalViewModel.getEffect();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(function0, function1, 0);
                this.label = 1;
                effect.collect(anonymousClass1, this);
                return coroutineSingletons;
            case 1:
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        throw Config.CC.m92m(obj);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow effect2 = unidirectionalViewModel.getEffect();
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(function0, function1, i2);
                this.label = 1;
                effect2.collect(anonymousClass12, this);
                return coroutineSingletons;
            default:
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        throw Config.CC.m92m(obj);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow effect3 = unidirectionalViewModel.getEffect();
                AnonymousClass1 anonymousClass13 = new AnonymousClass1(function1, function0);
                this.label = 1;
                effect3.collect(anonymousClass13, this);
                return coroutineSingletons;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1, reason: invalid class name */
    public final class AnonymousClass1 implements FlowCollector {
        public final /* synthetic */ Function0 $onBack$inlined;
        public final /* synthetic */ Function1 $onNext$inlined;
        public final /* synthetic */ int $r8$classId;

        public AnonymousClass1(Function1 function1, Function0 function0) {
            this.$r8$classId = 2;
            this.$onNext$inlined = function1;
            this.$onBack$inlined = function0;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            Function0 function0 = this.$onBack$inlined;
            Function1 function1 = this.$onNext$inlined;
            switch (i) {
                case 0:
                    CreateAccountContract$Effect createAccountContract$Effect = (CreateAccountContract$Effect) obj;
                    if (!Intrinsics.areEqual(createAccountContract$Effect, CreateAccountContract$Effect.NavigateBack.INSTANCE)) {
                        if (!(createAccountContract$Effect instanceof CreateAccountContract$Effect.NavigateNext)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function1.invoke(new AccountUuid(((CreateAccountContract$Effect.NavigateNext) createAccountContract$Effect).accountUuid));
                        }
                    } else {
                        function0.invoke();
                    }
                    break;
                case 1:
                    AccountAutoDiscoveryContract$Effect accountAutoDiscoveryContract$Effect = (AccountAutoDiscoveryContract$Effect) obj;
                    if (!Intrinsics.areEqual(accountAutoDiscoveryContract$Effect, AccountAutoDiscoveryContract$Effect.NavigateBack.INSTANCE)) {
                        if (!(accountAutoDiscoveryContract$Effect instanceof AccountAutoDiscoveryContract$Effect.NavigateNext)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function1.invoke(((AccountAutoDiscoveryContract$Effect.NavigateNext) accountAutoDiscoveryContract$Effect).result);
                        }
                    } else {
                        function0.invoke();
                    }
                    break;
                default:
                    SpecialFoldersContract$Effect specialFoldersContract$Effect = (SpecialFoldersContract$Effect) obj;
                    if (!(specialFoldersContract$Effect instanceof SpecialFoldersContract$Effect.NavigateNext)) {
                        if (!Intrinsics.areEqual(specialFoldersContract$Effect, SpecialFoldersContract$Effect.NavigateBack.INSTANCE)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function0.invoke();
                        }
                    } else {
                        function1.invoke(Boolean.valueOf(((SpecialFoldersContract$Effect.NavigateNext) specialFoldersContract$Effect).isManualSetup));
                    }
                    break;
            }
            return null;
        }

        public /* synthetic */ AnonymousClass1(Function0 function0, Function1 function1, int i) {
            this.$r8$classId = i;
            this.$onBack$inlined = function0;
            this.$onNext$inlined = function1;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2(UnidirectionalViewModel unidirectionalViewModel, Continuation continuation, Function0 function0, Function1 function1, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_observe = unidirectionalViewModel;
        this.$onBack$inlined = function0;
        this.$onNext$inlined = function1;
    }
}
