package androidx.compose.foundation.gestures;

import androidx.camera.view.PreviewView;
import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.HitTestResultKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http1.HeadersReader;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IndirectPointerInputDragCycleDetector {
    public IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown _awaitDownState;
    public IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup _awaitGesturePickupState;
    public IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop _awaitTouchSlopState;
    public IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging _draggingState;
    public ScrollableKt currentDragState;
    public final DragGestureNode node;
    public long nodeOffset;
    public final PriorityQueue offsetSmoother;
    public long previousPositionOnScreen = 9205357640488583168L;
    public HeadersReader touchSlopDetector;
    public final PriorityQueue touchSmooth;
    public PreviewView.AnonymousClass1 velocityTracker;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.values().length];
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public IndirectPointerInputDragCycleDetector(DragGestureNode dragGestureNode) {
        this.node = dragGestureNode;
        byte b = 0;
        PriorityQueue priorityQueue = new PriorityQueue(3, b);
        priorityQueue.array = new MutableObjectList();
        this.touchSmooth = priorityQueue;
        PriorityQueue priorityQueue2 = new PriorityQueue(4, b);
        priorityQueue2.array = new MutableLongList();
        this.offsetSmoother = priorityQueue2;
        this.nodeOffset = 0L;
    }

    /* renamed from: moveToAwaitTouchSlopState-aWI9W7U$default, reason: not valid java name */
    public static void m166moveToAwaitTouchSlopStateaWI9W7U$default(IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector, IndirectPointerInputChange indirectPointerInputChange, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = 0;
        }
        DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.node;
        IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop = indirectPointerInputDragCycleDetector._awaitTouchSlopState;
        if (indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop == null) {
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop = new IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop();
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.initialDown = null;
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId = Long.MAX_VALUE;
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
            indirectPointerInputDragCycleDetector._awaitTouchSlopState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
        }
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.initialDown = indirectPointerInputChange;
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId = j;
        HeadersReader headersReader = indirectPointerInputDragCycleDetector.touchSlopDetector;
        Orientation orientation = dragGestureNode.orientationLock;
        if (headersReader == null) {
            indirectPointerInputDragCycleDetector.touchSlopDetector = new HeadersReader(orientation);
        } else {
            headersReader.source = orientation;
            headersReader.headerLimit = j2;
        }
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
        indirectPointerInputDragCycleDetector.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
    }

    public final void moveToAwaitDownState() {
        IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown = this._awaitDownState;
        IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop = IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
        if (indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown == null) {
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown = new IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown();
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.awaitTouchSlop = awaitTouchSlop;
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.consumedOnInitial = false;
            this._awaitDownState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
        }
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.awaitTouchSlop = awaitTouchSlop;
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.consumedOnInitial = false;
        this.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
    }

    /* renamed from: moveToAwaitGesturePickupState-rnUCldI, reason: not valid java name */
    public final void m167moveToAwaitGesturePickupStaternUCldI(IndirectPointerInputChange indirectPointerInputChange, long j, HeadersReader headersReader) {
        IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup = this._awaitGesturePickupState;
        if (indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup == null) {
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup = new IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup();
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.initialDown = null;
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.pointerId = Long.MAX_VALUE;
            this._awaitGesturePickupState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;
        }
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.initialDown = indirectPointerInputChange;
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.pointerId = j;
        headersReader.headerLimit = 0L;
        this.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;
    }

    public final PreviewView.AnonymousClass1 requireVelocityTracker() {
        PreviewView.AnonymousClass1 anonymousClass1 = this.velocityTracker;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Velocity Tracker not initialized.");
        return null;
    }

    /* renamed from: sendDragEvent-Eu1f8Dk, reason: not valid java name */
    public final void m168sendDragEventEu1f8Dk(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        DragGestureNode dragGestureNode = this.node;
        long mo580localToScreenMKHz9U = HitTestResultKt.requireLayoutCoordinates(dragGestureNode).mo580localToScreenMKHz9U(0L);
        if (!Offset.m437equalsimpl0(this.previousPositionOnScreen, 9205357640488583168L) && !Offset.m437equalsimpl0(mo580localToScreenMKHz9U, this.previousPositionOnScreen)) {
            this.nodeOffset = Offset.m441plusMKHz9U(this.nodeOffset, Offset.m440minusMKHz9U(mo580localToScreenMKHz9U, this.previousPositionOnScreen));
        }
        this.previousPositionOnScreen = mo580localToScreenMKHz9U;
        Orientation orientation = dragGestureNode.orientationLock;
        orientation.getClass();
        DraggableKt$NoOpOnDragStarted$1 draggableKt$NoOpOnDragStarted$1 = DraggableKt.NoOpOnDragStarted;
        if (Math.abs(Float.intBitsToFloat((int) (orientation == Orientation.Vertical ? j & 4294967295L : j >> 32))) > 2.0f) {
            ScrollableKt.m181access$addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker(), indirectPointerInputChange, dragGestureNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
            PriorityQueue priorityQueue = this.offsetSmoother;
            MutableLongList mutableLongList = (MutableLongList) priorityQueue.array;
            int i = mutableLongList._size;
            if (i == 3) {
                int i2 = priorityQueue.size;
                priorityQueue.size = i2 + 1;
                if (i2 < 0 || i2 >= i) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Index must be between 0 and size");
                    return;
                } else {
                    long[] jArr = mutableLongList.content;
                    long j2 = jArr[i2];
                    jArr[i2] = j;
                }
            } else {
                mutableLongList.add(j);
            }
            if (priorityQueue.size == 3) {
                priorityQueue.size = 0;
            }
            long[] jArr2 = mutableLongList.content;
            int i3 = mutableLongList._size;
            float f = 0.0f;
            float f2 = 0.0f;
            for (int i4 = 0; i4 < i3; i4++) {
                f2 += Float.intBitsToFloat((int) (jArr2[i4] >> 32));
            }
            int i5 = mutableLongList._size;
            float f3 = f2 / i5;
            long[] jArr3 = mutableLongList.content;
            for (int i6 = 0; i6 < i5; i6++) {
                f += Float.intBitsToFloat((int) (jArr3[i6] & 4294967295L));
            }
            dragGestureNode.onDragEvent(new DragEvent.DragDelta((Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f / mutableLongList._size) & 4294967295L), true));
        }
    }

    /* renamed from: sendDragStart-3f7A7Is, reason: not valid java name */
    public final void m169sendDragStart3f7A7Is(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerInputChange indirectPointerInputChange2, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        if (this.velocityTracker == null) {
            this.velocityTracker = new PreviewView.AnonymousClass1(24);
        }
        this.nodeOffset = 0L;
        PreviewView.AnonymousClass1 requireVelocityTracker = requireVelocityTracker();
        DragGestureNode dragGestureNode = this.node;
        ScrollableKt.m181access$addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker, indirectPointerInputChange, dragGestureNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
        long m440minusMKHz9U = Offset.m440minusMKHz9U(ScrollableKt.m184primaryAxisPosition_bfSUIo(indirectPointerInputChange2, dragGestureNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis), j);
        if (((Boolean) dragGestureNode.canDrag.invoke(new PointerType(1))).booleanValue()) {
            this.previousPositionOnScreen = HitTestResultKt.requireLayoutCoordinates(dragGestureNode).mo580localToScreenMKHz9U(0L);
            dragGestureNode.onDragEvent(new DragEvent.DragStarted(m440minusMKHz9U));
        }
        PriorityQueue priorityQueue = this.offsetSmoother;
        priorityQueue.size = 0;
        ((MutableLongList) priorityQueue.array)._size = 0;
    }
}
