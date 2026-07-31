package androidx.lifecycle.compose;

import androidx.lifecycle.Lifecycle;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ComposeLifecycleOwner $localLifecycleOwner;
    final /* synthetic */ Lifecycle.State $maxLifecycle;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1(ComposeLifecycleOwner composeLifecycleOwner, Lifecycle.State state, Continuation continuation) {
        super(2, continuation);
        this.$localLifecycleOwner = composeLifecycleOwner;
        this.$maxLifecycle = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1(this.$localLifecycleOwner, this.$maxLifecycle, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1 rememberLifecycleOwnerKt$rememberLifecycleOwner$2$1 = (RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1) create((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.INSTANCE;
        rememberLifecycleOwnerKt$rememberLifecycleOwner$2$1.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        ComposeLifecycleOwner composeLifecycleOwner = this.$localLifecycleOwner;
        composeLifecycleOwner.maxLifecycleState = this.$maxLifecycle;
        composeLifecycleOwner.updateLifecycleState();
        return Unit.INSTANCE;
    }
}
