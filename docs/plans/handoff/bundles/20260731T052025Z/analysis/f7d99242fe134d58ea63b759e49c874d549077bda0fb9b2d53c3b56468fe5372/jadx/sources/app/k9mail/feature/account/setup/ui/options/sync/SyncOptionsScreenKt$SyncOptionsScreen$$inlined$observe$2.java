package app.k9mail.feature.account.setup.ui.options.sync;

import androidx.camera.core.impl.Config;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$Effect;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$Effect;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$Effect;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Effect;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$Effect;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function0 $onBack$inlined;
    public final /* synthetic */ Function0 $onNext$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ UnidirectionalViewModel $this_observe;
    public int label;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1, reason: invalid class name */
    public final class AnonymousClass1 implements FlowCollector {
        public final /* synthetic */ Function0 $onBack$inlined;
        public final /* synthetic */ Function0 $onNext$inlined;
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(Function0 function0, Function0 function02, int i) {
            this.$r8$classId = i;
            this.$onBack$inlined = function0;
            this.$onNext$inlined = function02;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            Function0 function0 = this.$onNext$inlined;
            Function0 function02 = this.$onBack$inlined;
            switch (i) {
                case 0:
                    SyncOptionsContract$Effect$NavigateBack syncOptionsContract$Effect$NavigateBack = (SyncOptionsContract$Effect$NavigateBack) obj;
                    if (!Intrinsics.areEqual(syncOptionsContract$Effect$NavigateBack, SyncOptionsContract$Effect$NavigateBack.INSTANCE)) {
                        if (!Intrinsics.areEqual(syncOptionsContract$Effect$NavigateBack, SyncOptionsContract$Effect$NavigateBack.INSTANCE$1)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function0.invoke();
                        }
                    } else {
                        function02.invoke();
                    }
                    break;
                case 1:
                    SaveServerSettingsContract$Effect saveServerSettingsContract$Effect = (SaveServerSettingsContract$Effect) obj;
                    if (!(saveServerSettingsContract$Effect instanceof SaveServerSettingsContract$Effect.NavigateNext)) {
                        if (!Intrinsics.areEqual(saveServerSettingsContract$Effect, SaveServerSettingsContract$Effect.NavigateBack.INSTANCE)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function0.invoke();
                        }
                    } else {
                        function02.invoke();
                    }
                    break;
                case 2:
                    ServerCertificateErrorContract$Effect serverCertificateErrorContract$Effect = (ServerCertificateErrorContract$Effect) obj;
                    if (!(serverCertificateErrorContract$Effect instanceof ServerCertificateErrorContract$Effect.NavigateCertificateAccepted)) {
                        if (!(serverCertificateErrorContract$Effect instanceof ServerCertificateErrorContract$Effect.NavigateBack)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function0.invoke();
                        }
                    } else {
                        function02.invoke();
                    }
                    break;
                case 3:
                    OutgoingServerSettingsContract$Effect outgoingServerSettingsContract$Effect = (OutgoingServerSettingsContract$Effect) obj;
                    if (!Intrinsics.areEqual(outgoingServerSettingsContract$Effect, OutgoingServerSettingsContract$Effect.NavigateBack.INSTANCE)) {
                        if (!Intrinsics.areEqual(outgoingServerSettingsContract$Effect, OutgoingServerSettingsContract$Effect.NavigateNext.INSTANCE)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function0.invoke();
                        }
                    } else {
                        function02.invoke();
                    }
                    break;
                case 4:
                    ServerValidationContract$Effect serverValidationContract$Effect = (ServerValidationContract$Effect) obj;
                    if (!(serverValidationContract$Effect instanceof ServerValidationContract$Effect.NavigateNext)) {
                        if (!(serverValidationContract$Effect instanceof ServerValidationContract$Effect.NavigateBack)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function0.invoke();
                        }
                    } else {
                        function02.invoke();
                    }
                    break;
                default:
                    DisplayOptionsContract$Effect displayOptionsContract$Effect = (DisplayOptionsContract$Effect) obj;
                    if (!Intrinsics.areEqual(displayOptionsContract$Effect, DisplayOptionsContract$Effect.NavigateBack.INSTANCE)) {
                        if (!Intrinsics.areEqual(displayOptionsContract$Effect, DisplayOptionsContract$Effect.NavigateNext.INSTANCE)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            function0.invoke();
                        }
                    } else {
                        function02.invoke();
                    }
                    break;
            }
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(UnidirectionalViewModel unidirectionalViewModel, Continuation continuation, Function0 function0, Function0 function02, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_observe = unidirectionalViewModel;
        this.$onBack$inlined = function0;
        this.$onNext$inlined = function02;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(this.$this_observe, continuation, this.$onBack$inlined, this.$onNext$inlined, 0);
            case 1:
                return new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(this.$this_observe, continuation, this.$onBack$inlined, this.$onNext$inlined, 1);
            case 2:
                return new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(this.$this_observe, continuation, this.$onBack$inlined, this.$onNext$inlined, 2);
            case 3:
                return new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(this.$this_observe, continuation, this.$onBack$inlined, this.$onNext$inlined, 3);
            default:
                return new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(this.$this_observe, continuation, this.$onBack$inlined, this.$onNext$inlined, 4);
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
                ((SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 2:
                ((SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 3:
                ((SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return coroutineSingletons;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Function0 function0 = this.$onNext$inlined;
        Function0 function02 = this.$onBack$inlined;
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
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(function02, function0, 0);
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
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(function02, function0, i2);
                this.label = 1;
                effect2.collect(anonymousClass12, this);
                return coroutineSingletons;
            case 2:
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
                AnonymousClass1 anonymousClass13 = new AnonymousClass1(function02, function0, 3);
                this.label = 1;
                effect3.collect(anonymousClass13, this);
                return coroutineSingletons;
            case 3:
                int i6 = this.label;
                if (i6 != 0) {
                    if (i6 == 1) {
                        throw Config.CC.m92m(obj);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow effect4 = unidirectionalViewModel.getEffect();
                AnonymousClass1 anonymousClass14 = new AnonymousClass1(function02, function0, 4);
                this.label = 1;
                effect4.collect(anonymousClass14, this);
                return coroutineSingletons;
            default:
                int i7 = this.label;
                if (i7 != 0) {
                    if (i7 == 1) {
                        throw Config.CC.m92m(obj);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow effect5 = unidirectionalViewModel.getEffect();
                AnonymousClass1 anonymousClass15 = new AnonymousClass1(function02, function0, 5);
                this.label = 1;
                effect5.collect(anonymousClass15, this);
                return coroutineSingletons;
        }
    }
}
