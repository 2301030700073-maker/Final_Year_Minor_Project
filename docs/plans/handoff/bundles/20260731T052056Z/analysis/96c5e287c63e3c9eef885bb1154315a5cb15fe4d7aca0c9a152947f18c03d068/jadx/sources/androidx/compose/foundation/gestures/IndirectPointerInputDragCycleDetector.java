package androidx.compose.foundation.gestures;

import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http1.HeadersReader;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IndirectPointerInputDragCycleDetector {
    public IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown _awaitDownState;
    public IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup _awaitGesturePickupState;
    public IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop _awaitTouchSlopState;
    public IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging _draggingState;
    public ScrollableKt currentDragState;
    public final ScrollableNode node;
    public long nodeOffset;
    public final PriorityQueue offsetSmoother;
    public long previousPositionOnScreen = 9205357640488583168L;
    public HeadersReader touchSlopDetector;
    public final PriorityQueue touchSmooth;
    public HintHandler velocityTracker;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.values().length];
            try {
                iArr[IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public IndirectPointerInputDragCycleDetector(ScrollableNode scrollableNode) {
        this.node = scrollableNode;
        char c = 0;
        PriorityQueue priorityQueue = new PriorityQueue(c, 2);
        priorityQueue.array = new MutableObjectList();
        this.touchSmooth = priorityQueue;
        PriorityQueue priorityQueue2 = new PriorityQueue(c, 3);
        priorityQueue2.array = new MutableLongList();
        this.offsetSmoother = priorityQueue2;
        this.nodeOffset = 0L;
    }

    /* renamed from: moveToAwaitTouchSlopState-aWI9W7U$default, reason: not valid java name */
    public static void m75moveToAwaitTouchSlopStateaWI9W7U$default(IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector, IndirectPointerInputChange indirectPointerInputChange, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = 0;
        }
        ScrollableNode scrollableNode = indirectPointerInputDragCycleDetector.node;
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
        Orientation orientation = scrollableNode.orientationLock;
        if (headersReader == null) {
            indirectPointerInputDragCycleDetector.touchSlopDetector = new HeadersReader(orientation, 2);
        } else {
            headersReader.source = orientation;
            headersReader.headerLimit = j2;
        }
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
        indirectPointerInputDragCycleDetector.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
    }

    public final void moveToAwaitDownState() {
        IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown = this._awaitDownState;
        if (indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown == null) {
            IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop = IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown = new IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown();
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.awaitTouchSlop = awaitTouchSlop;
            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.consumedOnInitial = false;
            this._awaitDownState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
        }
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.awaitTouchSlop = IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.consumedOnInitial = false;
        this.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
    }

    /* renamed from: moveToAwaitGesturePickupState-rnUCldI, reason: not valid java name */
    public final void m76moveToAwaitGesturePickupStaternUCldI(IndirectPointerInputChange indirectPointerInputChange, long j, HeadersReader headersReader) {
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

    public final HintHandler requireVelocityTracker() {
        HintHandler hintHandler = this.velocityTracker;
        if (hintHandler != null) {
            return hintHandler;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Velocity Tracker not initialized.");
        return null;
    }

    /* renamed from: sendDragEvent-Eu1f8Dk, reason: not valid java name */
    public final void m77sendDragEventEu1f8Dk(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        ScrollableNode scrollableNode = this.node;
        long mo521localToScreenMKHz9U = HitTestResultKt.requireLayoutCoordinates(scrollableNode).mo521localToScreenMKHz9U(0L);
        if (!Offset.m383equalsimpl0(this.previousPositionOnScreen, 9205357640488583168L) && !Offset.m383equalsimpl0(mo521localToScreenMKHz9U, this.previousPositionOnScreen)) {
            this.nodeOffset = Offset.m386plusMKHz9U(this.nodeOffset, Offset.m385minusMKHz9U(mo521localToScreenMKHz9U, this.previousPositionOnScreen));
        }
        this.previousPositionOnScreen = mo521localToScreenMKHz9U;
        Orientation orientation = scrollableNode.orientationLock;
        orientation.getClass();
        int i = DraggableKt.$r8$clinit;
        if (Math.abs(Float.intBitsToFloat((int) (orientation == Orientation.Vertical ? j & 4294967295L : j >> 32))) > 2.0f) {
            ScrollableKt.m90addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker(), indirectPointerInputChange, scrollableNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
            PriorityQueue priorityQueue = this.offsetSmoother;
            MutableLongList mutableLongList = (MutableLongList) priorityQueue.array;
            int i2 = mutableLongList._size;
            if (i2 == 3) {
                int i3 = priorityQueue.size;
                priorityQueue.size = i3 + 1;
                if (i3 < 0 || i3 >= i2) {
                    Gson$$ExternalSyntheticBUOutline0.m$2("Index must be between 0 and size");
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
            float f = RecyclerView.DECELERATION_RATE;
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
            scrollableNode.onDragEvent(new DragEvent.DragDelta((Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f / mutableLongList._size) & 4294967295L), true));
        }
    }

    /* renamed from: sendDragStart-3f7A7Is, reason: not valid java name */
    public final void m78sendDragStart3f7A7Is(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerInputChange indirectPointerInputChange2, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        if (this.velocityTracker == null) {
            this.velocityTracker = new HintHandler(3);
        }
        this.nodeOffset = 0L;
        HintHandler requireVelocityTracker = requireVelocityTracker();
        ScrollableNode scrollableNode = this.node;
        ScrollableKt.m90addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker, indirectPointerInputChange, scrollableNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
        long m385minusMKHz9U = Offset.m385minusMKHz9U(ScrollableKt.m92primaryAxisPosition_bfSUIo(indirectPointerInputChange2, scrollableNode.orientationLock, indirectPointerEventPrimaryDirectionalMotionAxis), j);
        if (((Boolean) scrollableNode.canDrag.invoke(new PointerType(1))).booleanValue()) {
            this.previousPositionOnScreen = HitTestResultKt.requireLayoutCoordinates(scrollableNode).mo521localToScreenMKHz9U(0L);
            scrollableNode.onDragEvent(new DragEvent.DragStarted(m385minusMKHz9U));
        }
        PriorityQueue priorityQueue = this.offsetSmoother;
        priorityQueue.size = 0;
        ((MutableLongList) priorityQueue.array)._size = 0;
    }
}
