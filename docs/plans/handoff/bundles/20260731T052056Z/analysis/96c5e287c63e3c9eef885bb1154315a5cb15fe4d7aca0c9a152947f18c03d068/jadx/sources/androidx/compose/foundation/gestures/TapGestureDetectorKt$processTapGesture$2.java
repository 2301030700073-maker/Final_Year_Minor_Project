package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$processTapGesture$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ PointerInputChange $down;
    public final /* synthetic */ Function3 $onPress;
    public final /* synthetic */ PressGestureScopeImpl $pressScope;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TapGestureDetectorKt$processTapGesture$2(Function3 function3, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$onPress = function3;
        this.$pressScope = pressGestureScopeImpl;
        this.$down = pointerInputChange;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new TapGestureDetectorKt$processTapGesture$2(this.$onPress, this.$pressScope, this.$down, continuation, 0);
            default:
                return new TapGestureDetectorKt$processTapGesture$2(this.$onPress, this.$pressScope, this.$down, continuation, 1);
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
        return ((TapGestureDetectorKt$processTapGesture$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        PointerInputChange pointerInputChange = this.$down;
        PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
        Function3 function3 = this.$onPress;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Offset offset = new Offset(pointerInputChange.position);
                    this.label = 1;
                    return function3.invoke(pressGestureScopeImpl, offset, this) == coroutineSingletons ? coroutineSingletons : unit;
                }
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Offset offset2 = new Offset(pointerInputChange.position);
                    this.label = 1;
                    return function3.invoke(pressGestureScopeImpl, offset2, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
                }
                if (i3 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
