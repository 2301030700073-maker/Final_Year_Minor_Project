package androidx.compose.foundation.gestures;

import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.EdgeEffect;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableLongList;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.Api31Impl;
import androidx.compose.foundation.EdgeEffectWrapper;
import androidx.compose.foundation.GestureNode;
import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.room.Room;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.CharsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollableNode extends DragGestureNode implements KeyInputModifierNode, SemanticsModifierNode {
    public final ContentInViewNode contentInViewNode;
    public final DefaultFlingBehavior defaultFlingBehavior;
    public FlingBehavior flingBehavior;
    public final FocusTargetNode focusTargetModifierNode;
    public MouseWheelScrollingLogic mouseWheelScrollingLogic;
    public final ScrollableNestedScrollConnection nestedScrollConnection;
    public final NestedScrollDispatcher nestedScrollDispatcher;
    public AndroidEdgeEffectOverscrollEffect overscrollEffect;
    public Updater$$ExternalSyntheticLambda0 scrollByAction;
    public ScrollableNode$setScrollSemanticsActions$2 scrollByOffsetAction;
    public final ScrollingLogic scrollingLogic;
    public TrackpadScrollingLogic trackpadScrollingLogic;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.foundation.gestures.ScrollableNode, androidx.compose.ui.node.DelegatingNode] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.foundation.gestures.FlingBehavior] */
    public ScrollableNode(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSource mutableInteractionSource, boolean z, boolean z2) {
        ImageKt$$ExternalSyntheticLambda0 imageKt$$ExternalSyntheticLambda0 = ScrollableKt.CanDragCalculation;
        this.orientationLock = orientation;
        this.canDrag = imageKt$$ExternalSyntheticLambda0;
        this.enabled = z;
        this.interactionSource = mutableInteractionSource;
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
        ScrollableNestedScrollConnection scrollableNestedScrollConnection = new ScrollableNestedScrollConnection(scrollingLogic, z);
        this.nestedScrollConnection = scrollableNestedScrollConnection;
        FocusTargetNode focusTargetNode = new FocusTargetNode(2, null, 10);
        delegate(focusTargetNode);
        this.focusTargetModifierNode = focusTargetNode;
        ContentInViewNode contentInViewNode = new ContentInViewNode(orientation, scrollingLogic, z2, bringIntoViewSpec, new ScrollableNode$$ExternalSyntheticLambda0(this, 1));
        delegate(contentInViewNode);
        this.contentInViewNode = contentInViewNode;
        delegate(new NestedScrollNode(scrollableNestedScrollConnection, nestedScrollDispatcher));
        BringIntoViewResponderNode bringIntoViewResponderNode = new BringIntoViewResponderNode();
        bringIntoViewResponderNode.responder = contentInViewNode;
        delegate(bringIntoViewResponderNode);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.enabled && (this.scrollByAction == null || this.scrollByOffsetAction == null)) {
            this.scrollByAction = new Updater$$ExternalSyntheticLambda0(this, 1);
            this.scrollByOffsetAction = new ScrollableNode$setScrollSemanticsActions$2(this, null);
        }
        Updater$$ExternalSyntheticLambda0 updater$$ExternalSyntheticLambda0 = this.scrollByAction;
        if (updater$$ExternalSyntheticLambda0 != null) {
            KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
            semanticsPropertyReceiver.set(SemanticsActions.ScrollBy, new AccessibilityAction(null, updater$$ExternalSyntheticLambda0));
        }
        ScrollableNode$setScrollSemanticsActions$2 scrollableNode$setScrollSemanticsActions$2 = this.scrollByOffsetAction;
        if (scrollableNode$setScrollSemanticsActions$2 != null) {
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
            semanticsPropertyReceiver.set(SemanticsActions.ScrollByOffset, scrollableNode$setScrollSemanticsActions$2);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final Object drag(DragGestureNode$startListeningForEvents$1.AnonymousClass1 anonymousClass1, DragGestureNode$startListeningForEvents$1 dragGestureNode$startListeningForEvents$1) {
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        Object scroll = scrollingLogic.scroll(MutatePriority.UserInput, new ScrollableNode$drag$2$1(scrollingLogic, null, anonymousClass1), dragGestureNode$startListeningForEvents$1);
        return scroll == CoroutineSingletons.COROUTINE_SUSPENDED ? scroll : Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
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

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void onDragStopped(DragEvent.DragStopped dragStopped) {
        JobKt.launch$default(this.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onDragStopped$1(dragStopped, this, null), 3);
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onKeyEvent-ZmokQxo */
    public final boolean mo16onKeyEventZmokQxo(KeyEvent keyEvent) {
        long floatToRawIntBits;
        if (!this.enabled || ((!Key.m285equalsimpl0(CharsKt.m671getKeyZmokQxo(keyEvent), Key.PageDown) && !Key.m285equalsimpl0(Room.Key(keyEvent.getKeyCode()), Key.PageUp)) || CharsKt.m672getTypeZmokQxo(keyEvent) != 2 || keyEvent.isCtrlPressed())) {
            return false;
        }
        boolean z = this.scrollingLogic.orientation == Orientation.Vertical;
        ContentInViewNode contentInViewNode = this.contentInViewNode;
        if (z) {
            int m38getViewportSizeOrZeroYbymL2g$foundation = (int) (contentInViewNode.m38getViewportSizeOrZeroYbymL2g$foundation() & 4294967295L);
            floatToRawIntBits = (Float.floatToRawIntBits(0.0f) << 32) | (4294967295L & Float.floatToRawIntBits(Key.m285equalsimpl0(Room.Key(keyEvent.getKeyCode()), Key.PageUp) ? m38getViewportSizeOrZeroYbymL2g$foundation : -m38getViewportSizeOrZeroYbymL2g$foundation));
        } else {
            int m38getViewportSizeOrZeroYbymL2g$foundation2 = (int) (contentInViewNode.m38getViewportSizeOrZeroYbymL2g$foundation() >> 32);
            floatToRawIntBits = (Float.floatToRawIntBits(0.0f) & 4294967295L) | (Float.floatToRawIntBits(Key.m285equalsimpl0(Room.Key(keyEvent.getKeyCode()), Key.PageUp) ? m38getViewportSizeOrZeroYbymL2g$foundation2 : -m38getViewportSizeOrZeroYbymL2g$foundation2) << 32);
        }
        JobKt.launch$default(getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(this, floatToRawIntBits, null), 3);
        return true;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo17onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        int i;
        List list = pointerEvent.changes;
        int size = list.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            if (((Boolean) this.canDrag.invoke(new PointerType(((PointerInputChange) list.get(i2)).type))).booleanValue()) {
                super.mo17onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
                break;
            }
            i2++;
        }
        if (this.gestureNode == null) {
            GestureNode gestureNode = new GestureNode(this);
            delegate(gestureNode);
            this.gestureNode = gestureNode;
        }
        if (this.enabled) {
            PointerEventPass pointerEventPass2 = PointerEventPass.Initial;
            ScrollingLogic scrollingLogic = this.scrollingLogic;
            if (pointerEventPass == pointerEventPass2 && pointerEvent.type == 6) {
                if (this.mouseWheelScrollingLogic == null) {
                    if (!this.node.isAttached) {
                        InlineClassHelperKt.throwIllegalStateException("Cannot get View because the Modifier node is not currently attached.");
                    }
                    this.mouseWheelScrollingLogic = new MouseWheelScrollingLogic(scrollingLogic, new PopupMenu$1(ViewConfiguration.get(((View) LayoutNodeKt.requireOwner(HitTestResultKt.requireLayoutNode(this))).getContext()), 13), new ComposableLambdaImpl$invoke$1(2, this, ScrollableNode.class, "onWheelScrollStopped", "onWheelScrollStopped-TH1AsA0(J)V", 4, 1), HitTestResultKt.requireLayoutNode(this).density);
                }
                MouseWheelScrollingLogic mouseWheelScrollingLogic = this.mouseWheelScrollingLogic;
                if (mouseWheelScrollingLogic != null) {
                    CoroutineScope coroutineScope = getCoroutineScope();
                    if (mouseWheelScrollingLogic.receivingMouseWheelEventsJob == null) {
                        mouseWheelScrollingLogic.receivingMouseWheelEventsJob = JobKt.launch$default(coroutineScope, null, null, new MouseWheelScrollingLogic$startReceivingEvents$1(mouseWheelScrollingLogic, null), 3);
                    }
                }
            }
            MouseWheelScrollingLogic mouseWheelScrollingLogic2 = this.mouseWheelScrollingLogic;
            PointerEventPass pointerEventPass3 = PointerEventPass.Main;
            if (mouseWheelScrollingLogic2 != null && pointerEvent.type == 6) {
                int size2 = list.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        if (pointerEventPass == pointerEventPass2 && mouseWheelScrollingLogic2.isScrolling) {
                            mouseWheelScrollingLogic2.m52onMouseWheelO0kMr_c(pointerEvent);
                            NonTouchScrollingLogic.consume$foundation(pointerEvent);
                        }
                        if (pointerEventPass == pointerEventPass3 && !mouseWheelScrollingLogic2.isScrolling && mouseWheelScrollingLogic2.m52onMouseWheelO0kMr_c(pointerEvent)) {
                            NonTouchScrollingLogic.consume$foundation(pointerEvent);
                        }
                    } else if (((PointerInputChange) list.get(i3)).isConsumed()) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            if (pointerEventPass == pointerEventPass2 && ((i = pointerEvent.type) == 10 || i == 11 || i == 12)) {
                if (this.trackpadScrollingLogic == null) {
                    this.trackpadScrollingLogic = new TrackpadScrollingLogic(scrollingLogic, new ComposableLambdaImpl$invoke$1(2, this, ScrollableNode.class, "onTrackpadScrollStopped", "onTrackpadScrollStopped-TH1AsA0(J)V", 4, 2), HitTestResultKt.requireLayoutNode(this).density);
                }
                TrackpadScrollingLogic trackpadScrollingLogic = this.trackpadScrollingLogic;
                if (trackpadScrollingLogic != null) {
                    CoroutineScope coroutineScope2 = getCoroutineScope();
                    if (trackpadScrollingLogic.receivingPanEventsJob == null) {
                        trackpadScrollingLogic.receivingPanEventsJob = JobKt.launch$default(coroutineScope2, null, null, new TrackpadScrollingLogic$startReceivingEvents$1(trackpadScrollingLogic, null), 3);
                    }
                }
            }
            TrackpadScrollingLogic trackpadScrollingLogic2 = this.trackpadScrollingLogic;
            if (trackpadScrollingLogic2 != null) {
                int i4 = pointerEvent.type;
                if (i4 == 10 || i4 == 11 || i4 == 12) {
                    int size3 = list.size();
                    for (int i5 = 0; i5 < size3; i5++) {
                        if (((PointerInputChange) list.get(i5)).isConsumed()) {
                            return;
                        }
                    }
                    if (pointerEventPass == pointerEventPass2 && trackpadScrollingLogic2.isScrolling) {
                        trackpadScrollingLogic2.onPan(pointerEvent);
                        NonTouchScrollingLogic.consume$foundation(pointerEvent);
                    }
                    if (pointerEventPass == pointerEventPass3 && !trackpadScrollingLogic2.isScrolling && trackpadScrollingLogic2.onPan(pointerEvent)) {
                        NonTouchScrollingLogic.consume$foundation(pointerEvent);
                    }
                }
            }
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
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
            if ((Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect) : 0.0f) != 0.0f) {
                return true;
            }
        }
        EdgeEffect edgeEffect2 = edgeEffectWrapper.bottomEffect;
        if (edgeEffect2 != null) {
            if ((Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect2) : 0.0f) != 0.0f) {
                return true;
            }
        }
        EdgeEffect edgeEffect3 = edgeEffectWrapper.leftEffect;
        if (edgeEffect3 != null) {
            if ((Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect3) : 0.0f) != 0.0f) {
                return true;
            }
        }
        EdgeEffect edgeEffect4 = edgeEffectWrapper.rightEffect;
        if (edgeEffect4 != null) {
            return (Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect4) : 0.0f) != 0.0f;
        }
        return false;
    }

    public final void update(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSource mutableInteractionSource, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5 = true;
        if (this.enabled != z) {
            this.nestedScrollConnection.enabled = z;
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
        if (scrollingLogic.orientation != orientation) {
            scrollingLogic.orientation = orientation;
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
        ImageKt$$ExternalSyntheticLambda0 imageKt$$ExternalSyntheticLambda0 = ScrollableKt.CanDragCalculation;
        Orientation orientation2 = scrollingLogic.orientation;
        Orientation orientation3 = Orientation.Vertical;
        if (orientation2 != orientation3) {
            orientation3 = Orientation.Horizontal;
        }
        this.canDrag = imageKt$$ExternalSyntheticLambda0;
        if (this.enabled != z) {
            this.enabled = z;
            if (!z) {
                disposeInteractionSource$1();
                this.indirectPointerInputDragCycleDetector = null;
            }
            z4 = true;
        }
        if (!Intrinsics.areEqual(this.interactionSource, mutableInteractionSource)) {
            disposeInteractionSource$1();
            this.interactionSource = mutableInteractionSource;
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
                    requireChannel().mo691trySendJP2dKIU(dragCancelled);
                }
                this.velocityTracker = null;
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
            if (indirectPointerInputDragCycleDetector != null) {
                indirectPointerInputDragCycleDetector.moveToAwaitDownState();
                DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.node;
                if (dragGestureNode.isListeningForEvents) {
                    dragGestureNode.onDragEvent(dragCancelled);
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

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* renamed from: onDragStarted-k-4lQ0M */
    public final void mo44onDragStartedk4lQ0M(long j) {
    }
}
