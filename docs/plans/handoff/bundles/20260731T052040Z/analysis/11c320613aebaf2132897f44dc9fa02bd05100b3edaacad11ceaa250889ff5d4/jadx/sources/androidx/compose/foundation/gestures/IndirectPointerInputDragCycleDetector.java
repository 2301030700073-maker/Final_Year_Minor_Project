package androidx.compose.foundation.gestures;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.HitTestResultKt;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http1.HeadersReader;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public PopupMenu$1 velocityTracker;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        PriorityQueue priorityQueue = new PriorityQueue((char) 0, 1);
        priorityQueue.array = new MutableObjectList();
        this.touchSmooth = priorityQueue;
        PriorityQueue priorityQueue2 = new PriorityQueue((char) 0, 2);
        priorityQueue2.array = new MutableLongList();
        this.offsetSmoother = priorityQueue2;
        this.nodeOffset = 0L;
    }

    /* renamed from: moveToAwaitTouchSlopState-aWI9W7U$default, reason: not valid java name */
    public static void m48moveToAwaitTouchSlopStateaWI9W7U$default(IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector, IndirectPointerInputChange indirectPointerInputChange, long j, long j2, int i) {
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
            indirectPointerInputDragCycleDetector.touchSlopDetector = new HeadersReader(orientation, 0);
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
    public final void m49moveToAwaitGesturePickupStaternUCldI(IndirectPointerInputChange indirectPointerInputChange, long j, HeadersReader headersReader) {
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

    public final PopupMenu$1 requireVelocityTracker() {
        PopupMenu$1 popupMenu$1 = this.velocityTracker;
        if (popupMenu$1 != null) {
            return popupMenu$1;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Velocity Tracker not initialized.");
        return null;
    }

    /* renamed from: sendDragEvent-Eu1f8Dk, reason: not valid java name */
    public final void m50sendDragEventEu1f8Dk(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        DragGestureNode dragGestureNode = this.node;
        long mo299localToScreenMKHz9U = HitTestResultKt.requireLayoutCoordinates(dragGestureNode).mo299localToScreenMKHz9U(0L);
        if (!Offset.m196equalsimpl0(this.previousPositionOnScreen, 9205357640488583168L) && !Offset.m196equalsimpl0(mo299localToScreenMKHz9U, this.previousPositionOnScreen)) {
            this.nodeOffset = Offset.m200plusMKHz9U(this.nodeOffset, Offset.m199minusMKHz9U(mo299localToScreenMKHz9U, this.previousPositionOnScreen));
        }
        this.previousPositionOnScreen = mo299localToScreenMKHz9U;
        Orientation orientation = dragGestureNode.orientationLock;
        orientation.getClass();
        int i = DraggableKt.$r8$clinit;
        if (Math.abs(Float.intBitsToFloat((int) (orientation == Orientation.Vertical ? j & 4294967295L : j >> 32))) > 2.0f) {
            ScrollableKt.m53access$addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker(), indirectPointerInputChange, dragGestureNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
            PriorityQueue priorityQueue = this.offsetSmoother;
            MutableLongList mutableLongList = (MutableLongList) priorityQueue.array;
            int i2 = mutableLongList._size;
            if (i2 == 3) {
                int i3 = priorityQueue.size;
                priorityQueue.size = i3 + 1;
                if (i3 < 0 || i3 >= i2) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Index must be between 0 and size");
                    return;
                } else {
                    long[] jArr = mutableLongList.content;
                    long j2 = jArr[i3];
                    jArr[i3] = j;
                }
            } else {
                mutableLongList.add(j);
            }
            if (priorityQueue.size == 3) {
                priorityQueue.size = 0;
            }
            long[] jArr2 = mutableLongList.content;
            int i4 = mutableLongList._size;
            float f = 0.0f;
            float f2 = 0.0f;
            for (int i5 = 0; i5 < i4; i5++) {
                f2 += Float.intBitsToFloat((int) (jArr2[i5] >> 32));
            }
            int i6 = mutableLongList._size;
            float f3 = f2 / i6;
            long[] jArr3 = mutableLongList.content;
            for (int i7 = 0; i7 < i6; i7++) {
                f += Float.intBitsToFloat((int) (jArr3[i7] & 4294967295L));
            }
            dragGestureNode.onDragEvent(new DragEvent.DragDelta((Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f / mutableLongList._size) & 4294967295L), true));
        }
    }

    /* renamed from: sendDragStart-3f7A7Is, reason: not valid java name */
    public final void m51sendDragStart3f7A7Is(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerInputChange indirectPointerInputChange2, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        if (this.velocityTracker == null) {
            this.velocityTracker = new PopupMenu$1(26);
        }
        this.nodeOffset = 0L;
        PopupMenu$1 requireVelocityTracker = requireVelocityTracker();
        DragGestureNode dragGestureNode = this.node;
        ScrollableKt.m53access$addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker, indirectPointerInputChange, dragGestureNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
        long m199minusMKHz9U = Offset.m199minusMKHz9U(ScrollableKt.m56primaryAxisPosition_bfSUIo(indirectPointerInputChange2, dragGestureNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis), j);
        if (((Boolean) dragGestureNode.canDrag.invoke(new PointerType(1))).booleanValue()) {
            this.previousPositionOnScreen = HitTestResultKt.requireLayoutCoordinates(dragGestureNode).mo299localToScreenMKHz9U(0L);
            dragGestureNode.onDragEvent(new DragEvent.DragStarted(m199minusMKHz9U));
        }
        PriorityQueue priorityQueue = this.offsetSmoother;
        priorityQueue.size = 0;
        ((MutableLongList) priorityQueue.array)._size = 0;
    }
}
