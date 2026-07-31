package androidx.compose.foundation.gestures;

import android.os.Build;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.EdgeEffect;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.Api31Impl;
import androidx.compose.foundation.EdgeEffectWrapper;
import androidx.compose.foundation.GestureNode;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollableNode extends DragGestureNode implements KeyInputModifierNode, SemanticsModifierNode {
    public final ContentInViewNode contentInViewNode;
    public final DefaultFlingBehavior defaultFlingBehavior;
    public DefaultFlingBehavior flingBehavior;
    public final FocusTargetNode focusTargetModifierNode;
    public MouseWheelScrollingLogic mouseWheelScrollingLogic;
    public final ScrollableNestedScrollConnection nestedScrollConnection;
    public final NestedScrollDispatcher nestedScrollDispatcher;
    public AndroidEdgeEffectOverscrollEffect overscrollEffect;
    public ComposerKt$$ExternalSyntheticLambda0 scrollByAction;
    public ScrollableNode$onKeyEvent$1 scrollByOffsetAction;
    public final ScrollingLogic scrollingLogic;
    public TrackpadScrollingLogic trackpadScrollingLogic;

    public ScrollableNode(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, DefaultFlingBehavior defaultFlingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, boolean z2) {
        super(ScrollableKt.CanDragCalculation, z, mutableInteractionSourceImpl, orientation);
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.flingBehavior = defaultFlingBehavior;
        NestedScrollDispatcher nestedScrollDispatcher = new NestedScrollDispatcher();
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        DefaultFlingBehavior defaultFlingBehavior2 = new DefaultFlingBehavior(new DecayAnimationSpecImpl(new PreviewView.AnonymousClass1(ScrollableKt.UnityDensity)));
        this.defaultFlingBehavior = defaultFlingBehavior2;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect2 = this.overscrollEffect;
        DefaultFlingBehavior defaultFlingBehavior3 = this.flingBehavior;
        ScrollingLogic scrollingLogic = new ScrollingLogic(scrollableState, androidEdgeEffectOverscrollEffect2, defaultFlingBehavior3 == null ? defaultFlingBehavior2 : defaultFlingBehavior3, orientation, z2, nestedScrollDispatcher, this, new ScrollableNode$$ExternalSyntheticLambda0(this, 0));
        this.scrollingLogic = scrollingLogic;
        ScrollableNestedScrollConnection scrollableNestedScrollConnection = new ScrollableNestedScrollConnection(scrollingLogic, z);
        this.nestedScrollConnection = scrollableNestedScrollConnection;
        FocusTargetNode focusTargetNode = new FocusTargetNode(2, null, 10);
        delegate(focusTargetNode);
        this.focusTargetModifierNode = focusTargetNode;
        ContentInViewNode contentInViewNode = new ContentInViewNode(orientation, scrollingLogic, z2, new ScrollableNode$$ExternalSyntheticLambda0(this, 1));
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
            this.scrollByAction = new ComposerKt$$ExternalSyntheticLambda0(2, this);
            this.scrollByOffsetAction = new ScrollableNode$onKeyEvent$1(this, null);
        }
        ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0 = this.scrollByAction;
        if (composerKt$$ExternalSyntheticLambda0 != null) {
            KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
            semanticsPropertyReceiver.set(SemanticsActions.ScrollBy, new AccessibilityAction(null, composerKt$$ExternalSyntheticLambda0));
        }
        ScrollableNode$onKeyEvent$1 scrollableNode$onKeyEvent$1 = this.scrollByOffsetAction;
        if (scrollableNode$onKeyEvent$1 != null) {
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
            semanticsPropertyReceiver.set(SemanticsActions.ScrollByOffset, scrollableNode$onKeyEvent$1);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final Object drag(Function2 function2, Continuation continuation) {
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        Object scroll = scrollingLogic.scroll(MutatePriority.UserInput, new DraggableNode$drag$2((DragGestureNode$startListeningForEvents$1) function2, scrollingLogic, (Continuation) null, 16), (ContinuationImpl) continuation);
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
            defaultFlingBehavior.flingDecay = new DecayAnimationSpecImpl(new PreviewView.AnonymousClass1(density));
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

    @Override // androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        onCancelPointerInput();
        if (this.isAttached) {
            Density density = HitTestResultKt.requireLayoutNode(this).density;
            DefaultFlingBehavior defaultFlingBehavior = this.defaultFlingBehavior;
            defaultFlingBehavior.getClass();
            defaultFlingBehavior.flingDecay = new DecayAnimationSpecImpl(new PreviewView.AnonymousClass1(density));
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
        JobKt.launch$default(this.nestedScrollDispatcher.getCoroutineScope(), null, null, new RippleNode$onAttach$1(dragStopped, this, null, 17), 3);
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onKeyEvent-ZmokQxo */
    public final boolean mo119onKeyEventZmokQxo(KeyEvent keyEvent) {
        long floatToRawIntBits;
        if (!this.enabled || ((!Key.m556equalsimpl0(Key_androidKt.m557getKeyZmokQxo(keyEvent), Key.PageDown) && !Key.m556equalsimpl0(Key_androidKt.Key(keyEvent.getKeyCode()), Key.PageUp)) || Key_androidKt.m558getTypeZmokQxo(keyEvent) != 2 || keyEvent.isCtrlPressed())) {
            return false;
        }
        boolean z = this.scrollingLogic.orientation == Orientation.Vertical;
        ContentInViewNode contentInViewNode = this.contentInViewNode;
        if (z) {
            int m150getViewportSizeOrZeroYbymL2g$foundation = (int) (contentInViewNode.m150getViewportSizeOrZeroYbymL2g$foundation() & 4294967295L);
            floatToRawIntBits = (Float.floatToRawIntBits(0.0f) << 32) | (4294967295L & Float.floatToRawIntBits(Key.m556equalsimpl0(Key_androidKt.Key(keyEvent.getKeyCode()), Key.PageUp) ? m150getViewportSizeOrZeroYbymL2g$foundation : -m150getViewportSizeOrZeroYbymL2g$foundation));
        } else {
            int m150getViewportSizeOrZeroYbymL2g$foundation2 = (int) (contentInViewNode.m150getViewportSizeOrZeroYbymL2g$foundation() >> 32);
            floatToRawIntBits = (Float.floatToRawIntBits(0.0f) & 4294967295L) | (Float.floatToRawIntBits(Key.m556equalsimpl0(Key_androidKt.Key(keyEvent.getKeyCode()), Key.PageUp) ? m150getViewportSizeOrZeroYbymL2g$foundation2 : -m150getViewportSizeOrZeroYbymL2g$foundation2) << 32);
        }
        JobKt.launch$default(getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(this, floatToRawIntBits, null, 0), 3);
        return true;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo120onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        ScrollingLogic scrollingLogic;
        int i;
        List list = pointerEvent.changes;
        int size = list.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            if (((Boolean) this.canDrag.invoke(new PointerType(((PointerInputChange) list.get(i2)).type))).booleanValue()) {
                super.mo120onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
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
            int i3 = 11;
            Continuation continuation = null;
            ScrollingLogic scrollingLogic2 = this.scrollingLogic;
            if (pointerEventPass == pointerEventPass2 && pointerEvent.type == 6) {
                if (this.mouseWheelScrollingLogic == null) {
                    scrollingLogic = scrollingLogic2;
                    this.mouseWheelScrollingLogic = new MouseWheelScrollingLogic(scrollingLogic, new PreviewView.AnonymousClass1(i3, ViewConfiguration.get(HitTestResultKt.requireView(this).getContext())), new ComposableLambdaImpl$invoke$1(2, this, ScrollableNode.class, "onWheelScrollStopped", "onWheelScrollStopped-TH1AsA0(J)V", 4, 1), HitTestResultKt.requireLayoutNode(this).density);
                } else {
                    scrollingLogic = scrollingLogic2;
                }
                MouseWheelScrollingLogic mouseWheelScrollingLogic = this.mouseWheelScrollingLogic;
                if (mouseWheelScrollingLogic != null) {
                    CoroutineScope coroutineScope = getCoroutineScope();
                    if (mouseWheelScrollingLogic.receivingMouseWheelEventsJob == null) {
                        mouseWheelScrollingLogic.receivingMouseWheelEventsJob = JobKt.launch$default(coroutineScope, null, null, new RippleNode$onAttach$1(mouseWheelScrollingLogic, continuation, 14), 3);
                    }
                }
            } else {
                scrollingLogic = scrollingLogic2;
            }
            MouseWheelScrollingLogic mouseWheelScrollingLogic2 = this.mouseWheelScrollingLogic;
            PointerEventPass pointerEventPass3 = PointerEventPass.Main;
            if (mouseWheelScrollingLogic2 != null && pointerEvent.type == 6) {
                int size2 = list.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size2) {
                        if (pointerEventPass == pointerEventPass2 && mouseWheelScrollingLogic2.isScrolling) {
                            mouseWheelScrollingLogic2.m170onMouseWheelO0kMr_c(pointerEvent);
                            NonTouchScrollingLogic.consume$foundation(pointerEvent);
                        }
                        if (pointerEventPass == pointerEventPass3 && !mouseWheelScrollingLogic2.isScrolling && mouseWheelScrollingLogic2.m170onMouseWheelO0kMr_c(pointerEvent)) {
                            NonTouchScrollingLogic.consume$foundation(pointerEvent);
                        }
                    } else if (((PointerInputChange) list.get(i4)).isConsumed()) {
                        break;
                    } else {
                        i4++;
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
                        trackpadScrollingLogic.receivingPanEventsJob = JobKt.launch$default(coroutineScope2, null, null, new NavHostKt$NavHost$29$1(trackpadScrollingLogic, null), 3);
                    }
                }
            }
            TrackpadScrollingLogic trackpadScrollingLogic2 = this.trackpadScrollingLogic;
            if (trackpadScrollingLogic2 != null) {
                int i5 = pointerEvent.type;
                if (i5 == 10 || i5 == 11 || i5 == 12) {
                    int size3 = list.size();
                    for (int i6 = 0; i6 < size3; i6++) {
                        if (((PointerInputChange) list.get(i6)).isConsumed()) {
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

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onPreKeyEvent-ZmokQxo */
    public final boolean mo121onPreKeyEventZmokQxo(KeyEvent keyEvent) {
        return false;
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

    public final void update(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, DefaultFlingBehavior defaultFlingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, boolean z2) {
        boolean z3;
        boolean z4 = true;
        boolean z5 = false;
        if (this.enabled != z) {
            this.nestedScrollConnection.enabled = z;
            z3 = true;
        } else {
            z3 = false;
        }
        DefaultFlingBehavior defaultFlingBehavior2 = defaultFlingBehavior == null ? this.defaultFlingBehavior : defaultFlingBehavior;
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        if (!Intrinsics.areEqual(scrollingLogic.scrollableState, scrollableState)) {
            scrollingLogic.scrollableState = scrollableState;
            z5 = true;
        }
        scrollingLogic.overscrollEffect = androidEdgeEffectOverscrollEffect;
        if (scrollingLogic.orientation != orientation) {
            scrollingLogic.orientation = orientation;
            z5 = true;
        }
        if (scrollingLogic.reverseDirection != z2) {
            scrollingLogic.reverseDirection = z2;
        } else {
            z4 = z5;
        }
        scrollingLogic.flingBehavior = defaultFlingBehavior2;
        scrollingLogic.nestedScrollDispatcher = this.nestedScrollDispatcher;
        ContentInViewNode contentInViewNode = this.contentInViewNode;
        contentInViewNode.orientation = orientation;
        contentInViewNode.reverseDirection = z2;
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.flingBehavior = defaultFlingBehavior;
        Orientation orientation2 = scrollingLogic.orientation;
        Orientation orientation3 = Orientation.Vertical;
        if (orientation2 != orientation3) {
            orientation3 = Orientation.Horizontal;
        }
        update(ScrollableKt.CanDragCalculation, z, mutableInteractionSourceImpl, orientation3, z4);
        if (z3) {
            this.scrollByAction = null;
            this.scrollByOffsetAction = null;
            HitTestResultKt.invalidateSemantics(this);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* renamed from: onDragStarted-k-4lQ0M */
    public final void mo162onDragStartedk4lQ0M(long j) {
    }
}
