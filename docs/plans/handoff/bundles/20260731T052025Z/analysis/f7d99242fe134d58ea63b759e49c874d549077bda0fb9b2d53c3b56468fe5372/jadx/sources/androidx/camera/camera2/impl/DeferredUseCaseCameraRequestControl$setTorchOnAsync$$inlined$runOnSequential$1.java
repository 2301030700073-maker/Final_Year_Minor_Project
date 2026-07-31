package androidx.camera.camera2.impl;

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
public final class DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = deferredUseCaseCameraRequestControl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl = this.this$0;
        switch (i) {
            case 0:
                return new DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(deferredUseCaseCameraRequestControl, continuation, 0);
            case 1:
                return new DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(deferredUseCaseCameraRequestControl, continuation, 1);
            default:
                return new DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(deferredUseCaseCameraRequestControl, continuation, 2);
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
        return ((DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Deferred torchOnAsync = DeferredUseCaseCameraRequestControl.access$getOrCreateImpl(deferredUseCaseCameraRequestControl).setTorchOnAsync();
                    this.label = 1;
                    Object awaitInternal = ((CompletableDeferredImpl) torchOnAsync).awaitInternal(this);
                    if (awaitInternal == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 1:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UseCaseCameraRequestControlImpl access$getOrCreateImpl = DeferredUseCaseCameraRequestControl.access$getOrCreateImpl(deferredUseCaseCameraRequestControl);
                    this.label = 1;
                    Object awaitSurfaceSetup = access$getOrCreateImpl.awaitSurfaceSetup(this);
                    if (awaitSurfaceSetup == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            default:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Deferred cancelFocusAndMeteringAsync = DeferredUseCaseCameraRequestControl.access$getOrCreateImpl(deferredUseCaseCameraRequestControl).cancelFocusAndMeteringAsync();
                    this.label = 1;
                    Object awaitInternal2 = ((CompletableDeferredImpl) cancelFocusAndMeteringAsync).awaitInternal(this);
                    if (awaitInternal2 == coroutineSingletons) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
        }
        return coroutineSingletons;
    }
}
