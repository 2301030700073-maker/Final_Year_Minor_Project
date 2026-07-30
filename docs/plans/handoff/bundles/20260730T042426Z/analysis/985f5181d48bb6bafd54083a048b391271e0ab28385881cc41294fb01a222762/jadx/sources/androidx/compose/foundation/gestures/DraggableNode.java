package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* compiled from: Draggable.kt */
/* loaded from: classes.dex */
public final class DraggableNode extends DragGestureNode {
    private Function3 onDragStarted;
    private Function3 onDragStopped;
    private Orientation orientation;
    private boolean reverseDirection;
    private boolean startDragImmediately;
    private DraggableState state;

    public DraggableNode(DraggableState draggableState, Function1 function1, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, Function3 function3, Function3 function32, boolean z3) {
        super(function1, z, mutableInteractionSource, orientation);
        this.state = draggableState;
        this.orientation = orientation;
        this.startDragImmediately = z2;
        this.onDragStarted = function3;
        this.onDragStopped = function32;
        this.reverseDirection = z3;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public Object drag(Function2 function2, Continuation continuation) {
        Object drag = this.state.drag(MutatePriority.UserInput, new DraggableNode$drag$2(function2, this, null), continuation);
        return drag == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? drag : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* renamed from: onDragStarted-k-4lQ0M */
    public void mo189onDragStartedk4lQ0M(long j) {
        Function3 function3;
        if (isAttached()) {
            Function3 function32 = this.onDragStarted;
            function3 = DraggableKt.NoOpOnDragStarted;
            if (Intrinsics.areEqual(function32, function3)) {
                return;
            }
            BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new DraggableNode$onDragStarted$1(this, j, null), 3, null);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* renamed from: onDragStopped-TH1AsA0 */
    public void mo190onDragStoppedTH1AsA0(long j) {
        Function3 function3;
        if (isAttached()) {
            Function3 function32 = this.onDragStopped;
            function3 = DraggableKt.NoOpOnDragStopped;
            if (Intrinsics.areEqual(function32, function3)) {
                return;
            }
            BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new DraggableNode$onDragStopped$1(this, j, null), 3, null);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public boolean startDragImmediately() {
        return this.startDragImmediately;
    }

    public final void update(DraggableState draggableState, Function1 function1, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, Function3 function3, Function3 function32, boolean z3) {
        boolean z4;
        boolean z5;
        Function3 function33;
        if (Intrinsics.areEqual(this.state, draggableState)) {
            z4 = false;
        } else {
            this.state = draggableState;
            z4 = true;
        }
        if (this.orientation != orientation) {
            this.orientation = orientation;
            z4 = true;
        }
        if (this.reverseDirection != z3) {
            this.reverseDirection = z3;
            function33 = function3;
            z5 = true;
        } else {
            z5 = z4;
            function33 = function3;
        }
        this.onDragStarted = function33;
        this.onDragStopped = function32;
        this.startDragImmediately = z2;
        update(function1, z, mutableInteractionSource, orientation, z5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: reverseIfNeeded-AH228Gc, reason: not valid java name */
    public final long m203reverseIfNeededAH228Gc(long j) {
        return Velocity.m2529timesadjELrA(j, this.reverseDirection ? -1.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m204reverseIfNeededMKHz9U(long j) {
        return Offset.m1173timestuRUvjQ(j, this.reverseDirection ? -1.0f : 1.0f);
    }
}
