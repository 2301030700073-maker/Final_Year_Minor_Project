package androidx.compose.foundation.gestures;

import android.os.Build;
import android.view.KeyEvent;
import android.widget.EdgeEffect;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableLongList;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.Api31Impl;
import androidx.compose.foundation.EdgeEffectWrapper;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.GestureNode;
import androidx.compose.foundation.gestures.DragDetectionState$AwaitDown;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.util.DataPointAtTime;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.paging.HintHandler;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import coil3.memory.RealStrongMemoryCache;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.Channel;
import kotlinx.serialization.json.internal.Composer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.http1.HeadersReader;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ScrollableNode extends DelegatingNode implements KeyInputModifierNode, SemanticsModifierNode, PointerInputModifierNode, IndirectPointerInputModifierNode, CompositionLocalConsumerModifierNode, GestureConnection {
    public DragDetectionState$AwaitDown _awaitDownState;
    public DragDetectionState$AwaitGesturePickup _awaitGesturePickupState;
    public DragDetectionState$AwaitTouchSlop _awaitTouchSlopState;
    public DragDetectionState$Dragging _draggingState;
    public Function1 canDrag;
    public BufferedChannel channel;
    public final ContentInViewNode contentInViewNode;
    public ScrollableKt currentDragState;
    public final DefaultFlingBehavior defaultFlingBehavior;
    public DragInteraction$Start dragInteraction;
    public boolean enabled;
    public FlingBehavior flingBehavior;
    public final FocusTargetNode focusTargetModifierNode;
    public GestureNode gestureNode;
    public IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector;
    public MutableInteractionSourceImpl interactionSource;
    public boolean isListeningForEvents;
    public boolean isListeningForPointerInputEvents;
    public MouseWheelScrollingLogic mouseWheelScrollingLogic;
    public final Composer nestedScrollConnection;
    public final NestedScrollDispatcher nestedScrollDispatcher;
    public long nodeOffset;
    public Orientation orientationLock;
    public AndroidEdgeEffectOverscrollEffect overscrollEffect;
    public long previousPositionOnScreen;
    public HintHandler$$ExternalSyntheticLambda0 scrollByAction;
    public ScrollableNode$onKeyEvent$1 scrollByOffsetAction;
    public final ScrollingLogic scrollingLogic;
    public HeadersReader touchSlopDetector;
    public TrackpadScrollingLogic trackpadScrollingLogic;
    public HintHandler velocityTracker;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.foundation.gestures.ScrollableNode, androidx.compose.ui.node.DelegatingNode] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.foundation.gestures.FlingBehavior] */
    public ScrollableNode(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, boolean z2) {
        BasicTextKt$$ExternalSyntheticLambda3 basicTextKt$$ExternalSyntheticLambda3 = ScrollableKt.CanDragCalculation;
        this.orientationLock = orientation;
        this.canDrag = basicTextKt$$ExternalSyntheticLambda3;
        this.enabled = z;
        this.interactionSource = mutableInteractionSourceImpl;
        this.previousPositionOnScreen = 9205357640488583168L;
        this.nodeOffset = 0L;
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.flingBehavior = flingBehavior;
        NestedScrollDispatcher nestedScrollDispatcher = new NestedScrollDispatcher();
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        DefaultFlingBehavior defaultFlingBehavior = new DefaultFlingBehavior(new DecayAnimationSpecImpl(new PopupMenu$1(ScrollableKt.UnityDensity)));
        this.defaultFlingBehavior = defaultFlingBehavior;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect2 = this.overscrollEffect;
        ?? r1 = this.flingBehavior;
        ScrollingLogic scrollingLogic = new ScrollingLogic(scrollableState, androidEdgeEffectOverscrollEffect2, r1 == 0 ? defaultFlingBehavior : r1, orientation, z2, nestedScrollDispatcher, this, new ScrollableNode$$ExternalSyntheticLambda0(this, 0));
        this.scrollingLogic = scrollingLogic;
        Composer composer = new Composer(scrollingLogic, z, 2);
        this.nestedScrollConnection = composer;
        FocusTargetNode focusTargetNode = new FocusTargetNode(2, 10, null);
        delegate(focusTargetNode);
        this.focusTargetModifierNode = focusTargetNode;
        ContentInViewNode contentInViewNode = new ContentInViewNode(orientation, scrollingLogic, z2, bringIntoViewSpec, new ScrollableNode$$ExternalSyntheticLambda0(this, 1));
        delegate(contentInViewNode);
        this.contentInViewNode = contentInViewNode;
        delegate(new NestedScrollNode(composer, nestedScrollDispatcher));
        BringIntoViewResponderNode bringIntoViewResponderNode = new BringIntoViewResponderNode();
        bringIntoViewResponderNode.responder = contentInViewNode;
        delegate(bringIntoViewResponderNode);
    }

    /* renamed from: moveToAwaitTouchSlopState-aWI9W7U$default, reason: not valid java name */
    public static void m94moveToAwaitTouchSlopStateaWI9W7U$default(ScrollableNode scrollableNode, PointerInputChange pointerInputChange, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = 0;
        }
        DragDetectionState$AwaitTouchSlop dragDetectionState$AwaitTouchSlop = scrollableNode._awaitTouchSlopState;
        if (dragDetectionState$AwaitTouchSlop == null) {
            dragDetectionState$AwaitTouchSlop = new DragDetectionState$AwaitTouchSlop();
            dragDetectionState$AwaitTouchSlop.initialDown = null;
            dragDetectionState$AwaitTouchSlop.pointerId = Long.MAX_VALUE;
            dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
            scrollableNode._awaitTouchSlopState = dragDetectionState$AwaitTouchSlop;
        }
        dragDetectionState$AwaitTouchSlop.initialDown = pointerInputChange;
        dragDetectionState$AwaitTouchSlop.pointerId = j;
        HeadersReader headersReader = scrollableNode.touchSlopDetector;
        Orientation orientation = scrollableNode.orientationLock;
        if (headersReader == null) {
            scrollableNode.touchSlopDetector = new HeadersReader(orientation, 2);
        } else {
            headersReader.source = orientation;
            headersReader.headerLimit = j2;
        }
        dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
        scrollableNode.currentDragState = dragDetectionState$AwaitTouchSlop;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.enabled && (this.scrollByAction == null || this.scrollByOffsetAction == null)) {
            this.scrollByAction = new HintHandler$$ExternalSyntheticLambda0(1, this);
            this.scrollByOffsetAction = new ScrollableNode$onKeyEvent$1(this, null);
        }
        HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = this.scrollByAction;
        if (hintHandler$$ExternalSyntheticLambda0 != null) {
            KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
            semanticsPropertyReceiver.set(SemanticsActions.ScrollBy, new AccessibilityAction(null, hintHandler$$ExternalSyntheticLambda0));
        }
        ScrollableNode$onKeyEvent$1 scrollableNode$onKeyEvent$1 = this.scrollByOffsetAction;
        if (scrollableNode$onKeyEvent$1 != null) {
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
            semanticsPropertyReceiver.set(SemanticsActions.ScrollByOffset, scrollableNode$onKeyEvent$1);
        }
    }

    public final void disposeInteractionSource$1() {
        DragInteraction$Start dragInteraction$Start = this.dragInteraction;
        if (dragInteraction$Start != null) {
            MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
            if (mutableInteractionSourceImpl != null) {
                mutableInteractionSourceImpl.tryEmit(new DragInteraction$Cancel(dragInteraction$Start));
            }
            this.dragInteraction = null;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    public final long mo29getTouchBoundsExpansionRZrCHBk() {
        return TouchBoundsExpansion.None;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final boolean isInterested(PointerInputChange pointerInputChange) {
        if (PointerId.changedToDownIgnoreConsumed(pointerInputChange)) {
            return this.enabled;
        }
        if (!PointerId.changedToUpIgnoreConsumed(pointerInputChange)) {
            if (this.touchSlopDetector == null) {
                this.touchSlopDetector = new HeadersReader(this.orientationLock, 2);
            }
            float touchSlop = ((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).getTouchSlop();
            long positionChangeInternal = PointerId.positionChangeInternal(pointerInputChange, false);
            HeadersReader headersReader = this.touchSlopDetector;
            if (headersReader == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Touch slop detector not initialized.");
                return false;
            }
            if (!Offset.m383equalsimpl0(headersReader.m873getPostSlopOffsetqto3Fdw(touchSlop, positionChangeInternal, false), 9205357640488583168L)) {
                long m386plusMKHz9U = Offset.m386plusMKHz9U(headersReader.headerLimit, positionChangeInternal);
                double atan2 = (((float) Math.atan2(Math.abs(Float.intBitsToFloat((int) (m386plusMKHz9U & 4294967295L))), Math.abs(Float.intBitsToFloat((int) (m386plusMKHz9U >> 32))))) * 180.0f) / 3.141592653589793d;
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
        if (dragDetectionState$AwaitDown == null) {
            DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop = DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
            dragDetectionState$AwaitDown = new DragDetectionState$AwaitDown();
            dragDetectionState$AwaitDown.awaitTouchSlop = awaitTouchSlop;
            dragDetectionState$AwaitDown.consumedOnInitial = false;
            this._awaitDownState = dragDetectionState$AwaitDown;
        }
        dragDetectionState$AwaitDown.awaitTouchSlop = DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
        dragDetectionState$AwaitDown.consumedOnInitial = false;
        this.currentDragState = dragDetectionState$AwaitDown;
    }

    /* renamed from: moveToAwaitGesturePickupState-rnUCldI, reason: not valid java name */
    public final void m95moveToAwaitGesturePickupStaternUCldI(PointerInputChange pointerInputChange, long j, HeadersReader headersReader) {
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

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        if (this.isAttached) {
            Density density = HitTestResultKt.requireLayoutNode(this).density;
            DefaultFlingBehavior defaultFlingBehavior = this.defaultFlingBehavior;
            defaultFlingBehavior.getClass();
            defaultFlingBehavior.flingDecay = new DecayAnimationSpecImpl(new PopupMenu$1(density));
        }
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.mouseWheelScrollingLogic;
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.density = HitTestResultKt.requireLayoutNode(this).density;
        }
        TrackpadScrollingLogic trackpadScrollingLogic = this.trackpadScrollingLogic;
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.density = HitTestResultKt.requireLayoutNode(this).density;
        }
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void onCancelIndirectPointerInput() {
        IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
        if (indirectPointerInputDragCycleDetector != null) {
            indirectPointerInputDragCycleDetector.moveToAwaitDownState();
            ScrollableNode scrollableNode = indirectPointerInputDragCycleDetector.node;
            if (scrollableNode.isListeningForEvents) {
                scrollableNode.onDragEvent(DragEvent.DragCancelled.INSTANCE);
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
                requireChannel().mo757trySendJP2dKIU(DragEvent.DragCancelled.INSTANCE);
            }
            this.velocityTracker = null;
        }
        this.isListeningForPointerInputEvents = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        onCancelPointerInput();
        if (this.isAttached) {
            Density density = HitTestResultKt.requireLayoutNode(this).density;
            DefaultFlingBehavior defaultFlingBehavior = this.defaultFlingBehavior;
            defaultFlingBehavior.getClass();
            defaultFlingBehavior.flingDecay = new DecayAnimationSpecImpl(new PopupMenu$1(density));
        }
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.mouseWheelScrollingLogic;
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.density = HitTestResultKt.requireLayoutNode(this).density;
        }
        TrackpadScrollingLogic trackpadScrollingLogic = this.trackpadScrollingLogic;
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.density = HitTestResultKt.requireLayoutNode(this).density;
        }
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
        requireChannel().mo757trySendJP2dKIU(dragEvent);
    }

    public final void onDragStopped(DragEvent.DragStopped dragStopped) {
        AwaitKt.launch$default(this.nestedScrollDispatcher.getCoroutineScope(), null, null, new SimpleActor$offer$2(dragStopped, this, null, 7), 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v0, types: [androidx.compose.foundation.GestureConnection, androidx.compose.foundation.gestures.ScrollableNode, androidx.compose.ui.node.DelegatingNode] */
    /* JADX WARN: Type inference failed for: r6v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void onIndirectPointerEvent(StatusLine statusLine, PointerEventPass pointerEventPass) {
        Object obj;
        Object obj2;
        Object obj3;
        IndirectPointerInputChange indirectPointerInputChange;
        IndirectPointerInputChange indirectPointerInputChange2;
        int i = statusLine.code;
        ArrayList arrayList = (ArrayList) statusLine.protocol;
        if (this.gestureNode == null) {
            GestureNode gestureNode = new GestureNode(this);
            delegate(gestureNode);
            this.gestureNode = gestureNode;
        }
        if (this.enabled) {
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
            if (indirectPointerInputDragCycleDetector == null) {
                indirectPointerInputDragCycleDetector = new IndirectPointerInputDragCycleDetector(this);
                this.indirectPointerInputDragCycleDetector = indirectPointerInputDragCycleDetector;
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector2 = indirectPointerInputDragCycleDetector;
            ScrollableNode scrollableNode = indirectPointerInputDragCycleDetector2.node;
            ScrollableKt scrollableKt = indirectPointerInputDragCycleDetector2.currentDragState;
            int i2 = 0;
            ScrollableKt scrollableKt2 = scrollableKt;
            if (scrollableKt == null) {
                IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown = indirectPointerInputDragCycleDetector2._awaitDownState;
                IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
                if (indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown == null) {
                    IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop = IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
                    IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown3 = new IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown();
                    indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown3.awaitTouchSlop = awaitTouchSlop;
                    indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown3.consumedOnInitial = false;
                    indirectPointerInputDragCycleDetector2._awaitDownState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown3;
                    indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown3;
                }
                indirectPointerInputDragCycleDetector2.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2;
                scrollableKt2 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown2;
            }
            boolean z = true;
            if (scrollableKt2 instanceof IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown) {
                IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown4 = (IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown) scrollableKt2;
                if (arrayList.isEmpty()) {
                    return;
                }
                int size = arrayList.size();
                while (i2 < size) {
                    if (!ScrollableKt.changedToDownIgnoreConsumed((IndirectPointerInputChange) arrayList.get(i2))) {
                        return;
                    } else {
                        i2++;
                    }
                }
                IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) CollectionsKt.first((List) arrayList);
                IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop2 = IndirectPointerInputDragCycleDetector.WhenMappings.$EnumSwitchMapping$0[indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown4.awaitTouchSlop.ordinal()] == 1 ? !scrollableNode.startDragImmediately() ? IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.Yes : IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.No : indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown4.awaitTouchSlop;
                indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown4.awaitTouchSlop = awaitTouchSlop2;
                if (pointerEventPass == PointerEventPass.Initial && awaitTouchSlop2 == IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.No) {
                    indirectPointerInputChange3.isConsumed = true;
                    indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown4.consumedOnInitial = true;
                }
                if (pointerEventPass == PointerEventPass.Main) {
                    if (awaitTouchSlop2 == IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown.AwaitTouchSlop.Yes) {
                        IndirectPointerInputDragCycleDetector.m75moveToAwaitTouchSlopStateaWI9W7U$default(indirectPointerInputDragCycleDetector2, indirectPointerInputChange3, indirectPointerInputChange3.id, 0L, 12);
                        return;
                    }
                    if (indirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown4.consumedOnInitial) {
                        indirectPointerInputDragCycleDetector2.m78sendDragStart3f7A7Is(indirectPointerInputChange3, indirectPointerInputChange3, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), 0L);
                        indirectPointerInputDragCycleDetector2.m77sendDragEventEu1f8Dk(indirectPointerInputChange3, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), 0L);
                        long j = indirectPointerInputChange3.id;
                        IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging indirectPointerInputDragCycleDetector$DragDetectionState$Dragging = indirectPointerInputDragCycleDetector2._draggingState;
                        if (indirectPointerInputDragCycleDetector$DragDetectionState$Dragging == null) {
                            indirectPointerInputDragCycleDetector$DragDetectionState$Dragging = new IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging();
                            indirectPointerInputDragCycleDetector$DragDetectionState$Dragging.pointerId = Long.MAX_VALUE;
                            indirectPointerInputDragCycleDetector2._draggingState = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
                        }
                        indirectPointerInputDragCycleDetector$DragDetectionState$Dragging.pointerId = j;
                        indirectPointerInputDragCycleDetector2.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
                        return;
                    }
                    return;
                }
                return;
            }
            if (!(scrollableKt2 instanceof IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop)) {
                if (scrollableKt2 instanceof IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup) {
                    IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup = (IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup) scrollableKt2;
                    if (pointerEventPass != PointerEventPass.Final) {
                        return;
                    }
                    int size2 = arrayList.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= size2) {
                            break;
                        }
                        if (((IndirectPointerInputChange) arrayList.get(i3)).isConsumed) {
                            z = false;
                            break;
                        }
                        i3++;
                    }
                    int size3 = arrayList.size();
                    while (true) {
                        if (i2 >= size3) {
                            break;
                        }
                        if (!((IndirectPointerInputChange) arrayList.get(i2)).pressed) {
                            i2++;
                        } else if (!arrayList.isEmpty()) {
                            if (z) {
                                long m92primaryAxisPosition_bfSUIo = ScrollableKt.m92primaryAxisPosition_bfSUIo((IndirectPointerInputChange) CollectionsKt.first((List) arrayList), scrollableNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i));
                                IndirectPointerInputChange indirectPointerInputChange4 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.initialDown;
                                indirectPointerInputChange4.getClass();
                                long m385minusMKHz9U = Offset.m385minusMKHz9U(m92primaryAxisPosition_bfSUIo, ScrollableKt.m92primaryAxisPosition_bfSUIo(indirectPointerInputChange4, scrollableNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i)));
                                IndirectPointerInputChange indirectPointerInputChange5 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.initialDown;
                                if (indirectPointerInputChange5 != null) {
                                    IndirectPointerInputDragCycleDetector.m75moveToAwaitTouchSlopStateaWI9W7U$default(indirectPointerInputDragCycleDetector2, indirectPointerInputChange5, indirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup.pointerId, m385minusMKHz9U, 8);
                                    return;
                                } else {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitGesturePickup.initialDown was not initialized.");
                                    return;
                                }
                            }
                            return;
                        }
                    }
                    indirectPointerInputDragCycleDetector2.moveToAwaitDownState();
                    return;
                }
                if (!(scrollableKt2 instanceof IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging)) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging indirectPointerInputDragCycleDetector$DragDetectionState$Dragging2 = (IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging) scrollableKt2;
                if (pointerEventPass != PointerEventPass.Main) {
                    return;
                }
                long j2 = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging2.pointerId;
                int size4 = arrayList.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size4) {
                        obj = null;
                        break;
                    }
                    obj = arrayList.get(i4);
                    if (PointerId.m505equalsimpl0(((IndirectPointerInputChange) obj).id, j2)) {
                        break;
                    } else {
                        i4++;
                    }
                }
                IndirectPointerInputChange indirectPointerInputChange6 = (IndirectPointerInputChange) obj;
                if (indirectPointerInputChange6 == null) {
                    return;
                }
                boolean changedToUpIgnoreConsumed = ScrollableKt.changedToUpIgnoreConsumed(indirectPointerInputChange6);
                DragEvent.DragCancelled dragCancelled = DragEvent.DragCancelled.INSTANCE;
                if (!changedToUpIgnoreConsumed) {
                    if (indirectPointerInputChange6.isConsumed) {
                        scrollableNode.onDragEvent(dragCancelled);
                        return;
                    } else {
                        if (Offset.m384getDistanceimpl(ScrollableKt.m91positionChangeInternalwfG_k4k(indirectPointerInputChange6, scrollableNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), true)) == RecyclerView.DECELERATION_RATE) {
                            return;
                        }
                        indirectPointerInputDragCycleDetector2.m77sendDragEventEu1f8Dk(indirectPointerInputChange6, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), ScrollableKt.m91positionChangeInternalwfG_k4k(indirectPointerInputChange6, scrollableNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), false));
                        indirectPointerInputChange6.isConsumed = true;
                        return;
                    }
                }
                int size5 = arrayList.size();
                int i5 = 0;
                while (true) {
                    if (i5 >= size5) {
                        obj2 = null;
                        break;
                    }
                    obj2 = arrayList.get(i5);
                    if (((IndirectPointerInputChange) obj2).pressed) {
                        break;
                    } else {
                        i5++;
                    }
                }
                IndirectPointerInputChange indirectPointerInputChange7 = (IndirectPointerInputChange) obj2;
                if (indirectPointerInputChange7 != null) {
                    indirectPointerInputDragCycleDetector$DragDetectionState$Dragging2.pointerId = indirectPointerInputChange7.id;
                    return;
                }
                if (indirectPointerInputChange6.isConsumed || !ScrollableKt.changedToUpIgnoreConsumed(indirectPointerInputChange6)) {
                    scrollableNode.onDragEvent(dragCancelled);
                } else {
                    ScrollableKt.m90addIndirectPointerInputChangeQf4Zb88(indirectPointerInputDragCycleDetector2.requireVelocityTracker(), indirectPointerInputChange6, scrollableNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), indirectPointerInputDragCycleDetector2.touchSmooth, indirectPointerInputDragCycleDetector2.nodeOffset);
                    float maximumFlingVelocity = ((ViewConfiguration) HitTestResultKt.currentValueOf(scrollableNode, CompositionLocalsKt.LocalViewConfiguration)).getMaximumFlingVelocity();
                    long m756calculateVelocityAH228Gc = indirectPointerInputDragCycleDetector2.requireVelocityTracker().m756calculateVelocityAH228Gc(ResultKt.Velocity(maximumFlingVelocity, maximumFlingVelocity));
                    RealStrongMemoryCache realStrongMemoryCache = (RealStrongMemoryCache) indirectPointerInputDragCycleDetector2.requireVelocityTracker().state;
                    JsonWriteContext jsonWriteContext = (JsonWriteContext) realStrongMemoryCache.weakMemoryCache;
                    ArraysKt___ArraysKt.fill(0, r6.length, null, (DataPointAtTime[]) jsonWriteContext._child);
                    jsonWriteContext._index = 0;
                    JsonWriteContext jsonWriteContext2 = (JsonWriteContext) realStrongMemoryCache.cache;
                    ArraysKt___ArraysKt.fill(0, r6.length, null, (DataPointAtTime[]) jsonWriteContext2._child);
                    jsonWriteContext2._index = 0;
                    realStrongMemoryCache.initialMaxSize = 0L;
                    scrollableNode.onDragEvent(new DragEvent.DragStopped(DraggableKt.m74toValidVelocityTH1AsA0(m756calculateVelocityAH228Gc), true));
                }
                indirectPointerInputDragCycleDetector2.moveToAwaitDownState();
                return;
            }
            IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop = (IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop) scrollableKt2;
            if (pointerEventPass == PointerEventPass.Initial) {
                return;
            }
            int size6 = arrayList.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size6) {
                    obj3 = null;
                    break;
                }
                obj3 = arrayList.get(i6);
                int i7 = i6;
                if (PointerId.m505equalsimpl0(((IndirectPointerInputChange) obj3).id, indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId)) {
                    break;
                } else {
                    i6 = i7 + 1;
                }
            }
            IndirectPointerInputChange indirectPointerInputChange8 = (IndirectPointerInputChange) obj3;
            if (indirectPointerInputChange8 == null) {
                int size7 = arrayList.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size7) {
                        indirectPointerInputChange2 = 0;
                        break;
                    }
                    indirectPointerInputChange2 = arrayList.get(i8);
                    if (((IndirectPointerInputChange) indirectPointerInputChange2).pressed) {
                        break;
                    } else {
                        i8++;
                    }
                }
                indirectPointerInputChange8 = indirectPointerInputChange2;
                if (indirectPointerInputChange8 == null) {
                    indirectPointerInputDragCycleDetector2.moveToAwaitDownState();
                    return;
                }
                indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId = indirectPointerInputChange8.id;
            }
            if (pointerEventPass == PointerEventPass.Main) {
                if (indirectPointerInputChange8.isConsumed) {
                    IndirectPointerInputChange indirectPointerInputChange9 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.initialDown;
                    if (indirectPointerInputChange9 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitTouchSlop.initialDown was not initialized");
                        return;
                    }
                    long j3 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId;
                    HeadersReader headersReader = indirectPointerInputDragCycleDetector2.touchSlopDetector;
                    if (headersReader == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitTouchSlop.touchSlopDetector was not initialized");
                        return;
                    }
                    indirectPointerInputDragCycleDetector2.m76moveToAwaitGesturePickupStaternUCldI(indirectPointerInputChange9, j3, headersReader);
                } else if (ScrollableKt.changedToUpIgnoreConsumed(indirectPointerInputChange8)) {
                    int size8 = arrayList.size();
                    int i9 = 0;
                    while (true) {
                        if (i9 >= size8) {
                            indirectPointerInputChange = null;
                            break;
                        }
                        ?? r6 = arrayList.get(i9);
                        if (((IndirectPointerInputChange) r6).pressed) {
                            indirectPointerInputChange = r6;
                            break;
                        }
                        i9++;
                    }
                    IndirectPointerInputChange indirectPointerInputChange10 = indirectPointerInputChange;
                    if (indirectPointerInputChange10 == null) {
                        indirectPointerInputDragCycleDetector2.moveToAwaitDownState();
                    } else {
                        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId = indirectPointerInputChange10.id;
                    }
                } else {
                    ViewConfiguration viewConfiguration = (ViewConfiguration) HitTestResultKt.currentValueOf(scrollableNode, CompositionLocalsKt.LocalViewConfiguration);
                    float f = DragGestureDetectorKt.mouseToTouchSlopRatio;
                    float touchSlop = viewConfiguration.getTouchSlop();
                    HeadersReader headersReader2 = indirectPointerInputDragCycleDetector2.touchSlopDetector;
                    if (headersReader2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Touch slop detector not initialized.");
                        return;
                    }
                    long m873getPostSlopOffsetqto3Fdw = headersReader2.m873getPostSlopOffsetqto3Fdw(touchSlop, ScrollableKt.m91positionChangeInternalwfG_k4k(indirectPointerInputChange8, scrollableNode.orientationLock, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), true), true);
                    if ((9223372034707292159L & m873getPostSlopOffsetqto3Fdw) != 9205357640488583168L) {
                        indirectPointerInputChange8.isConsumed = true;
                        IndirectPointerInputChange indirectPointerInputChange11 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.initialDown;
                        indirectPointerInputChange11.getClass();
                        IndirectPointerInputChange indirectPointerInputChange12 = indirectPointerInputChange8;
                        indirectPointerInputDragCycleDetector2.m78sendDragStart3f7A7Is(indirectPointerInputChange11, indirectPointerInputChange12, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), m873getPostSlopOffsetqto3Fdw);
                        indirectPointerInputChange8 = indirectPointerInputChange12;
                        indirectPointerInputDragCycleDetector2.m77sendDragEventEu1f8Dk(indirectPointerInputChange8, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), m873getPostSlopOffsetqto3Fdw);
                        long j4 = indirectPointerInputChange8.id;
                        IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3 = indirectPointerInputDragCycleDetector2._draggingState;
                        if (indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3 == null) {
                            indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3 = new IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging();
                            indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3.pointerId = Long.MAX_VALUE;
                            indirectPointerInputDragCycleDetector2._draggingState = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3;
                        }
                        indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3.pointerId = j4;
                        indirectPointerInputDragCycleDetector2.currentDragState = indirectPointerInputDragCycleDetector$DragDetectionState$Dragging3;
                    } else {
                        indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = true;
                    }
                }
            }
            if (pointerEventPass == PointerEventPass.Final && indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass) {
                if (!indirectPointerInputChange8.isConsumed) {
                    indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
                    return;
                }
                IndirectPointerInputChange indirectPointerInputChange13 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.initialDown;
                if (indirectPointerInputChange13 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitTouchSlop.initialDown was not initialized");
                    return;
                }
                long j5 = indirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop.pointerId;
                HeadersReader headersReader3 = indirectPointerInputDragCycleDetector2.touchSlopDetector;
                if (headersReader3 != null) {
                    indirectPointerInputDragCycleDetector2.m76moveToAwaitGesturePickupStaternUCldI(indirectPointerInputChange13, j5, headersReader3);
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitTouchSlop.touchSlopDetector was not initialized");
                }
            }
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onKeyEvent-ZmokQxo */
    public final boolean mo33onKeyEventZmokQxo(KeyEvent keyEvent) {
        long floatToRawIntBits;
        if (!this.enabled || ((!Key.m498equalsimpl0(Key_androidKt.m499getKeyZmokQxo(keyEvent), Key.PageDown) && !Key.m498equalsimpl0(Key_androidKt.Key(keyEvent.getKeyCode()), Key.PageUp)) || Key_androidKt.m500getTypeZmokQxo(keyEvent) != 2 || keyEvent.isCtrlPressed())) {
            return false;
        }
        boolean z = this.scrollingLogic.orientation == Orientation.Vertical;
        ContentInViewNode contentInViewNode = this.contentInViewNode;
        if (z) {
            int m64getViewportSizeOrZeroYbymL2g$foundation = (int) (contentInViewNode.m64getViewportSizeOrZeroYbymL2g$foundation() & 4294967295L);
            floatToRawIntBits = (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (4294967295L & Float.floatToRawIntBits(Key.m498equalsimpl0(Key_androidKt.Key(keyEvent.getKeyCode()), Key.PageUp) ? m64getViewportSizeOrZeroYbymL2g$foundation : -m64getViewportSizeOrZeroYbymL2g$foundation));
        } else {
            int m64getViewportSizeOrZeroYbymL2g$foundation2 = (int) (contentInViewNode.m64getViewportSizeOrZeroYbymL2g$foundation() >> 32);
            floatToRawIntBits = (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L) | (Float.floatToRawIntBits(Key.m498equalsimpl0(Key_androidKt.Key(keyEvent.getKeyCode()), Key.PageUp) ? m64getViewportSizeOrZeroYbymL2g$foundation2 : -m64getViewportSizeOrZeroYbymL2g$foundation2) << 32);
        }
        AwaitKt.launch$default(getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(this, floatToRawIntBits, null, 0), 3);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v14, types: [java.lang.Object] */
    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo34onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        int i;
        Object obj;
        Object obj2;
        PointerInputChange pointerInputChange;
        Object obj3;
        PointerInputChange pointerInputChange2;
        ScrollableNode scrollableNode = this;
        List list = pointerEvent.changes;
        int size = list.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            if (((Boolean) scrollableNode.canDrag.invoke(new PointerType(((PointerInputChange) list.get(i2)).type))).booleanValue()) {
                boolean z = true;
                scrollableNode.isListeningForPointerInputEvents = true;
                if (scrollableNode.gestureNode == null) {
                    GestureNode gestureNode = new GestureNode(scrollableNode);
                    scrollableNode.delegate(gestureNode);
                    scrollableNode.gestureNode = gestureNode;
                }
                if (scrollableNode.enabled) {
                    ScrollableKt scrollableKt = scrollableNode.currentDragState;
                    ScrollableKt scrollableKt2 = scrollableKt;
                    if (scrollableKt == null) {
                        DragDetectionState$AwaitDown dragDetectionState$AwaitDown = scrollableNode._awaitDownState;
                        DragDetectionState$AwaitDown dragDetectionState$AwaitDown2 = dragDetectionState$AwaitDown;
                        if (dragDetectionState$AwaitDown == null) {
                            DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop = DragDetectionState$AwaitDown.AwaitTouchSlop.NotInitialized;
                            DragDetectionState$AwaitDown dragDetectionState$AwaitDown3 = new DragDetectionState$AwaitDown();
                            dragDetectionState$AwaitDown3.awaitTouchSlop = awaitTouchSlop;
                            dragDetectionState$AwaitDown3.consumedOnInitial = false;
                            scrollableNode._awaitDownState = dragDetectionState$AwaitDown3;
                            dragDetectionState$AwaitDown2 = dragDetectionState$AwaitDown3;
                        }
                        scrollableNode.currentDragState = dragDetectionState$AwaitDown2;
                        scrollableKt2 = dragDetectionState$AwaitDown2;
                    }
                    if (scrollableKt2 instanceof DragDetectionState$AwaitDown) {
                        DragDetectionState$AwaitDown dragDetectionState$AwaitDown4 = (DragDetectionState$AwaitDown) scrollableKt2;
                        if (!pointerEvent.changes.isEmpty() && TapGestureDetectorKt.isChangedToDown(pointerEvent, false, false)) {
                            PointerInputChange pointerInputChange3 = (PointerInputChange) CollectionsKt.first(pointerEvent.changes);
                            DragDetectionState$AwaitDown.AwaitTouchSlop awaitTouchSlop2 = DragGestureNode$WhenMappings.$EnumSwitchMapping$0[dragDetectionState$AwaitDown4.awaitTouchSlop.ordinal()] == 1 ? !scrollableNode.startDragImmediately() ? DragDetectionState$AwaitDown.AwaitTouchSlop.Yes : DragDetectionState$AwaitDown.AwaitTouchSlop.No : dragDetectionState$AwaitDown4.awaitTouchSlop;
                            dragDetectionState$AwaitDown4.awaitTouchSlop = awaitTouchSlop2;
                            if (pointerEventPass == PointerEventPass.Initial && awaitTouchSlop2 == DragDetectionState$AwaitDown.AwaitTouchSlop.No) {
                                pointerInputChange3.consume();
                                dragDetectionState$AwaitDown4.consumedOnInitial = true;
                            }
                            if (pointerEventPass == PointerEventPass.Main) {
                                if (awaitTouchSlop2 == DragDetectionState$AwaitDown.AwaitTouchSlop.Yes) {
                                    m94moveToAwaitTouchSlopStateaWI9W7U$default(scrollableNode, pointerInputChange3, pointerInputChange3.id, 0L, 12);
                                } else if (dragDetectionState$AwaitDown4.consumedOnInitial) {
                                    scrollableNode.m98sendDragStart0AR0LA0(pointerInputChange3, pointerInputChange3, 0L);
                                    scrollableNode.m97sendDragEventUv8p0NA(0L, pointerInputChange3);
                                    long j2 = pointerInputChange3.id;
                                    DragDetectionState$Dragging dragDetectionState$Dragging = scrollableNode._draggingState;
                                    if (dragDetectionState$Dragging == null) {
                                        dragDetectionState$Dragging = new DragDetectionState$Dragging();
                                        dragDetectionState$Dragging.pointerId = Long.MAX_VALUE;
                                        scrollableNode._draggingState = dragDetectionState$Dragging;
                                    }
                                    dragDetectionState$Dragging.pointerId = j2;
                                    scrollableNode.currentDragState = dragDetectionState$Dragging;
                                }
                            }
                        }
                    } else if (scrollableKt2 instanceof DragDetectionState$AwaitTouchSlop) {
                        DragDetectionState$AwaitTouchSlop dragDetectionState$AwaitTouchSlop = (DragDetectionState$AwaitTouchSlop) scrollableKt2;
                        if (pointerEventPass != PointerEventPass.Initial) {
                            List list2 = pointerEvent.changes;
                            int size2 = list2.size();
                            int i3 = 0;
                            while (true) {
                                if (i3 >= size2) {
                                    pointerInputChange = null;
                                    break;
                                }
                                ?? r13 = list2.get(i3);
                                if (PointerId.m505equalsimpl0(((PointerInputChange) r13).id, dragDetectionState$AwaitTouchSlop.pointerId)) {
                                    pointerInputChange = r13;
                                    break;
                                }
                                i3++;
                            }
                            PointerInputChange pointerInputChange4 = pointerInputChange;
                            if (pointerInputChange4 == null) {
                                int size3 = list2.size();
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= size3) {
                                        pointerInputChange2 = 0;
                                        break;
                                    }
                                    pointerInputChange2 = list2.get(i4);
                                    if (((PointerInputChange) pointerInputChange2).pressed) {
                                        break;
                                    } else {
                                        i4++;
                                    }
                                }
                                pointerInputChange4 = pointerInputChange2;
                                if (pointerInputChange4 == null) {
                                    scrollableNode.moveToAwaitDownState();
                                } else {
                                    dragDetectionState$AwaitTouchSlop.pointerId = pointerInputChange4.id;
                                }
                            }
                            if (pointerEventPass == PointerEventPass.Main) {
                                if (pointerInputChange4.isConsumed()) {
                                    PointerInputChange pointerInputChange5 = dragDetectionState$AwaitTouchSlop.initialDown;
                                    if (pointerInputChange5 != null) {
                                        long j3 = dragDetectionState$AwaitTouchSlop.pointerId;
                                        HeadersReader headersReader = scrollableNode.touchSlopDetector;
                                        if (headersReader != null) {
                                            scrollableNode.m95moveToAwaitGesturePickupStaternUCldI(pointerInputChange5, j3, headersReader);
                                        } else {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitTouchSlop.touchSlopDetector was not initialized");
                                        }
                                    } else {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitTouchSlop.initialDown was not initialized");
                                    }
                                } else if (PointerId.changedToUpIgnoreConsumed(pointerInputChange4)) {
                                    int size4 = list2.size();
                                    int i5 = 0;
                                    while (true) {
                                        if (i5 >= size4) {
                                            obj3 = null;
                                            break;
                                        }
                                        obj3 = list2.get(i5);
                                        if (((PointerInputChange) obj3).pressed) {
                                            break;
                                        } else {
                                            i5++;
                                        }
                                    }
                                    PointerInputChange pointerInputChange6 = (PointerInputChange) obj3;
                                    if (pointerInputChange6 == null) {
                                        scrollableNode.moveToAwaitDownState();
                                    } else {
                                        dragDetectionState$AwaitTouchSlop.pointerId = pointerInputChange6.id;
                                    }
                                } else {
                                    float m73pointerSlopE8SPZFQ = DragGestureDetectorKt.m73pointerSlopE8SPZFQ((ViewConfiguration) HitTestResultKt.currentValueOf(scrollableNode, CompositionLocalsKt.LocalViewConfiguration), pointerInputChange4.type);
                                    HeadersReader headersReader2 = scrollableNode.touchSlopDetector;
                                    if (headersReader2 != null) {
                                        long m873getPostSlopOffsetqto3Fdw = headersReader2.m873getPostSlopOffsetqto3Fdw(m73pointerSlopE8SPZFQ, PointerId.positionChangeInternal(pointerInputChange4, true), true);
                                        if ((m873getPostSlopOffsetqto3Fdw & 9223372034707292159L) != 9205357640488583168L) {
                                            boolean isInterested = scrollableNode.isInterested(pointerInputChange4);
                                            TraversableNode findNearestAncestor = HitTestResultKt.findNearestAncestor(scrollableNode, GestureNode.TraverseKey);
                                            GestureNode gestureNode2 = findNearestAncestor instanceof GestureNode ? (GestureNode) findNearestAncestor : null;
                                            GestureConnection gestureConnection = gestureNode2 != null ? gestureNode2.gestureConnection : null;
                                            boolean z2 = gestureConnection != null && gestureConnection.isInterested(pointerInputChange4);
                                            if (isInterested || !z2) {
                                                pointerInputChange4.consume();
                                                PointerInputChange pointerInputChange7 = dragDetectionState$AwaitTouchSlop.initialDown;
                                                pointerInputChange7.getClass();
                                                scrollableNode.m98sendDragStart0AR0LA0(pointerInputChange7, pointerInputChange4, m873getPostSlopOffsetqto3Fdw);
                                                scrollableNode.m97sendDragEventUv8p0NA(m873getPostSlopOffsetqto3Fdw, pointerInputChange4);
                                                long j4 = pointerInputChange4.id;
                                                DragDetectionState$Dragging dragDetectionState$Dragging2 = scrollableNode._draggingState;
                                                if (dragDetectionState$Dragging2 == null) {
                                                    dragDetectionState$Dragging2 = new DragDetectionState$Dragging();
                                                    dragDetectionState$Dragging2.pointerId = Long.MAX_VALUE;
                                                    scrollableNode._draggingState = dragDetectionState$Dragging2;
                                                }
                                                dragDetectionState$Dragging2.pointerId = j4;
                                                scrollableNode.currentDragState = dragDetectionState$Dragging2;
                                            } else {
                                                dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = true;
                                            }
                                        } else {
                                            dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = true;
                                        }
                                    } else {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Touch slop detector not initialized.");
                                    }
                                }
                            }
                            if (pointerEventPass == PointerEventPass.Final && dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass) {
                                if (pointerInputChange4.isConsumed()) {
                                    PointerInputChange pointerInputChange8 = dragDetectionState$AwaitTouchSlop.initialDown;
                                    if (pointerInputChange8 != null) {
                                        long j5 = dragDetectionState$AwaitTouchSlop.pointerId;
                                        HeadersReader headersReader3 = scrollableNode.touchSlopDetector;
                                        if (headersReader3 != null) {
                                            scrollableNode.m95moveToAwaitGesturePickupStaternUCldI(pointerInputChange8, j5, headersReader3);
                                        } else {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitTouchSlop.touchSlopDetector was not initialized");
                                        }
                                    } else {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitTouchSlop.initialDown was not initialized");
                                    }
                                } else {
                                    dragDetectionState$AwaitTouchSlop.verifyConsumptionInFinalPass = false;
                                }
                            }
                        }
                    } else if (scrollableKt2 instanceof DragDetectionState$AwaitGesturePickup) {
                        DragDetectionState$AwaitGesturePickup dragDetectionState$AwaitGesturePickup = (DragDetectionState$AwaitGesturePickup) scrollableKt2;
                        if (pointerEventPass == PointerEventPass.Final) {
                            List list3 = pointerEvent.changes;
                            int size5 = list3.size();
                            int i6 = 0;
                            while (true) {
                                if (i6 >= size5) {
                                    break;
                                }
                                if (((PointerInputChange) list3.get(i6)).isConsumed()) {
                                    z = false;
                                    break;
                                }
                                i6++;
                            }
                            int size6 = list3.size();
                            int i7 = 0;
                            while (true) {
                                if (i7 >= size6) {
                                    break;
                                }
                                if (!((PointerInputChange) list3.get(i7)).pressed) {
                                    i7++;
                                } else if (!list3.isEmpty()) {
                                    if (z) {
                                        long j6 = ((PointerInputChange) CollectionsKt.first(list3)).position;
                                        PointerInputChange pointerInputChange9 = dragDetectionState$AwaitGesturePickup.initialDown;
                                        pointerInputChange9.getClass();
                                        long m385minusMKHz9U = Offset.m385minusMKHz9U(j6, pointerInputChange9.position);
                                        PointerInputChange pointerInputChange10 = dragDetectionState$AwaitGesturePickup.initialDown;
                                        if (pointerInputChange10 != null) {
                                            m94moveToAwaitTouchSlopStateaWI9W7U$default(scrollableNode, pointerInputChange10, dragDetectionState$AwaitGesturePickup.pointerId, m385minusMKHz9U, 8);
                                        } else {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("AwaitGesturePickup.initialDown was not initialized.");
                                        }
                                    }
                                }
                            }
                            scrollableNode.moveToAwaitDownState();
                        }
                    } else if (scrollableKt2 instanceof DragDetectionState$Dragging) {
                        DragDetectionState$Dragging dragDetectionState$Dragging3 = (DragDetectionState$Dragging) scrollableKt2;
                        if (pointerEventPass == PointerEventPass.Main) {
                            long j7 = dragDetectionState$Dragging3.pointerId;
                            List list4 = pointerEvent.changes;
                            int size7 = list4.size();
                            int i8 = 0;
                            while (true) {
                                if (i8 >= size7) {
                                    obj = null;
                                    break;
                                }
                                obj = list4.get(i8);
                                if (PointerId.m505equalsimpl0(((PointerInputChange) obj).id, j7)) {
                                    break;
                                } else {
                                    i8++;
                                }
                            }
                            PointerInputChange pointerInputChange11 = (PointerInputChange) obj;
                            if (pointerInputChange11 != null) {
                                boolean changedToUpIgnoreConsumed = PointerId.changedToUpIgnoreConsumed(pointerInputChange11);
                                DragEvent.DragCancelled dragCancelled = DragEvent.DragCancelled.INSTANCE;
                                if (changedToUpIgnoreConsumed) {
                                    List list5 = pointerEvent.changes;
                                    int size8 = list5.size();
                                    int i9 = 0;
                                    while (true) {
                                        if (i9 >= size8) {
                                            obj2 = null;
                                            break;
                                        }
                                        obj2 = list5.get(i9);
                                        if (((PointerInputChange) obj2).pressed) {
                                            break;
                                        } else {
                                            i9++;
                                        }
                                    }
                                    PointerInputChange pointerInputChange12 = (PointerInputChange) obj2;
                                    if (pointerInputChange12 == null) {
                                        if (pointerInputChange11.isConsumed() || !PointerId.changedToUpIgnoreConsumed(pointerInputChange11)) {
                                            scrollableNode.requireChannel().mo757trySendJP2dKIU(dragCancelled);
                                        } else {
                                            Operation$State.m765addPointerInputChange0AR0LA0(scrollableNode.requireVelocityTracker(), pointerInputChange11, 0L);
                                            float maximumFlingVelocity = ((ViewConfiguration) HitTestResultKt.currentValueOf(scrollableNode, CompositionLocalsKt.LocalViewConfiguration)).getMaximumFlingVelocity();
                                            long m756calculateVelocityAH228Gc = scrollableNode.requireVelocityTracker().m756calculateVelocityAH228Gc(ResultKt.Velocity(maximumFlingVelocity, maximumFlingVelocity));
                                            RealStrongMemoryCache realStrongMemoryCache = (RealStrongMemoryCache) scrollableNode.requireVelocityTracker().state;
                                            JsonWriteContext jsonWriteContext = (JsonWriteContext) realStrongMemoryCache.weakMemoryCache;
                                            ArraysKt___ArraysKt.fill(0, r5.length, null, (DataPointAtTime[]) jsonWriteContext._child);
                                            jsonWriteContext._index = 0;
                                            JsonWriteContext jsonWriteContext2 = (JsonWriteContext) realStrongMemoryCache.cache;
                                            ArraysKt___ArraysKt.fill(0, r12.length, null, (DataPointAtTime[]) jsonWriteContext2._child);
                                            jsonWriteContext2._index = 0;
                                            realStrongMemoryCache.initialMaxSize = 0L;
                                            scrollableNode.requireChannel().mo757trySendJP2dKIU(new DragEvent.DragStopped(DraggableKt.m74toValidVelocityTH1AsA0(m756calculateVelocityAH228Gc), false));
                                            scrollableNode.isListeningForPointerInputEvents = false;
                                        }
                                        scrollableNode.moveToAwaitDownState();
                                    } else {
                                        dragDetectionState$Dragging3.pointerId = pointerInputChange12.id;
                                    }
                                } else if (pointerInputChange11.isConsumed()) {
                                    scrollableNode.requireChannel().mo757trySendJP2dKIU(dragCancelled);
                                } else if (Offset.m384getDistanceimpl(PointerId.positionChangeInternal(pointerInputChange11, true)) != RecyclerView.DECELERATION_RATE) {
                                    scrollableNode.m97sendDragEventUv8p0NA(PointerId.positionChangeInternal(pointerInputChange11, false), pointerInputChange11);
                                    pointerInputChange11.consume();
                                }
                            }
                        }
                    } else {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                    }
                }
            } else {
                i2++;
            }
        }
        if (scrollableNode.gestureNode == null) {
            GestureNode gestureNode3 = new GestureNode(scrollableNode);
            scrollableNode.delegate(gestureNode3);
            scrollableNode.gestureNode = gestureNode3;
        }
        if (scrollableNode.enabled) {
            PointerEventPass pointerEventPass2 = PointerEventPass.Initial;
            int i10 = 3;
            ScrollingLogic scrollingLogic = scrollableNode.scrollingLogic;
            if (pointerEventPass == pointerEventPass2 && pointerEvent.type == 6) {
                MouseWheelScrollingLogic mouseWheelScrollingLogic = scrollableNode.mouseWheelScrollingLogic;
                if (mouseWheelScrollingLogic == null) {
                    scrollableNode = this;
                    MouseWheelScrollingLogic mouseWheelScrollingLogic2 = new MouseWheelScrollingLogic(scrollingLogic, new PopupMenu$1(14, android.view.ViewConfiguration.get(HitTestResultKt.requireView(scrollableNode).getContext())), new ComposableLambdaImpl$invoke$1(2, this, ScrollableNode.class, "onWheelScrollStopped", "onWheelScrollStopped-TH1AsA0(J)V", 4, 1), HitTestResultKt.requireLayoutNode(scrollableNode).density);
                    scrollableNode.mouseWheelScrollingLogic = mouseWheelScrollingLogic2;
                    mouseWheelScrollingLogic = mouseWheelScrollingLogic2;
                }
                CoroutineScope coroutineScope = scrollableNode.getCoroutineScope();
                if (mouseWheelScrollingLogic.receivingMouseWheelEventsJob == null) {
                    mouseWheelScrollingLogic.receivingMouseWheelEventsJob = AwaitKt.launch$default(coroutineScope, null, null, new SimpleActor$offer$2(4, mouseWheelScrollingLogic, null), 3);
                }
            }
            MouseWheelScrollingLogic mouseWheelScrollingLogic3 = scrollableNode.mouseWheelScrollingLogic;
            if (mouseWheelScrollingLogic3 != null && pointerEvent.type == 6) {
                int size9 = list.size();
                int i11 = 0;
                while (true) {
                    if (i11 >= size9) {
                        if (pointerEventPass == PointerEventPass.Initial && mouseWheelScrollingLogic3.isScrolling) {
                            mouseWheelScrollingLogic3.m79onMouseWheelO0kMr_c(pointerEvent);
                            NonTouchScrollingLogic.consume$foundation(pointerEvent);
                        }
                        if (pointerEventPass == PointerEventPass.Main && !mouseWheelScrollingLogic3.isScrolling && mouseWheelScrollingLogic3.m79onMouseWheelO0kMr_c(pointerEvent)) {
                            NonTouchScrollingLogic.consume$foundation(pointerEvent);
                        }
                    } else if (((PointerInputChange) list.get(i11)).isConsumed()) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            if (pointerEventPass == PointerEventPass.Initial && ((i = pointerEvent.type) == 10 || i == 11 || i == 12)) {
                TrackpadScrollingLogic trackpadScrollingLogic = scrollableNode.trackpadScrollingLogic;
                if (trackpadScrollingLogic == null) {
                    scrollableNode = this;
                    TrackpadScrollingLogic trackpadScrollingLogic2 = new TrackpadScrollingLogic(scrollingLogic, new ComposableLambdaImpl$invoke$1(2, this, ScrollableNode.class, "onTrackpadScrollStopped", "onTrackpadScrollStopped-TH1AsA0(J)V", 4, 2), HitTestResultKt.requireLayoutNode(scrollableNode).density);
                    scrollableNode.trackpadScrollingLogic = trackpadScrollingLogic2;
                    trackpadScrollingLogic = trackpadScrollingLogic2;
                }
                CoroutineScope coroutineScope2 = scrollableNode.getCoroutineScope();
                if (trackpadScrollingLogic.receivingPanEventsJob == null) {
                    trackpadScrollingLogic.receivingPanEventsJob = AwaitKt.launch$default(coroutineScope2, null, null, new FlowExtKt$simpleScan$1(i10, trackpadScrollingLogic, null), 3);
                }
            }
            TrackpadScrollingLogic trackpadScrollingLogic3 = scrollableNode.trackpadScrollingLogic;
            if (trackpadScrollingLogic3 != null) {
                int i12 = pointerEvent.type;
                if (i12 == 10 || i12 == 11 || i12 == 12) {
                    int size10 = list.size();
                    for (int i13 = 0; i13 < size10; i13++) {
                        if (((PointerInputChange) list.get(i13)).isConsumed()) {
                            return;
                        }
                    }
                    if (pointerEventPass == PointerEventPass.Initial && trackpadScrollingLogic3.isScrolling) {
                        trackpadScrollingLogic3.onPan(pointerEvent);
                        NonTouchScrollingLogic.consume$foundation(pointerEvent);
                    }
                    if (pointerEventPass == PointerEventPass.Main && !trackpadScrollingLogic3.isScrolling && trackpadScrollingLogic3.onPan(pointerEvent)) {
                        NonTouchScrollingLogic.consume$foundation(pointerEvent);
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onPreKeyEvent-ZmokQxo */
    public final boolean mo35onPreKeyEventZmokQxo(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragCancel(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1 r0 = (androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1 r0 = new androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r7)
            goto L47
        L28:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.compose.foundation.interaction.DragInteraction$Start r7 = r6.dragInteraction
            if (r7 == 0) goto L49
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r2 = r6.interactionSource
            if (r2 == 0) goto L47
            androidx.compose.foundation.interaction.DragInteraction$Cancel r5 = new androidx.compose.foundation.interaction.DragInteraction$Cancel
            r5.<init>(r7)
            r0.label = r4
            java.lang.Object r7 = r2.emit(r5, r0)
            if (r7 != r1) goto L47
            return r1
        L47:
            r6.dragInteraction = r3
        L49:
            androidx.compose.foundation.gestures.DragEvent$DragStopped r7 = new androidx.compose.foundation.gestures.DragEvent$DragStopped
            r0 = 0
            r2 = 0
            r7.<init>(r0, r2)
            r6.onDragStopped(r7)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableNode.processDragCancel(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0053, code lost:
    
        if (r2.emit(r5, r0) == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragStart(androidx.compose.foundation.gestures.DragEvent.DragStarted r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1 r0 = (androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1 r0 = new androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3b
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            androidx.compose.foundation.interaction.DragInteraction$Start r7 = r0.L$1
            androidx.compose.foundation.gestures.DragEvent$DragStarted r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6e
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r6 = 0
            return r6
        L35:
            androidx.compose.foundation.gestures.DragEvent$DragStarted r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L56
        L3b:
            kotlin.ResultKt.throwOnFailure(r8)
            androidx.compose.foundation.interaction.DragInteraction$Start r8 = r6.dragInteraction
            if (r8 == 0) goto L56
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r2 = r6.interactionSource
            if (r2 == 0) goto L56
            androidx.compose.foundation.interaction.DragInteraction$Cancel r5 = new androidx.compose.foundation.interaction.DragInteraction$Cancel
            r5.<init>(r8)
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r8 = r2.emit(r5, r0)
            if (r8 != r1) goto L56
            goto L6b
        L56:
            androidx.compose.foundation.interaction.DragInteraction$Start r8 = new androidx.compose.foundation.interaction.DragInteraction$Start
            r8.<init>()
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r2 = r6.interactionSource
            if (r2 == 0) goto L70
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r0 = r2.emit(r8, r0)
            if (r0 != r1) goto L6c
        L6b:
            return r1
        L6c:
            r0 = r7
            r7 = r8
        L6e:
            r8 = r7
            r7 = r0
        L70:
            r6.dragInteraction = r8
            long r6 = r7.startPoint
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableNode.processDragStart(androidx.compose.foundation.gestures.DragEvent$DragStarted, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragStop(androidx.compose.foundation.gestures.DragEvent.DragStopped r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1 r0 = (androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1 r0 = new androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L30
            if (r2 != r4) goto L2a
            androidx.compose.foundation.gestures.DragEvent$DragStopped r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4b
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
            androidx.compose.foundation.interaction.DragInteraction$Start r8 = r6.dragInteraction
            if (r8 == 0) goto L4d
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r2 = r6.interactionSource
            if (r2 == 0) goto L4b
            androidx.compose.foundation.interaction.DragInteraction$Stop r5 = new androidx.compose.foundation.interaction.DragInteraction$Stop
            r5.<init>(r8)
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r8 = r2.emit(r5, r0)
            if (r8 != r1) goto L4b
            return r1
        L4b:
            r6.dragInteraction = r3
        L4d:
            r6.onDragStopped(r7)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableNode.processDragStop(androidx.compose.foundation.gestures.DragEvent$DragStopped, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final Channel requireChannel() {
        BufferedChannel bufferedChannel = this.channel;
        if (bufferedChannel != null) {
            return bufferedChannel;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Events channel not initialized.");
        return null;
    }

    public final HintHandler requireVelocityTracker() {
        HintHandler hintHandler = this.velocityTracker;
        if (hintHandler != null) {
            return hintHandler;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Velocity Tracker not initialized.");
        return null;
    }

    /* renamed from: sendDragEvent-Uv8p0NA, reason: not valid java name */
    public final void m97sendDragEventUv8p0NA(long j, PointerInputChange pointerInputChange) {
        long mo521localToScreenMKHz9U = HitTestResultKt.requireLayoutCoordinates(this.node).mo521localToScreenMKHz9U(0L);
        if (!Offset.m383equalsimpl0(this.previousPositionOnScreen, 9205357640488583168L) && !Offset.m383equalsimpl0(mo521localToScreenMKHz9U, this.previousPositionOnScreen)) {
            this.nodeOffset = Offset.m386plusMKHz9U(this.nodeOffset, Offset.m385minusMKHz9U(mo521localToScreenMKHz9U, this.previousPositionOnScreen));
        }
        this.previousPositionOnScreen = mo521localToScreenMKHz9U;
        Operation$State.m765addPointerInputChange0AR0LA0(requireVelocityTracker(), pointerInputChange, this.nodeOffset);
        requireChannel().mo757trySendJP2dKIU(new DragEvent.DragDelta(j, false));
    }

    /* renamed from: sendDragStart-0AR0LA0, reason: not valid java name */
    public final void m98sendDragStart0AR0LA0(PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, long j) {
        if (this.velocityTracker == null) {
            this.velocityTracker = new HintHandler(3);
        }
        Operation$State.m765addPointerInputChange0AR0LA0(requireVelocityTracker(), pointerInputChange, 0L);
        long m385minusMKHz9U = Offset.m385minusMKHz9U(pointerInputChange2.position, j);
        this.nodeOffset = 0L;
        if (((Boolean) this.canDrag.invoke(new PointerType(pointerInputChange.type))).booleanValue()) {
            if (!this.isListeningForEvents) {
                if (this.channel == null) {
                    this.channel = DpKt.Channel$default(Integer.MAX_VALUE, 6, null);
                }
                startListeningForEvents();
            }
            this.previousPositionOnScreen = HitTestResultKt.requireLayoutCoordinates(this).mo521localToScreenMKHz9U(0L);
            requireChannel().mo757trySendJP2dKIU(new DragEvent.DragStarted(m385minusMKHz9U));
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final boolean sharePointerInputWithSiblings() {
        return false;
    }

    public final boolean startDragImmediately() {
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        if (scrollingLogic.scrollableState.isScrollInProgress()) {
            return true;
        }
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = scrollingLogic.overscrollEffect;
        if (androidEdgeEffectOverscrollEffect == null) {
            return false;
        }
        EdgeEffectWrapper edgeEffectWrapper = androidEdgeEffectOverscrollEffect.edgeEffectWrapper;
        EdgeEffect edgeEffect = edgeEffectWrapper.topEffect;
        if (edgeEffect != null) {
            if ((Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect) : 0.0f) != RecyclerView.DECELERATION_RATE) {
                return true;
            }
        }
        EdgeEffect edgeEffect2 = edgeEffectWrapper.bottomEffect;
        if (edgeEffect2 != null) {
            if ((Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect2) : 0.0f) != RecyclerView.DECELERATION_RATE) {
                return true;
            }
        }
        EdgeEffect edgeEffect3 = edgeEffectWrapper.leftEffect;
        if (edgeEffect3 != null) {
            if ((Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect3) : 0.0f) != RecyclerView.DECELERATION_RATE) {
                return true;
            }
        }
        EdgeEffect edgeEffect4 = edgeEffectWrapper.rightEffect;
        if (edgeEffect4 != null) {
            return (Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect4) : 0.0f) != RecyclerView.DECELERATION_RATE;
        }
        return false;
    }

    public final void startListeningForEvents() {
        this.isListeningForEvents = true;
        if (this.channel == null) {
            this.channel = DpKt.Channel$default(Integer.MAX_VALUE, 6, null);
        }
        AwaitKt.launch$default(getCoroutineScope(), null, null, new DragGestureNode$startListeningForEvents$1(this, null), 3);
    }

    public final void update(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5 = true;
        if (this.enabled != z) {
            this.nestedScrollConnection.writingFirst = z;
            z3 = true;
        } else {
            z3 = false;
        }
        FlingBehavior flingBehavior2 = flingBehavior == null ? this.defaultFlingBehavior : flingBehavior;
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        if (Intrinsics.areEqual(scrollingLogic.scrollableState, scrollableState)) {
            z4 = false;
        } else {
            scrollingLogic.scrollableState = scrollableState;
            z4 = true;
        }
        scrollingLogic.overscrollEffect = androidEdgeEffectOverscrollEffect;
        Orientation orientation2 = scrollingLogic.orientation;
        if (orientation2 != orientation) {
            scrollingLogic.orientation = orientation;
            orientation2 = orientation;
            z4 = true;
        }
        if (scrollingLogic.reverseDirection != z2) {
            scrollingLogic.reverseDirection = z2;
            z4 = true;
        }
        scrollingLogic.flingBehavior = flingBehavior2;
        scrollingLogic.nestedScrollDispatcher = this.nestedScrollDispatcher;
        ContentInViewNode contentInViewNode = this.contentInViewNode;
        contentInViewNode.orientation = orientation;
        contentInViewNode.reverseDirection = z2;
        contentInViewNode.bringIntoViewSpec = bringIntoViewSpec;
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.flingBehavior = flingBehavior;
        BasicTextKt$$ExternalSyntheticLambda3 basicTextKt$$ExternalSyntheticLambda3 = ScrollableKt.CanDragCalculation;
        Orientation orientation3 = Orientation.Vertical;
        if (orientation2 != orientation3) {
            orientation3 = Orientation.Horizontal;
        }
        this.canDrag = basicTextKt$$ExternalSyntheticLambda3;
        if (this.enabled != z) {
            this.enabled = z;
            if (!z) {
                disposeInteractionSource$1();
                this.indirectPointerInputDragCycleDetector = null;
            }
            z4 = true;
        }
        if (!Intrinsics.areEqual(this.interactionSource, mutableInteractionSourceImpl)) {
            disposeInteractionSource$1();
            this.interactionSource = mutableInteractionSourceImpl;
        }
        if (this.orientationLock != orientation3) {
            this.orientationLock = orientation3;
        } else {
            z5 = z4;
        }
        if (z5) {
            boolean z6 = this.isListeningForPointerInputEvents;
            DragEvent.DragCancelled dragCancelled = DragEvent.DragCancelled.INSTANCE;
            if (z6) {
                moveToAwaitDownState();
                if (this.isListeningForEvents) {
                    requireChannel().mo757trySendJP2dKIU(dragCancelled);
                }
                this.velocityTracker = null;
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
            if (indirectPointerInputDragCycleDetector != null) {
                indirectPointerInputDragCycleDetector.moveToAwaitDownState();
                ScrollableNode scrollableNode = indirectPointerInputDragCycleDetector.node;
                if (scrollableNode.isListeningForEvents) {
                    scrollableNode.onDragEvent(dragCancelled);
                }
                indirectPointerInputDragCycleDetector.velocityTracker = null;
                PriorityQueue priorityQueue = indirectPointerInputDragCycleDetector.offsetSmoother;
                priorityQueue.size = 0;
                ((MutableLongList) priorityQueue.array)._size = 0;
            }
        }
        if (z3) {
            this.scrollByAction = null;
            this.scrollByOffsetAction = null;
            HitTestResultKt.invalidateSemantics(this);
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void interceptOutOfBoundsChildEvents() {
    }

    /* renamed from: onDragStarted-k-4lQ0M, reason: not valid java name */
    public final void m96onDragStartedk4lQ0M(long j) {
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final boolean isInterested(IndirectPointerInputChange indirectPointerInputChange) {
        return ScrollableKt.changedToDownIgnoreConsumed(indirectPointerInputChange) && this.enabled;
    }
}
