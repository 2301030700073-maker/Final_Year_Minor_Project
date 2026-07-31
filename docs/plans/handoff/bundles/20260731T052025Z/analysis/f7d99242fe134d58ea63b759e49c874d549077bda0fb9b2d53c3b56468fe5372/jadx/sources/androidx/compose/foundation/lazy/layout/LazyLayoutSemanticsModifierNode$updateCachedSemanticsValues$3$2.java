package androidx.compose.foundation.lazy.layout;

import androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $index;
    public final /* synthetic */ int $r8$classId = 1;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, int i) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$index = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        int i2 = this.$index;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2((LazyLayoutSemanticsModifierNode) obj2, i2, continuation);
            default:
                return new LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2((DeferredUseCaseCameraRequestControl) obj2, continuation, i2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        int i2 = this.$index;
        Object obj2 = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    LazyLayoutSemanticState lazyLayoutSemanticState = ((LazyLayoutSemanticsModifierNode) obj2).state;
                    this.label = 1;
                    if (lazyLayoutSemanticState.scrollToItem(i2, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            default:
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Deferred mo21setTorchOffAsyncMtizInI = DeferredUseCaseCameraRequestControl.access$getOrCreateImpl((DeferredUseCaseCameraRequestControl) obj2).mo21setTorchOffAsyncMtizInI(i2);
                this.label = 1;
                Object awaitInternal = ((CompletableDeferredImpl) mo21setTorchOffAsyncMtizInI).awaitInternal(this);
                return awaitInternal == coroutineSingletons ? coroutineSingletons : awaitInternal;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i, Continuation continuation) {
        super(2, continuation);
        this.this$0 = lazyLayoutSemanticsModifierNode;
        this.$index = i;
    }
}
