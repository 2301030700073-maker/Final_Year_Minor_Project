package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: Draggable.kt */
/* loaded from: classes.dex */
final class DefaultDraggableState implements DraggableState {
    private final Function1 onDelta;
    private final DragScope dragScope = new DragScope() { // from class: androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1
        @Override // androidx.compose.foundation.gestures.DragScope
        public void dragBy(float f) {
            DefaultDraggableState.this.getOnDelta().invoke(Float.valueOf(f));
        }
    };
    private final MutatorMutex scrollMutex = new MutatorMutex();

    public DefaultDraggableState(Function1 function1) {
        this.onDelta = function1;
    }

    public final Function1 getOnDelta() {
        return this.onDelta;
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public Object drag(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new DefaultDraggableState$drag$2(this, mutatePriority, function2, null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }
}
