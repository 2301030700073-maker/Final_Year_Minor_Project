package androidx.compose.foundation.gestures;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$processTapGesture$3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ PressGestureScopeImpl $pressScope;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TapGestureDetectorKt$processTapGesture$3(PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$pressScope = pressGestureScopeImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
        switch (i) {
            case 0:
                return new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl, continuation, 0);
            case 1:
                return new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl, continuation, 1);
            case 2:
                return new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl, continuation, 2);
            case 3:
                return new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl, continuation, 3);
            case 4:
                return new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl, continuation, 4);
            case 5:
                return new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl, continuation, 5);
            case 6:
                return new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl, continuation, 6);
            default:
                return new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl, continuation, 7);
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
                ((TapGestureDetectorKt$processTapGesture$3) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((TapGestureDetectorKt$processTapGesture$3) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 2:
                ((TapGestureDetectorKt$processTapGesture$3) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 3:
                ((TapGestureDetectorKt$processTapGesture$3) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 4:
                ((TapGestureDetectorKt$processTapGesture$3) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 5:
                ((TapGestureDetectorKt$processTapGesture$3) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 6:
                ((TapGestureDetectorKt$processTapGesture$3) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((TapGestureDetectorKt$processTapGesture$3) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                pressGestureScopeImpl.release();
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                pressGestureScopeImpl.cancel();
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                pressGestureScopeImpl.release();
                break;
            case 3:
                ResultKt.throwOnFailure(obj);
                pressGestureScopeImpl.cancel();
                break;
            case 4:
                ResultKt.throwOnFailure(obj);
                pressGestureScopeImpl.release();
                break;
            case 5:
                ResultKt.throwOnFailure(obj);
                pressGestureScopeImpl.release();
                break;
            case 6:
                ResultKt.throwOnFailure(obj);
                pressGestureScopeImpl.cancel();
                break;
            default:
                ResultKt.throwOnFailure(obj);
                pressGestureScopeImpl.release();
                break;
        }
        return unit;
    }
}
