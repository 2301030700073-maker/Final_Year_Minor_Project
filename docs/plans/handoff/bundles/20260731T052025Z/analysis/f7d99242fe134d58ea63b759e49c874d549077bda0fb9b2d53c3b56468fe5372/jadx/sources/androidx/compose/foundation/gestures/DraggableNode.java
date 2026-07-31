package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragEvent;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableNode extends DragGestureNode {
    public Function3 onDragStarted;
    public Function3 onDragStopped;
    public Orientation orientation;
    public boolean startDragImmediately;
    public DraggableState state;

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final Object drag(Function2 function2, Continuation continuation) {
        Object drag = this.state.drag(new DraggableNode$drag$2((DragGestureNode$startListeningForEvents$1) function2, this, (Continuation) null, 0), (SuspendLambda) continuation);
        return drag == CoroutineSingletons.COROUTINE_SUSPENDED ? drag : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* renamed from: onDragStarted-k-4lQ0M */
    public final void mo162onDragStartedk4lQ0M(long j) {
        if (!this.isAttached || Intrinsics.areEqual(this.onDragStarted, DraggableKt.NoOpOnDragStarted)) {
            return;
        }
        JobKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new DraggableNode$onDragStarted$1(this, j, (Continuation) null, 0), 1);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void onDragStopped(DragEvent.DragStopped dragStopped) {
        if (!this.isAttached || Intrinsics.areEqual(this.onDragStopped, DraggableKt.NoOpOnDragStopped)) {
            return;
        }
        JobKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new DraggableNode$drag$2(this, dragStopped, (Continuation) null), 1);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final boolean startDragImmediately() {
        return this.startDragImmediately;
    }
}
