package androidx.compose.foundation.gestures;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableLongList;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.GestureNode;
import androidx.compose.foundation.gestures.DragDetectionState$AwaitDown;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.core.os.BundleKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.memory.RealStrongMemoryCache;
import com.google.android.exoplayer2.util.Log;
import com.grack.nanojson.JsonParser;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ProduceKt;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http1.HeadersReader;
import okio.Okio;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DragGestureNode extends DelegatingNode implements PointerInputModifierNode, IndirectPointerInputModifierNode, CompositionLocalConsumerModifierNode, GestureConnection {
    public DragDetectionState$AwaitDown _awaitDownState;
    public DragDetectionState$AwaitGesturePickup _awaitGesturePickupState;
    public DragDetectionState$AwaitTouchSlop _awaitTouchSlopState;
    public DragDetectionState$Dragging _draggingState;
    public Function1 canDrag;
    public BufferedChannel channel;
    public ScrollableKt currentDragState;
    public DragInteraction$Start dragInteraction;
    public boolean enabled;
    public GestureNode gestureNode;
    public IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector;
    public MutableInteractionSource interactionSource;
    public boolean isListeningForEvents;
    public boolean isListeningForPointerInputEvents;
    public long nodeOffset;
    public Orientation orientationLock;
    public long previousPositionOnScreen;
    public HeadersReader touchSlopDetector;
    public PopupMenu$1 velocityTracker;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DragDetectionState$AwaitDown.AwaitTouchSlop.values().length];
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$processDragCancel(androidx.compose.foundation.gestures.DragGestureNode r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5.getClass()
            boolean r0 = r6 instanceof androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1
            if (r0 == 0) goto L16
            r0 = r6
            androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1 r0 = (androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1 r0 = new androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1
            r0.<init>(r5, r6)
        L1b:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2f
            if (r1 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4c
        L29:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L2f:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.compose.foundation.interaction.DragInteraction$Start r6 = r5.dragInteraction
            if (r6 == 0) goto L4e
            androidx.compose.foundation.interaction.MutableInteractionSource r1 = r5.interactionSource
            if (r1 == 0) goto L4c
            androidx.compose.foundation.interaction.DragInteraction$Cancel r4 = new androidx.compose.foundation.interaction.DragInteraction$Cancel
            r4.<init>(r6)
            r0.label = r3
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r1 = (androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r1
            java.lang.Object r6 = r1.emit(r4, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r0) goto L4c
            return r0
        L4c:
            r5.dragInteraction = r2
        L4e:
            androidx.compose.foundation.gestures.DragEvent$DragStopped r6 = new androidx.compose.foundation.gestures.DragEvent$DragStopped
            r0 = 0
            r2 = 0
            r6.<init>(r0, r2)
            r5.onDragStopped(r6)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureNode.access$processDragCancel(androidx.compose.foundation.gestures.DragGestureNode, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        if (((androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r1).emit(r5, r0) == r4) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$processDragStart(androidx.compose.foundation.gestures.DragGestureNode r6, androidx.compose.foundation.gestures.DragEvent.DragStarted r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6.getClass()
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1
            if (r0 == 0) goto L16
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1 r0 = (androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1 r0 = new androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1
            r0.<init>(r6, r8)
        L1b:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 2
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L44
            if (r1 == r3) goto L3c
            if (r1 != r2) goto L35
            java.lang.Object r7 = r0.L$1
            androidx.compose.foundation.interaction.DragInteraction$Start r7 = (androidx.compose.foundation.interaction.DragInteraction$Start) r7
            java.lang.Object r0 = r0.L$0
            androidx.compose.foundation.gestures.DragEvent$DragStarted r0 = (androidx.compose.foundation.gestures.DragEvent.DragStarted) r0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7b
        L35:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            r6 = 0
            return r6
        L3c:
            java.lang.Object r7 = r0.L$0
            androidx.compose.foundation.gestures.DragEvent$DragStarted r7 = (androidx.compose.foundation.gestures.DragEvent.DragStarted) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L61
        L44:
            kotlin.ResultKt.throwOnFailure(r8)
            androidx.compose.foundation.interaction.DragInteraction$Start r8 = r6.dragInteraction
            if (r8 == 0) goto L61
            androidx.compose.foundation.interaction.MutableInteractionSource r1 = r6.interactionSource
            if (r1 == 0) goto L61
            androidx.compose.foundation.interaction.DragInteraction$Cancel r5 = new androidx.compose.foundation.interaction.DragInteraction$Cancel
            r5.<init>(r8)
            r0.L$0 = r7
            r0.label = r3
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r1 = (androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r1
            java.lang.Object r8 = r1.emit(r5, r0)
            if (r8 != r4) goto L61
            goto L78
        L61:
            androidx.compose.foundation.interaction.DragInteraction$Start r8 = new androidx.compose.foundation.interaction.DragInteraction$Start
            r8.<init>()
            androidx.compose.foundation.interaction.MutableInteractionSource r1 = r6.interactionSource
            if (r1 == 0) goto L7d
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r2
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r1 = (androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r1
            java.lang.Object r0 = r1.emit(r8, r0)
            if (r0 != r4) goto L79
        L78:
            return r4
        L79:
            r0 = r7
            r7 = r8
        L7b:
            r8 = r7
            r7 = r0
        L7d:
            r6.dragInteraction = r8
            long r6 = r7.startPoint
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureNode.access$processDragStart(androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.foundation.gestures.DragEvent$DragStarted, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$processDragStop(androidx.compose.foundation.gestures.DragGestureNode r5, androidx.compose.foundation.gestures.DragEvent.DragStopped r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5.getClass()
            boolean r0 = r7 instanceof androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1
            if (r0 == 0) goto L16
            r0 = r7
            androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1 r0 = (androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1 r0 = new androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1
            r0.<init>(r5, r7)
        L1b:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L33
            if (r1 != r3) goto L2d
            java.lang.Object r6 = r0.L$0
            androidx.compose.foundation.gestures.DragEvent$DragStopped r6 = (androidx.compose.foundation.gestures.DragEvent.DragStopped) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L52
        L2d:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.compose.foundation.interaction.DragInteraction$Start r7 = r5.dragInteraction
            if (r7 == 0) goto L54
            androidx.compose.foundation.interaction.MutableInteractionSource r1 = r5.interactionSource
            if (r1 == 0) goto L52
            androidx.compose.foundation.interaction.DragInteraction$Stop r4 = new androidx.compose.foundation.interaction.DragInteraction$Stop
            r4.<init>(r7)
            r0.L$0 = r6
            r0.label = r3
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r1 = (androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r1
            java.lang.Object r7 = r1.emit(r4, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r0) goto L52
            return r0
        L52:
            r5.dragInteraction = r2
        L54:
            r5.onDragStopped(r6)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureNode.access$processDragStop(androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.foundation.gestures.DragEvent$DragStopped, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: moveToAwaitTouchSlopState-aWI9W7U$default, reason: not valid java name */
    public static void m42moveToAwaitTouchSlopStateaWI9W7U$default(DragGestureNode dragGestureNode, PointerInputChange pointerInputChange, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = 0;
        }
        DragDetectionState$AwaitTouchSlop dragDetectionState$AwaitTouchSlop = dragGestureNode._awaitTouchSlopState;
        if (dragDetectionState$AwaitTouchSlop == null) {
            dragDetectionState$AwaitTouchSlop = new DragDetectionState$AwaitTouchSlop();
            dragDetectionState$AwaitTouchSlop.initialDown = null;
            dragDetectionState$AwaitTouchSlop.pointerId = Long.MAX_VALUE;
            dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
            dragGestureNode._awaitTouchSlopState = dragDetectionState$AwaitTouchSlop;
        }
        dragDetectionState$AwaitTouchSlop.initialDown = pointerInputChange;
        dragDetectionState$AwaitTouchSlop.pointerId = j;
        HeadersReader headersReader = dragGestureNode.touchSlopDetector;
        Orientation orientation = dragGestureNode.orientationLock;
        if (headersReader == null) {
            dragGestureNode.touchSlopDetector = new HeadersReader(orientation, 0);
        } else {
            headersReader.source = orientation;
            headersReader.headerLimit = j2;
        }
        dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
        dragGestureNode.currentDragState = dragDetectionState$AwaitTouchSlop;
    }

    public final void disposeInteractionSource$1() {
        DragInteraction$Start dragInteraction$Start = this.dragInteraction;
        if (dragInteraction$Start != null) {
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            if (mutableInteractionSource != null) {
                ((MutableInteractionSourceImpl) mutableInteractionSource).tryEmit(new DragInteraction$Cancel(dragInteraction$Start));
            }
            this.dragInteraction = null;
        }
    }

    public abstract Object drag(DragGestureNode$startListeningForEvents$1.AnonymousClass1 anonymousClass1, DragGestureNode$startListeningForEvents$1 dragGestureNode$startListeningForEvents$1);

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    public final long mo12getTouchBoundsExpansionRZrCHBk() {
        return HitTestResultKt.None;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean interceptOutOfBoundsChildEvents() {
        return false;
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final boolean isInterested(PointerInputChange pointerInputChange) {
        if (AppKt.changedToDownIgnoreConsumed(pointerInputChange)) {
            return this.enabled;
        }
        if (!AppKt.changedToUpIgnoreConsumed(pointerInputChange)) {
            if (this.touchSlopDetector == null) {
                this.touchSlopDetector = new HeadersReader(this.orientationLock, 0);
            }
            float touchSlop = ((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).getTouchSlop();
            long positionChangeInternal = AppKt.positionChangeInternal(pointerInputChange, false);
            HeadersReader headersReader = this.touchSlopDetector;
            if (headersReader == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Touch slop detector not initialized.");
                return false;
            }
            if (!Offset.m196equalsimpl0(headersReader.m711getPostSlopOffsetqto3Fdw(positionChangeInternal, touchSlop, false), 9205357640488583168L)) {
                long m200plusMKHz9U = Offset.m200plusMKHz9U(headersReader.headerLimit, positionChangeInternal);
                double atan2 = (((float) Math.atan2(Math.abs(Float.intBitsToFloat((int) (m200plusMKHz9U & 4294967295L))), Math.abs(Float.intBitsToFloat((int) (m200plusMKHz9U >> 32))))) * 180.0f) / 3.141592653589793d;
                Orientation orientation = (Orientation) headersReader.source;
                int i = orientation == null ? -1 : TouchSlopDetector$WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
                if (i == 1 ? atan2 < 30.0d : !(i != 2 || atan2 <= 30.0d)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void moveToAwaitDownState() {
        DragDetectionState$AwaitDown dragDetectionState$AwaitDown = this._awaitDownState;
        DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop = DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
        if (dragDetectionState$AwaitDown == null) {
            dragDetectionState$AwaitDown = new DragDetectionState$AwaitDown();
            dragDetectionState$AwaitDown.awaitTouchSlop = awaitTouchSlop;
            dragDetectionState$AwaitDown.consumedOnInitial = false;
            this._awaitDownState = dragDetectionState$AwaitDown;
        }
        dragDetectionState$AwaitDown.awaitTouchSlop = awaitTouchSlop;
        dragDetectionState$AwaitDown.consumedOnInitial = false;
        this.currentDragState = dragDetectionState$AwaitDown;
    }

    /* renamed from: moveToAwaitGesturePickupState-rnUCldI, reason: not valid java name */
    public final void m43moveToAwaitGesturePickupStaternUCldI(PointerInputChange pointerInputChange, long j, HeadersReader headersReader) {
        DragDetectionState$AwaitGesturePickup dragDetectionState$AwaitGesturePickup = this._awaitGesturePickupState;
        if (dragDetectionState$AwaitGesturePickup == null) {
            dragDetectionState$AwaitGesturePickup = new DragDetectionState$AwaitGesturePickup();
            dragDetectionState$AwaitGesturePickup.initialDown = null;
            dragDetectionState$AwaitGesturePickup.pointerId = Long.MAX_VALUE;
            this._awaitGesturePickupState = dragDetectionState$AwaitGesturePickup;
        }
        dragDetectionState$AwaitGesturePickup.initialDown = pointerInputChange;
        dragDetectionState$AwaitGesturePickup.pointerId = j;
        headersReader.headerLimit = 0L;
        this.currentDragState = dragDetectionState$AwaitGesturePickup;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void onCancelIndirectPointerInput() {
        IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
        if (indirectPointerInputDragCycleDetector != null) {
            indirectPointerInputDragCycleDetector.moveToAwaitDownState();
            DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.node;
            if (dragGestureNode.isListeningForEvents) {
                dragGestureNode.onDragEvent(DragEvent.DragCancelled.INSTANCE);
            }
            indirectPointerInputDragCycleDetector.velocityTracker = null;
            PriorityQueue priorityQueue = indirectPointerInputDragCycleDetector.offsetSmoother;
            priorityQueue.size = 0;
            ((MutableLongList) priorityQueue.array)._size = 0;
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        if (this.isListeningForPointerInputEvents) {
            moveToAwaitDownState();
            if (this.isListeningForEvents) {
                requireChannel().mo691trySendJP2dKIU(DragEvent.DragCancelled.INSTANCE);
            }
            this.velocityTracker = null;
        }
        this.isListeningForPointerInputEvents = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.isListeningForEvents = false;
        disposeInteractionSource$1();
        this.nodeOffset = 0L;
        GestureNode gestureNode = this.gestureNode;
        if (gestureNode != null) {
            undelegate(gestureNode);
        }
        this.gestureNode = null;
    }

    public final void onDragEvent(DragEvent dragEvent) {
        if ((dragEvent instanceof DragEvent.DragStarted) && !this.isListeningForEvents) {
            this.isListeningForEvents = true;
            startListeningForEvents();
        }
        requireChannel().mo691trySendJP2dKIU(dragEvent);
    }

    /* renamed from: onDragStarted-k-4lQ0M, reason: not valid java name */
    public abstract void mo44onDragStartedk4lQ0M(long j);

    public abstract void onDragStopped(DragEvent.DragStopped dragStopped);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r24v0, types: [androidx.compose.foundation.GestureConnection, androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.DelegatingNode] */
    /* JADX WARN: Type inference failed for: r6v28, types: [java.lang.Object] */
    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void onIndirectPointerEvent(JsonParser jsonParser, PointerEventPass pointerEventPass) {
        Object obj;
        Object obj2;
        Object obj3;
        PointerEventPass pointerEventPass2;
        IndirectPointerInputChange indirectPointerInputChange;
        IndirectPointerInputChange indirectPointerInputChange2;
        int i = jsonParser.token;
        ArrayList arrayList = (ArrayList) jsonParser.value;
        if (this.gestureNode == null) {
            GestureNode gestureNode = new GestureNode(this);
            delegate(gestureNode);
            this.gestureNode = gestureNode;
        }
        if (this.enabled) {
            if (this.indirectPointerInputDragCycleDetector == null) {
                this.indirectPointerInputDragCycleDetector = new IndirectPointerInputDragCycleDetector(this);
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
            if (indirectPointerInputDragCycleDetector != null) {
                DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.node;
                if (indirectPointerInputDragCycleDetector.currentDragState == null) {
                    IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown = indirectPointerInputDragCycleDetector._awaitDownState;
                    if (indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown == null) {
                        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown = new IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown();
                        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.awaitTouchSlop = IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
                        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.consumedOnInitial = false;
                        indirectPointerInputDragCycleDetector._awaitDownState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
                    }
                    indirectPointerInputDragCycleDetector.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
                }
                ScrollableKt scrollableKt = indirectPointerInputDragCycleDetector.currentDragState;
                if (scrollableKt == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("currentDragState should not be null");
                    return;
                }
                boolean z = scrollableKt instanceof IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
                PointerEventPass pointerEventPass3 = PointerEventPass.Initial;
                boolean z2 = true;
                PointerEventPass pointerEventPass4 = PointerEventPass.Main;
                if (z) {
                    IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2 = (IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown) scrollableKt;
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (!ScrollableKt.changedToDownIgnoreConsumed((IndirectPointerInputChange) arrayList.get(i2))) {
                            return;
                        }
                    }
                    IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) CollectionsKt.first((List) arrayList);
                    int i3 = IndirectPointerInputDragCycleDetector.WhenMappings.$EnumSwitchMapping$0[indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2.awaitTouchSlop.ordinal()];
                    IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop = IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.No;
                    IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop2 = IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.Yes;
                    IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop3 = i3 == 1 ? !dragGestureNode.startDragImmediately() ? awaitTouchSlop2 : awaitTouchSlop : indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2.awaitTouchSlop;
                    indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2.awaitTouchSlop = awaitTouchSlop3;
                    if (pointerEventPass == pointerEventPass3 && awaitTouchSlop3 == awaitTouchSlop) {
                        indirectPointerInputChange3.isConsumed = true;
                        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2.consumedOnInitial = true;
                    }
                    if (pointerEventPass == pointerEventPass4) {
                        if (awaitTouchSlop3 == awaitTouchSlop2) {
                            IndirectPointerInputDragCycleDetector.m48moveToAwaitTouchSlopStateaWI9W7U$default(indirectPointerInputDragCycleDetector, indirectPointerInputChange3, indirectPointerInputChange3.id, 0L, 12);
                            return;
                        }
                        if (indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2.consumedOnInitial) {
                            indirectPointerInputDragCycleDetector.m51sendDragStart3f7A7Is(indirectPointerInputChange3, indirectPointerInputChange3, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), 0L);
                            indirectPointerInputDragCycleDetector.m50sendDragEventEu1f8Dk(indirectPointerInputChange3, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), 0L);
                            long j = indirectPointerInputChange3.id;
                            IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging indirectPointerInputDragCycleDetector$DragDetectionState$Dragging = indirectPointerInputDragCycleDetector._draggingState;
                            if (indirectPointerInputDragCycleDetector$DragDetectionState$Dragging == null) {
                                indirectPointerInputDragCycleDetector$DragDetectionState$Dragging = new IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging();
                                indirectPointerInputDragCycleDetector$DragDetectionState$Dragging.pointerId = Long.MAX_VALUE;
                                indirectPointerInputDragCycleDetector._draggingState = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
                            }
                            indirectPointerInputDragCycleDetector$DragDetectionState$Dragging.pointerId = j;
                            indirectPointerInputDragCycleDetector.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
                            return;
                        }
                        return;
                    }
                    return;
                }
                boolean z3 = scrollableKt instanceof IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
                PointerEventPass pointerEventPass5 = PointerEventPass.Final;
                if (!z3) {
                    if (scrollableKt instanceof IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup) {
                        IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup = (IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup) scrollableKt;
                        if (pointerEventPass != pointerEventPass5) {
                            return;
                        }
                        int size2 = arrayList.size();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= size2) {
                                break;
                            }
                            if (((IndirectPointerInputChange) arrayList.get(i4)).isConsumed) {
                                z2 = false;
                                break;
                            }
                            i4++;
                        }
                        int size3 = arrayList.size();
                        int i5 = 0;
                        while (true) {
                            if (i5 >= size3) {
                                break;
                            }
                            if (!((IndirectPointerInputChange) arrayList.get(i5)).pressed) {
                                i5++;
                            } else if (!arrayList.isEmpty()) {
                                if (z2) {
                                    long m56primaryAxisPosition_bfSUIo = ScrollableKt.m56primaryAxisPosition_bfSUIo((IndirectPointerInputChange) CollectionsKt.first((List) arrayList), dragGestureNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i));
                                    IndirectPointerInputChange indirectPointerInputChange4 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.initialDown;
                                    indirectPointerInputChange4.getClass();
                                    long m199minusMKHz9U = Offset.m199minusMKHz9U(m56primaryAxisPosition_bfSUIo, ScrollableKt.m56primaryAxisPosition_bfSUIo(indirectPointerInputChange4, dragGestureNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i)));
                                    IndirectPointerInputChange indirectPointerInputChange5 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.initialDown;
                                    if (indirectPointerInputChange5 != null) {
                                        IndirectPointerInputDragCycleDetector.m48moveToAwaitTouchSlopStateaWI9W7U$default(indirectPointerInputDragCycleDetector, indirectPointerInputChange5, indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.pointerId, m199minusMKHz9U, 8);
                                        return;
                                    } else {
                                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitGesturePickup.initialDown was not initialized.");
                                        return;
                                    }
                                }
                                return;
                            }
                        }
                        indirectPointerInputDragCycleDetector.moveToAwaitDownState();
                        return;
                    }
                    if (!(scrollableKt instanceof IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging)) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return;
                    }
                    IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging indirectPointerInputDragCycleDetector$DragDetectionState$Dragging2 = (IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging) scrollableKt;
                    if (pointerEventPass != pointerEventPass4) {
                        return;
                    }
                    long j2 = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging2.pointerId;
                    int size4 = arrayList.size();
                    int i6 = 0;
                    while (true) {
                        if (i6 >= size4) {
                            obj = null;
                            break;
                        }
                        obj = arrayList.get(i6);
                        if (UStringsKt.m675equalsimpl0(((IndirectPointerInputChange) obj).id, j2)) {
                            break;
                        } else {
                            i6++;
                        }
                    }
                    IndirectPointerInputChange indirectPointerInputChange6 = (IndirectPointerInputChange) obj;
                    if (indirectPointerInputChange6 == null) {
                        return;
                    }
                    boolean access$changedToUpIgnoreConsumed = ScrollableKt.access$changedToUpIgnoreConsumed(indirectPointerInputChange6);
                    DragEvent.DragCancelled dragCancelled = DragEvent.DragCancelled.INSTANCE;
                    if (!access$changedToUpIgnoreConsumed) {
                        if (indirectPointerInputChange6.isConsumed) {
                            dragGestureNode.onDragEvent(dragCancelled);
                            return;
                        } else {
                            if (Offset.m197getDistanceimpl(ScrollableKt.m55positionChangeInternalwfG_k4k(indirectPointerInputChange6, dragGestureNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), true)) == 0.0f) {
                                return;
                            }
                            indirectPointerInputDragCycleDetector.m50sendDragEventEu1f8Dk(indirectPointerInputChange6, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), ScrollableKt.m55positionChangeInternalwfG_k4k(indirectPointerInputChange6, dragGestureNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), false));
                            indirectPointerInputChange6.isConsumed = true;
                            return;
                        }
                    }
                    int size5 = arrayList.size();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= size5) {
                            obj2 = null;
                            break;
                        }
                        obj2 = arrayList.get(i7);
                        if (((IndirectPointerInputChange) obj2).pressed) {
                            break;
                        } else {
                            i7++;
                        }
                    }
                    IndirectPointerInputChange indirectPointerInputChange7 = (IndirectPointerInputChange) obj2;
                    if (indirectPointerInputChange7 != null) {
                        indirectPointerInputDragCycleDetector$DragDetectionState$Dragging2.pointerId = indirectPointerInputChange7.id;
                        return;
                    }
                    if (indirectPointerInputChange6.isConsumed || !ScrollableKt.access$changedToUpIgnoreConsumed(indirectPointerInputChange6)) {
                        dragGestureNode.onDragEvent(dragCancelled);
                    } else {
                        ScrollableKt.m53access$addIndirectPointerInputChangeQf4Zb88(indirectPointerInputDragCycleDetector.requireVelocityTracker(), indirectPointerInputChange6, dragGestureNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), indirectPointerInputDragCycleDetector.touchSmooth, indirectPointerInputDragCycleDetector.nodeOffset);
                        float maximumFlingVelocity = ((ViewConfiguration) HitTestResultKt.currentValueOf(dragGestureNode, CompositionLocalsKt.LocalViewConfiguration)).getMaximumFlingVelocity();
                        long m1calculateVelocityAH228Gc = indirectPointerInputDragCycleDetector.requireVelocityTracker().m1calculateVelocityAH228Gc(BundleKt.Velocity(maximumFlingVelocity, maximumFlingVelocity));
                        RealStrongMemoryCache realStrongMemoryCache = (RealStrongMemoryCache) indirectPointerInputDragCycleDetector.requireVelocityTracker().this$0;
                        VelocityTracker1D velocityTracker1D = (VelocityTracker1D) realStrongMemoryCache.weakMemoryCache;
                        ArraysKt.fill(0, r6.length, null, velocityTracker1D.samples);
                        velocityTracker1D.index = 0;
                        VelocityTracker1D velocityTracker1D2 = (VelocityTracker1D) realStrongMemoryCache.cache;
                        ArraysKt.fill(0, r9.length, null, velocityTracker1D2.samples);
                        velocityTracker1D2.index = 0;
                        realStrongMemoryCache.initialMaxSize = 0L;
                        dragGestureNode.onDragEvent(new DragEvent.DragStopped(DraggableKt.m47toValidVelocityTH1AsA0(m1calculateVelocityAH228Gc), true));
                    }
                    indirectPointerInputDragCycleDetector.moveToAwaitDownState();
                    return;
                }
                IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop = (IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop) scrollableKt;
                if (pointerEventPass == pointerEventPass3) {
                    return;
                }
                int size6 = arrayList.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size6) {
                        obj3 = null;
                        break;
                    }
                    obj3 = arrayList.get(i8);
                    if (UStringsKt.m675equalsimpl0(((IndirectPointerInputChange) obj3).id, indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId)) {
                        break;
                    } else {
                        i8++;
                    }
                }
                IndirectPointerInputChange indirectPointerInputChange8 = (IndirectPointerInputChange) obj3;
                if (indirectPointerInputChange8 == null) {
                    int size7 = arrayList.size();
                    int i9 = 0;
                    while (true) {
                        if (i9 >= size7) {
                            indirectPointerInputChange2 = 0;
                            break;
                        }
                        indirectPointerInputChange2 = arrayList.get(i9);
                        if (((IndirectPointerInputChange) indirectPointerInputChange2).pressed) {
                            break;
                        } else {
                            i9++;
                        }
                    }
                    indirectPointerInputChange8 = indirectPointerInputChange2;
                    if (indirectPointerInputChange8 == null) {
                        indirectPointerInputDragCycleDetector.moveToAwaitDownState();
                        return;
                    }
                    indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId = indirectPointerInputChange8.id;
                }
                IndirectPointerInputChange indirectPointerInputChange9 = indirectPointerInputChange8;
                if (pointerEventPass == pointerEventPass4) {
                    if (indirectPointerInputChange9.isConsumed) {
                        pointerEventPass2 = pointerEventPass5;
                        IndirectPointerInputChange indirectPointerInputChange10 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.initialDown;
                        if (indirectPointerInputChange10 == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitTouchSlop.initialDown was not initialized");
                            return;
                        }
                        long j3 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId;
                        HeadersReader headersReader = indirectPointerInputDragCycleDetector.touchSlopDetector;
                        if (headersReader == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitTouchSlop.touchSlopDetector was not initialized");
                            return;
                        }
                        indirectPointerInputDragCycleDetector.m49moveToAwaitGesturePickupStaternUCldI(indirectPointerInputChange10, j3, headersReader);
                    } else if (ScrollableKt.access$changedToUpIgnoreConsumed(indirectPointerInputChange9)) {
                        int size8 = arrayList.size();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= size8) {
                                indirectPointerInputChange = null;
                                break;
                            }
                            ?? r6 = arrayList.get(i10);
                            if (((IndirectPointerInputChange) r6).pressed) {
                                indirectPointerInputChange = r6;
                                break;
                            }
                            i10++;
                        }
                        IndirectPointerInputChange indirectPointerInputChange11 = indirectPointerInputChange;
                        if (indirectPointerInputChange11 == null) {
                            indirectPointerInputDragCycleDetector.moveToAwaitDownState();
                        } else {
                            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId = indirectPointerInputChange11.id;
                        }
                    } else {
                        ViewConfiguration viewConfiguration = (ViewConfiguration) HitTestResultKt.currentValueOf(dragGestureNode, CompositionLocalsKt.LocalViewConfiguration);
                        float f = DragGestureDetectorKt.mouseToTouchSlopRatio;
                        float touchSlop = viewConfiguration.getTouchSlop();
                        HeadersReader headersReader2 = indirectPointerInputDragCycleDetector.touchSlopDetector;
                        if (headersReader2 == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Touch slop detector not initialized.");
                            return;
                        }
                        long m711getPostSlopOffsetqto3Fdw = headersReader2.m711getPostSlopOffsetqto3Fdw(ScrollableKt.m55positionChangeInternalwfG_k4k(indirectPointerInputChange9, dragGestureNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), true), touchSlop, true);
                        if ((9223372034707292159L & m711getPostSlopOffsetqto3Fdw) != 9205357640488583168L) {
                            indirectPointerInputChange9.isConsumed = true;
                            IndirectPointerInputChange indirectPointerInputChange12 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.initialDown;
                            indirectPointerInputChange12.getClass();
                            pointerEventPass2 = pointerEventPass5;
                            indirectPointerInputDragCycleDetector.m51sendDragStart3f7A7Is(indirectPointerInputChange12, indirectPointerInputChange9, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), m711getPostSlopOffsetqto3Fdw);
                            indirectPointerInputDragCycleDetector.m50sendDragEventEu1f8Dk(indirectPointerInputChange9, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), m711getPostSlopOffsetqto3Fdw);
                            long j4 = indirectPointerInputChange9.id;
                            IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3 = indirectPointerInputDragCycleDetector._draggingState;
                            if (indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3 == null) {
                                indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3 = new IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging();
                                indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3.pointerId = Long.MAX_VALUE;
                                indirectPointerInputDragCycleDetector._draggingState = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3;
                            }
                            indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3.pointerId = j4;
                            indirectPointerInputDragCycleDetector.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3;
                        } else {
                            pointerEventPass2 = pointerEventPass5;
                            indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = true;
                        }
                    }
                    if (pointerEventPass == pointerEventPass2 || !indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass) {
                    }
                    if (!indirectPointerInputChange9.isConsumed) {
                        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
                        return;
                    }
                    IndirectPointerInputChange indirectPointerInputChange13 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.initialDown;
                    if (indirectPointerInputChange13 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitTouchSlop.initialDown was not initialized");
                        return;
                    }
                    long j5 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId;
                    HeadersReader headersReader3 = indirectPointerInputDragCycleDetector.touchSlopDetector;
                    if (headersReader3 != null) {
                        indirectPointerInputDragCycleDetector.m49moveToAwaitGesturePickupStaternUCldI(indirectPointerInputChange13, j5, headersReader3);
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitTouchSlop.touchSlopDetector was not initialized");
                        return;
                    }
                }
                pointerEventPass2 = pointerEventPass5;
                if (pointerEventPass == pointerEventPass2) {
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [androidx.compose.foundation.GestureConnection, androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.CompositionLocalConsumerModifierNode, androidx.compose.ui.node.DelegatingNode] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26, types: [java.lang.Object] */
    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public void mo17onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        Object obj;
        Object obj2;
        Object obj3;
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        boolean z = true;
        this.isListeningForPointerInputEvents = true;
        if (this.gestureNode == null) {
            GestureNode gestureNode = new GestureNode(this);
            delegate(gestureNode);
            this.gestureNode = gestureNode;
        }
        if (this.enabled) {
            if (this.currentDragState == null) {
                DragDetectionState$AwaitDown dragDetectionState$AwaitDown = this._awaitDownState;
                if (dragDetectionState$AwaitDown == null) {
                    dragDetectionState$AwaitDown = new DragDetectionState$AwaitDown();
                    dragDetectionState$AwaitDown.awaitTouchSlop = DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
                    dragDetectionState$AwaitDown.consumedOnInitial = false;
                    this._awaitDownState = dragDetectionState$AwaitDown;
                }
                this.currentDragState = dragDetectionState$AwaitDown;
            }
            ScrollableKt scrollableKt = this.currentDragState;
            if (scrollableKt == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("currentDragState should not be null");
                return;
            }
            boolean z2 = scrollableKt instanceof DragDetectionState$AwaitDown;
            PointerEventPass pointerEventPass2 = PointerEventPass.Initial;
            PointerEventPass pointerEventPass3 = PointerEventPass.Main;
            if (z2) {
                DragDetectionState$AwaitDown dragDetectionState$AwaitDown2 = (DragDetectionState$AwaitDown) scrollableKt;
                if (!pointerEvent.changes.isEmpty() && TapGestureDetectorKt.isChangedToDown$default(pointerEvent, false)) {
                    PointerInputChange pointerInputChange3 = (PointerInputChange) CollectionsKt.first(pointerEvent.changes);
                    int i = WhenMappings.$EnumSwitchMapping$0[dragDetectionState$AwaitDown2.awaitTouchSlop.ordinal()];
                    DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop = DragDetectionState$AwaitDown.AwaitTouchSlop.No;
                    DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop2 = DragDetectionState$AwaitDown.AwaitTouchSlop.Yes;
                    DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop3 = i == 1 ? !startDragImmediately() ? awaitTouchSlop2 : awaitTouchSlop : dragDetectionState$AwaitDown2.awaitTouchSlop;
                    dragDetectionState$AwaitDown2.awaitTouchSlop = awaitTouchSlop3;
                    if (pointerEventPass == pointerEventPass2 && awaitTouchSlop3 == awaitTouchSlop) {
                        pointerInputChange3.consume();
                        dragDetectionState$AwaitDown2.consumedOnInitial = true;
                    }
                    if (pointerEventPass == pointerEventPass3) {
                        if (awaitTouchSlop3 == awaitTouchSlop2) {
                            m42moveToAwaitTouchSlopStateaWI9W7U$default(this, pointerInputChange3, pointerInputChange3.id, 0L, 12);
                            return;
                        }
                        if (dragDetectionState$AwaitDown2.consumedOnInitial) {
                            m46sendDragStart0AR0LA0(pointerInputChange3, pointerInputChange3, 0L);
                            m45sendDragEventUv8p0NA(0L, pointerInputChange3);
                            long j2 = pointerInputChange3.id;
                            DragDetectionState$Dragging dragDetectionState$Dragging = this._draggingState;
                            if (dragDetectionState$Dragging == null) {
                                dragDetectionState$Dragging = new DragDetectionState$Dragging();
                                dragDetectionState$Dragging.pointerId = Long.MAX_VALUE;
                                this._draggingState = dragDetectionState$Dragging;
                            }
                            dragDetectionState$Dragging.pointerId = j2;
                            this.currentDragState = dragDetectionState$Dragging;
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            boolean z3 = scrollableKt instanceof DragDetectionState$AwaitTouchSlop;
            PointerEventPass pointerEventPass4 = PointerEventPass.Final;
            if (!z3) {
                if (scrollableKt instanceof DragDetectionState$AwaitGesturePickup) {
                    DragDetectionState$AwaitGesturePickup dragDetectionState$AwaitGesturePickup = (DragDetectionState$AwaitGesturePickup) scrollableKt;
                    if (pointerEventPass != pointerEventPass4) {
                        return;
                    }
                    List list = pointerEvent.changes;
                    int size = list.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        if (((PointerInputChange) list.get(i2)).isConsumed()) {
                            z = false;
                            break;
                        }
                        i2++;
                    }
                    int size2 = list.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= size2) {
                            break;
                        }
                        if (!((PointerInputChange) list.get(i3)).pressed) {
                            i3++;
                        } else if (!list.isEmpty()) {
                            if (z) {
                                long j3 = ((PointerInputChange) CollectionsKt.first(list)).position;
                                PointerInputChange pointerInputChange4 = dragDetectionState$AwaitGesturePickup.initialDown;
                                pointerInputChange4.getClass();
                                long m199minusMKHz9U = Offset.m199minusMKHz9U(j3, pointerInputChange4.position);
                                PointerInputChange pointerInputChange5 = dragDetectionState$AwaitGesturePickup.initialDown;
                                if (pointerInputChange5 != null) {
                                    m42moveToAwaitTouchSlopStateaWI9W7U$default(this, pointerInputChange5, dragDetectionState$AwaitGesturePickup.pointerId, m199minusMKHz9U, 8);
                                    return;
                                } else {
                                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitGesturePickup.initialDown was not initialized.");
                                    return;
                                }
                            }
                            return;
                        }
                    }
                    moveToAwaitDownState();
                    return;
                }
                if (!(scrollableKt instanceof DragDetectionState$Dragging)) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                DragDetectionState$Dragging dragDetectionState$Dragging2 = (DragDetectionState$Dragging) scrollableKt;
                if (pointerEventPass != pointerEventPass3) {
                    return;
                }
                long j4 = dragDetectionState$Dragging2.pointerId;
                List list2 = pointerEvent.changes;
                int size3 = list2.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size3) {
                        obj = null;
                        break;
                    }
                    obj = list2.get(i4);
                    if (UStringsKt.m675equalsimpl0(((PointerInputChange) obj).id, j4)) {
                        break;
                    } else {
                        i4++;
                    }
                }
                PointerInputChange pointerInputChange6 = (PointerInputChange) obj;
                if (pointerInputChange6 == null) {
                    return;
                }
                boolean changedToUpIgnoreConsumed = AppKt.changedToUpIgnoreConsumed(pointerInputChange6);
                DragEvent.DragCancelled dragCancelled = DragEvent.DragCancelled.INSTANCE;
                if (!changedToUpIgnoreConsumed) {
                    if (pointerInputChange6.isConsumed()) {
                        requireChannel().mo691trySendJP2dKIU(dragCancelled);
                        return;
                    } else {
                        if (Offset.m197getDistanceimpl(AppKt.positionChangeInternal(pointerInputChange6, true)) == 0.0f) {
                            return;
                        }
                        m45sendDragEventUv8p0NA(AppKt.positionChangeInternal(pointerInputChange6, false), pointerInputChange6);
                        pointerInputChange6.consume();
                        return;
                    }
                }
                List list3 = pointerEvent.changes;
                int size4 = list3.size();
                int i5 = 0;
                while (true) {
                    if (i5 >= size4) {
                        obj2 = null;
                        break;
                    }
                    obj2 = list3.get(i5);
                    if (((PointerInputChange) obj2).pressed) {
                        break;
                    } else {
                        i5++;
                    }
                }
                PointerInputChange pointerInputChange7 = (PointerInputChange) obj2;
                if (pointerInputChange7 != null) {
                    dragDetectionState$Dragging2.pointerId = pointerInputChange7.id;
                    return;
                }
                if (pointerInputChange6.isConsumed() || !AppKt.changedToUpIgnoreConsumed(pointerInputChange6)) {
                    requireChannel().mo691trySendJP2dKIU(dragCancelled);
                } else {
                    Okio.m719addPointerInputChange0AR0LA0(requireVelocityTracker(), pointerInputChange6, 0L);
                    float maximumFlingVelocity = ((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).getMaximumFlingVelocity();
                    long m1calculateVelocityAH228Gc = requireVelocityTracker().m1calculateVelocityAH228Gc(BundleKt.Velocity(maximumFlingVelocity, maximumFlingVelocity));
                    RealStrongMemoryCache realStrongMemoryCache = (RealStrongMemoryCache) requireVelocityTracker().this$0;
                    VelocityTracker1D velocityTracker1D = (VelocityTracker1D) realStrongMemoryCache.weakMemoryCache;
                    ArraysKt.fill(0, r5.length, null, velocityTracker1D.samples);
                    velocityTracker1D.index = 0;
                    VelocityTracker1D velocityTracker1D2 = (VelocityTracker1D) realStrongMemoryCache.cache;
                    ArraysKt.fill(0, r7.length, null, velocityTracker1D2.samples);
                    velocityTracker1D2.index = 0;
                    realStrongMemoryCache.initialMaxSize = 0L;
                    requireChannel().mo691trySendJP2dKIU(new DragEvent.DragStopped(DraggableKt.m47toValidVelocityTH1AsA0(m1calculateVelocityAH228Gc), false));
                    this.isListeningForPointerInputEvents = false;
                }
                moveToAwaitDownState();
                return;
            }
            DragDetectionState$AwaitTouchSlop dragDetectionState$AwaitTouchSlop = (DragDetectionState$AwaitTouchSlop) scrollableKt;
            if (pointerEventPass == pointerEventPass2) {
                return;
            }
            List list4 = pointerEvent.changes;
            int size5 = list4.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size5) {
                    obj3 = null;
                    break;
                }
                obj3 = list4.get(i6);
                int i7 = size5;
                if (UStringsKt.m675equalsimpl0(((PointerInputChange) obj3).id, dragDetectionState$AwaitTouchSlop.pointerId)) {
                    break;
                }
                i6++;
                size5 = i7;
            }
            PointerInputChange pointerInputChange8 = (PointerInputChange) obj3;
            if (pointerInputChange8 == null) {
                int size6 = list4.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size6) {
                        pointerInputChange2 = 0;
                        break;
                    }
                    pointerInputChange2 = list4.get(i8);
                    if (((PointerInputChange) pointerInputChange2).pressed) {
                        break;
                    } else {
                        i8++;
                    }
                }
                pointerInputChange8 = pointerInputChange2;
                if (pointerInputChange8 == null) {
                    moveToAwaitDownState();
                    return;
                }
                dragDetectionState$AwaitTouchSlop.pointerId = pointerInputChange8.id;
            }
            if (pointerEventPass == pointerEventPass3) {
                if (pointerInputChange8.isConsumed()) {
                    PointerInputChange pointerInputChange9 = dragDetectionState$AwaitTouchSlop.initialDown;
                    if (pointerInputChange9 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitTouchSlop.initialDown was not initialized");
                        return;
                    }
                    long j5 = dragDetectionState$AwaitTouchSlop.pointerId;
                    HeadersReader headersReader = this.touchSlopDetector;
                    if (headersReader == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitTouchSlop.touchSlopDetector was not initialized");
                        return;
                    }
                    m43moveToAwaitGesturePickupStaternUCldI(pointerInputChange9, j5, headersReader);
                } else if (AppKt.changedToUpIgnoreConsumed(pointerInputChange8)) {
                    int size7 = list4.size();
                    int i9 = 0;
                    while (true) {
                        if (i9 >= size7) {
                            pointerInputChange = null;
                            break;
                        }
                        ?? r8 = list4.get(i9);
                        if (((PointerInputChange) r8).pressed) {
                            pointerInputChange = r8;
                            break;
                        }
                        i9++;
                    }
                    PointerInputChange pointerInputChange10 = pointerInputChange;
                    if (pointerInputChange10 == null) {
                        moveToAwaitDownState();
                    } else {
                        dragDetectionState$AwaitTouchSlop.pointerId = pointerInputChange10.id;
                    }
                } else {
                    ViewConfiguration viewConfiguration = (ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration);
                    int i10 = pointerInputChange8.type;
                    float f = DragGestureDetectorKt.mouseToTouchSlopRatio;
                    float touchSlop = i10 == 2 ? viewConfiguration.getTouchSlop() * DragGestureDetectorKt.mouseToTouchSlopRatio : viewConfiguration.getTouchSlop();
                    HeadersReader headersReader2 = this.touchSlopDetector;
                    if (headersReader2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Touch slop detector not initialized.");
                        return;
                    }
                    long m711getPostSlopOffsetqto3Fdw = headersReader2.m711getPostSlopOffsetqto3Fdw(AppKt.positionChangeInternal(pointerInputChange8, true), touchSlop, true);
                    if ((9223372034707292159L & m711getPostSlopOffsetqto3Fdw) != 9205357640488583168L) {
                        boolean isInterested = isInterested(pointerInputChange8);
                        TraversableNode findNearestAncestor = HitTestResultKt.findNearestAncestor(this, GestureNode.TraverseKey);
                        GestureNode gestureNode2 = findNearestAncestor instanceof GestureNode ? (GestureNode) findNearestAncestor : null;
                        GestureConnection gestureConnection = gestureNode2 != null ? gestureNode2.gestureConnection : null;
                        boolean z4 = gestureConnection != null && gestureConnection.isInterested(pointerInputChange8);
                        if (isInterested || !z4) {
                            pointerInputChange8.consume();
                            PointerInputChange pointerInputChange11 = dragDetectionState$AwaitTouchSlop.initialDown;
                            pointerInputChange11.getClass();
                            m46sendDragStart0AR0LA0(pointerInputChange11, pointerInputChange8, m711getPostSlopOffsetqto3Fdw);
                            m45sendDragEventUv8p0NA(m711getPostSlopOffsetqto3Fdw, pointerInputChange8);
                            long j6 = pointerInputChange8.id;
                            DragDetectionState$Dragging dragDetectionState$Dragging3 = this._draggingState;
                            if (dragDetectionState$Dragging3 == null) {
                                dragDetectionState$Dragging3 = new DragDetectionState$Dragging();
                                dragDetectionState$Dragging3.pointerId = Long.MAX_VALUE;
                                this._draggingState = dragDetectionState$Dragging3;
                            }
                            dragDetectionState$Dragging3.pointerId = j6;
                            this.currentDragState = dragDetectionState$Dragging3;
                        } else {
                            dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = true;
                        }
                    } else {
                        dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = true;
                    }
                }
            }
            if (pointerEventPass == pointerEventPass4 && dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass) {
                if (!pointerInputChange8.isConsumed()) {
                    dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
                    return;
                }
                PointerInputChange pointerInputChange12 = dragDetectionState$AwaitTouchSlop.initialDown;
                if (pointerInputChange12 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitTouchSlop.initialDown was not initialized");
                    return;
                }
                long j7 = dragDetectionState$AwaitTouchSlop.pointerId;
                HeadersReader headersReader3 = this.touchSlopDetector;
                if (headersReader3 != null) {
                    m43moveToAwaitGesturePickupStaternUCldI(pointerInputChange12, j7, headersReader3);
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("AwaitTouchSlop.touchSlopDetector was not initialized");
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
    }

    public final Channel requireChannel() {
        BufferedChannel bufferedChannel = this.channel;
        if (bufferedChannel != null) {
            return bufferedChannel;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Events channel not initialized.");
        return null;
    }

    public final PopupMenu$1 requireVelocityTracker() {
        PopupMenu$1 popupMenu$1 = this.velocityTracker;
        if (popupMenu$1 != null) {
            return popupMenu$1;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Velocity Tracker not initialized.");
        return null;
    }

    /* renamed from: sendDragEvent-Uv8p0NA, reason: not valid java name */
    public final void m45sendDragEventUv8p0NA(long j, PointerInputChange pointerInputChange) {
        long mo299localToScreenMKHz9U = HitTestResultKt.requireLayoutCoordinates(this.node).mo299localToScreenMKHz9U(0L);
        if (!Offset.m196equalsimpl0(this.previousPositionOnScreen, 9205357640488583168L) && !Offset.m196equalsimpl0(mo299localToScreenMKHz9U, this.previousPositionOnScreen)) {
            this.nodeOffset = Offset.m200plusMKHz9U(this.nodeOffset, Offset.m199minusMKHz9U(mo299localToScreenMKHz9U, this.previousPositionOnScreen));
        }
        this.previousPositionOnScreen = mo299localToScreenMKHz9U;
        Okio.m719addPointerInputChange0AR0LA0(requireVelocityTracker(), pointerInputChange, this.nodeOffset);
        requireChannel().mo691trySendJP2dKIU(new DragEvent.DragDelta(j, false));
    }

    /* renamed from: sendDragStart-0AR0LA0, reason: not valid java name */
    public final void m46sendDragStart0AR0LA0(PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, long j) {
        if (this.velocityTracker == null) {
            this.velocityTracker = new PopupMenu$1(26);
        }
        Okio.m719addPointerInputChange0AR0LA0(requireVelocityTracker(), pointerInputChange, 0L);
        long m199minusMKHz9U = Offset.m199minusMKHz9U(pointerInputChange2.position, j);
        this.nodeOffset = 0L;
        if (((Boolean) this.canDrag.invoke(new PointerType(pointerInputChange.type))).booleanValue()) {
            if (!this.isListeningForEvents) {
                if (this.channel == null) {
                    this.channel = ProduceKt.Channel$default(Log.LOG_LEVEL_OFF, 6, null);
                }
                startListeningForEvents();
            }
            this.previousPositionOnScreen = HitTestResultKt.requireLayoutCoordinates(this).mo299localToScreenMKHz9U(0L);
            requireChannel().mo691trySendJP2dKIU(new DragEvent.DragStarted(m199minusMKHz9U));
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean sharePointerInputWithSiblings() {
        return false;
    }

    public abstract boolean startDragImmediately();

    public final void startListeningForEvents() {
        this.isListeningForEvents = true;
        if (this.channel == null) {
            this.channel = ProduceKt.Channel$default(Log.LOG_LEVEL_OFF, 6, null);
        }
        JobKt.launch$default(getCoroutineScope(), null, null, new DragGestureNode$startListeningForEvents$1(this, null), 3);
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final boolean isInterested(IndirectPointerInputChange indirectPointerInputChange) {
        return ScrollableKt.changedToDownIgnoreConsumed(indirectPointerInputChange) && this.enabled;
    }
}
